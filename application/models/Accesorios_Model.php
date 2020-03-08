<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Accesorios_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }
    
    public function Ingresar_Categoria($param){
		$campos = array(
            'Id_Categoria' => 0,
            'Nombre' => $param['Nombre'],
            'Descripcion' => $param['Descripcion'],
            'fecha_registro'=>$param['fecha_registro'],
            'estado'=>1,
            'Id_Distribuidora' =>$this->session->userdata('Id_Distribuidora'),
            'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')
		);
		
		$this->db->insert('Categoria_Accesorio',$campos);
		
		return 1;
    }

    public function Ingresar_Producto($param){
		$campos = array(
            'Id_Accesorios' => 0,
            'nombre_accesorio'=> $param['nombre'],
            'marca_accesorio'=> $param['marca'],
            'tipo_accesorio'=> $param['tipo'],
            'modelo_accesorio'=> $param['modelo'],
            'color_accesorio'=> $param['color'],
            'vida_util_accesorio' => $param['vidautil'],
            'caracteristica_accesorio' => $param['caracteristicas'],
            'fecha_registro'=> $param['fecha'],
            'Id_u_sdv'=>$this->session->userdata('Id_u_sdv'),
            'Id_Categoria'=> $param['categoria'],
            'estado'=>1,
            'Id_Distribuidora' =>$this->session->userdata('Id_Distribuidora'),
            'precio_u'=>$param['precio']
		);
		
		$this->db->insert('Accesorios',$campos);
		
		return 1;
    }

    public function fetch_categoria(){
        $this->db->where('Id_Distribuidora', $this->session->userdata('Id_Distribuidora'));
        $this->db->where('estado',1);
        $query = $this->db->get("Categoria_Accesorio");
        return $query->result();
    }

    public function fetch_producto($Id_Categoria)
    {
         $this->db->where('Id_Categoria', $Id_Categoria);
         $this->db->where('Id_Distribuidora', $this->session->userdata('Id_Distribuidora'));
         $this->db->where('estado',1);
         $query = $this->db->get('Accesorios');
         $output = '<option value="">Seleccione el producto</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_Accesorios.'">'.$row->nombre_accesorio." ".$row->marca_accesorio." ".$row->tipo_accesorio." ".$row->modelo_accesorio.'</option>';
         }
         return $output;
    }

    public function Cantidad_Producto($param){

        // $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

        //     $nuevafecha = strtotime ( '-8 hour' , strtotime ( $fecha ) ) ;
        //     $nuevafecha = date ( 'Y-m-j H:i:s' , $nuevafecha );
                //$nuevafecha = strtotime ( '+10 minute' , $nuevafecha ) ; // utilizo "nuevafecha"
                //$nuevafecha = strtotime ( '+10 second' , $nuevafecha ) ; // utilizo "nuevafecha"
		$campos = array(
            'Id_E_Accesorios' => 0,
            'Cantidad' => $param['Cantidad'],
            'fecha_entrada' => $param['fecha_entrada'],
            'N_o_compra'=>$param['N_o_compra'],
            'Id_Accesorios' => $param['Id_Accesorios'],
            'Id_Distribuidora' =>$this->session->userdata('Id_Distribuidora')
        );
                
		
        $this->db->insert('Entrada_Accesorios',$campos);
       
        $campos = array(
            'Id_S_Accesorios' => 0,
            'Cantidad' => 0,
            'fecha_salida' => 0,
            'Id_Accesorios' => $param['Id_Accesorios'],
            'Id_Distribuidora' =>$this->session->userdata('Id_Distribuidora')
        );

        $this->db->insert('Salida_Accesorios',$campos);
        
		return 1;
    }

    public function Mostrar_Stock(){

        
            $query = 'SELECT T1.Id_Accesorios,A.nombre_accesorio, A.estado,A.marca_accesorio,A.caracteristica_accesorio,A.tipo_accesorio,A.modelo_accesorio,A.Id_Distribuidora, Entradas, Salidas, Entradas - Salidas  AS Stock
            FROM
                (SELECT Id_Accesorios, SUM(Cantidad) AS Entradas FROM Entrada_Accesorios AS E_A GROUP BY Id_Accesorios) 
                    T1 INNER JOIN
                (SELECT Id_Accesorios, SUM(Cantidad) AS Salidas FROM Salida_Accesorios AS S_A GROUP BY Id_Accesorios) 
                    T2 ON T1.Id_Accesorios = T2.Id_Accesorios 
                    INNER JOIN Accesorios AS A on T1.Id_Accesorios = A.Id_Accesorios where A.Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" and A.estado=1
            GROUP BY T1.Id_Accesorios order by stock asc; ';
            $resultados = $this->db->query($query);
            return $resultados->result();
    }

    public function All_Stock(){

        
        $query = 'SELECT T1.Id_Accesorios,A.nombre_accesorio,c_a.Nombre as Categoria, c_a.estado as Estado_categoria,  A.marca_accesorio,A.tipo_accesorio,A.estado,A.modelo_accesorio,A.Id_Distribuidora ,D.Nombre_Distribuidora,Entradas, Salidas, Entradas - Salidas  AS Stock
        FROM
            (SELECT Id_Accesorios, SUM(Cantidad) AS Entradas FROM Entrada_Accesorios AS E_A GROUP BY Id_Accesorios) 
                T1 INNER JOIN
            (SELECT Id_Accesorios, SUM(Cantidad) AS Salidas FROM Salida_Accesorios AS S_A GROUP BY Id_Accesorios) 
                T2 ON T1.Id_Accesorios = T2.Id_Accesorios 
                INNER JOIN Accesorios AS A on T1.Id_Accesorios = A.Id_Accesorios  
                INNER JOIN distribuidora AS D on A.Id_Distribuidora = D.Id_Distribuidora
                INNER JOIN Categoria_Accesorio as c_a on A.Id_Categoria=c_a.Id_Categoria
        GROUP BY T1.Id_Accesorios order by A.Id_Distribuidora asc;';

        $resultados = $this->db->query($query);
        return $resultados->result();
    }

    
    public function All_Stock_DExcel(){

        
        $query = 'SELECT T1.Id_Accesorios,A.nombre_accesorio, A.marca_accesorio,A.tipo_accesorio,A.modelo_accesorio,D.Nombre_Distribuidora,Entradas, Salidas, Entradas - Salidas  AS Stock
        FROM
            (SELECT Id_Accesorios, SUM(Cantidad) AS Entradas FROM Entrada_Accesorios AS E_A GROUP BY Id_Accesorios) 
                T1 INNER JOIN
            (SELECT Id_Accesorios, SUM(Cantidad) AS Salidas FROM Salida_Accesorios AS S_A GROUP BY Id_Accesorios) 
                T2 ON T1.Id_Accesorios = T2.Id_Accesorios 
                INNER JOIN Accesorios AS A on T1.Id_Accesorios = A.Id_Accesorios  
                INNER JOIN distribuidora AS D on A.Id_Distribuidora = D.Id_Distribuidora
        GROUP BY T1.Id_Accesorios order by A.Id_Distribuidora asc;';

        $resultados = $this->db->query($query);
        return array($resultados);
    }

    public function fetch_distribuidora(){

        $query = $this->db->get('distribuidora');
         $output = '<option value="" disabled="disabled" selected="selected">Seleccione Distribuidora</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
         }
         return $output;
    }

    public function fetch_canal($Id_Distribuidora)
    {
         $this->db->where('Id_Distribuidora', $Id_Distribuidora);
         
         $query = $this->db->get('canal');
         $output = '<option value="">Seleccione el Canal</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
         }
         return $output;
    }


    public function fetch_canal_Impulso()
    {  
         $Id_Distribuidora=$this->session->userdata('Id_Distribuidora');
        

         if($Id_Distribuidora==1){

            $this->db->where('Id_Canal',2);

         }else if($Id_Distribuidora==2){

            $this->db->where('Id_Canal',6);

         }else if($Id_Distribuidora==3){

            $this->db->where('Id_Canal',10);

         }
         else if($Id_Distribuidora==4){

            $this->db->where('Id_Canal',14);

         }
         
        
         $this->db->where('Id_Distribuidora', $Id_Distribuidora);
         $query = $this->db->get('canal');

         $output = '<option value="">Seleccione el Canal</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
         }
         return $output;
      
    }

        
    public function fetch_ruta($Id_Canal)
    {
        $this->db->where('Id_Canal', $Id_Canal);
        
        $query = $this->db->get('rutas');
        $output = '<option value="">Seleccione la Ruta</option>';
        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Ruta.'">'.$row->Nombre_Ruta.'</option>';
        }
        return $output;
    }

    public function fetch_empleado($Id_Ruta)
    {
        $estado=1;
        $Vendedor="VENDEDOR"; 


        $this->db->where('Cargo', $Vendedor);
   
        
        $this->db->where('Id_Ruta', $Id_Ruta);
        $this->db->where('Estado',$estado);
        
        $query = $this->db->get('Empleados');
        $output='';

        $resultado=$query->result();

        if(!empty($resultado))
        {
            foreach($resultado as $row)
            {
                
                    $output .= '<input disabled="disabled" type="text" id="idEmpleado" class="form-control" style="display:none;" value="'.$row->Id_Empleados.'"></input>';
                    $output .= '<input disabled="disabled" type="text" id="NombreEmpleados" style="background:#E4FFE0;"class="form-control" value="'.$row->Nombre.'"></input>';
    
             
                
            }
        }else{
                    $output .= '<div class="alert alert-danger" style="height:40px;"role="alert">RUTA SIN EMPLEADO</div>';

        }
        return $output;

        

        
    }

    public function Salida_Accesorios($Datos){

        $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
        $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );
      
        $Cantidad=1;


        for( $x=0; $x<count($Datos); $x++){
       
           $data=Array(

                'id_S_Accesorios'=>0,
                'Cantidad'=> $Cantidad,
                'Fecha_Salida'=>$Datos[$x]['Fecha_Salida'],
                'Id_Accesorios'=>$Datos[$x]['Id_Accesorios'],
                'Id_Distribuidora'=>$Datos[$x]['Id_Distribuidora'],
                'Id_Canal'=>$Datos[$x]['Id_Canal'],
                'Id_Ruta'=>$Datos[$x]['Id_Ruta'],
                'Id_Empleados'=>$Datos[$x]['Id_Empleados'],
                'Id_PDF'=>$Datos[$x]['Id_Empleados'].$nuevafecha,
                'motivo_entrega'=>$Datos[$x]['motivo_entrega']
                
            );

            try{
          
                
                $this->db->insert('Salida_Accesorios', $data);
                $data='';
            }
            catch(Exception $e){
 
             return 'failed';
            }    
            
        }

        return 'success';
      

    }


    public function fetch_empleado_Impulso($Id_Ruta)
    {    
        $cargo="IMPULSADORA";
         
        $this->db->where('Cargo', $cargo);
        $this->db->where('Id_Ruta', $Id_Ruta);
        $this->db->where('Estado',1);
        $query = $this->db->get('Empleados');
        $output = '<option value="">Seleccione La Impulsadora</option>';

        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Empleados.'">'.$row->Nombre.'</option>';
        }
        return $output;
    }


    public function Consultar_PDF()
    {   
       $Id_Distribuidora= $this->session->userdata('Id_Distribuidora');


        $query = 'SELECT S_A.Id_S_Accesorios, S_A.Id_Ruta, r.Nombre_Ruta, e.Nombre,a.nombre_accesorio,a.marca_accesorio,a.tipo_accesorio, S_A.fecha_salida , S_A.Id_Empleados , S_A.Id_Accesorios ,S_A.Id_PDF   
        from Salida_Accesorios  as S_A inner join rutas as r on S_A.Id_Ruta= r.Id_Ruta
        inner join Empleados as e on S_A.Id_Empleados = e.Id_Empleados 
        inner join Accesorios as a on S_A.Id_Accesorios = a.Id_Accesorios 
        where S_A.Id_pdf !="" and S_A.Id_Distribuidora="'.$Id_Distribuidora.'"';
        
        if($this->session->userdata('Id_u_sdv')=="0000005"){
            $query.='and S_A.Id_Distribuidora="000000004"';

        }else{
            $query.='group by S_A.Id_PDF order by S_A.Id_S_Accesorios desc';
        }

        $resultados = $this->db->query($query);
        return $resultados->result();

    }

    function fetch_single_details($Id_PDF)
	{
        

        $this->db->select('count(S_A.Cantidad) as Total,S_A.Id_Ruta, S_A.motivo_entrega,r.Nombre_Ruta, a.Id_Accesorios,a.precio_u,e.Nombre,e.Carnet,e.Dui, C_A.Id_Categoria, C_A.Nombre as Categoria ,S_A.cantidad,a.nombre_accesorio,a.vida_util_accesorio,a.marca_accesorio,a.tipo_accesorio, S_A.fecha_salida , S_A.Id_Empleados , S_A.Id_Accesorios ,S_A.Id_PDF');
        $this->db->from('Salida_Accesorios  as S_A');
        $this->db->join('rutas as r','S_A.Id_Ruta= r.Id_Ruta');
        $this->db->join('Empleados as e','S_A.Id_Empleados = e.Id_Empleados');
        $this->db->join('Accesorios as a','S_A.Id_Accesorios = a.Id_Accesorios');
        $this->db->join('Categoria_Accesorio as C_A','a.Id_Categoria = C_A.Id_Categoria');
        $this->db->group_by('a.Id_Accesorios');

        $this->db->where('S_A.Id_PDF',$Id_PDF);
       
       
        $data = $this->db->get('');

        // $data->row()->Nombre; "ASI SE ACCEDE A UNA COLUMNA DE LA CONSULTA"


        $output = '<p color="red">SE HACE ENTREGA DEL EQUIPO: <b></p>';
        
        $output .= '<table width="100%" border="1px"><tr>
        <th bgcolor="black"><center><font color="white">ID</font></center></th>
        <th bgcolor="black"><center><font color="white">DESCRIPCION</font></center></th>
        <th bgcolor="black"><center><font color="white">CANTIDAD</font></center></th>
        </tr>';

        
       
		foreach($data->result() as $row)
		{
			$output .= '
			<tr>
				
                <td width="15%"><center>'.$row->Id_Accesorios.'</center></td>
                <td width="25%"><center>'.$row->nombre_accesorio." ".$row->marca_accesorio." ".$row->tipo_accesorio.'</center></td>
                <td width="10%"><center>'.$row->Total.'</center></td>
					
			</tr>
			';
		}
		
        $output .= '</table>';

        $output .= '
        <p>PARA USO EN EL SISTEMA DE VENTAS<br><br>RECIBE:</p>
        <p>CARNET: <b>  '.$data->row()->Carnet.'</b>  <span style="margin-left:200px;" >
        NOMBRE: <b>'.$data->row()->Nombre.' </b> </span></p>
        <P>FECHA <b>'.$data->row()->fecha_salida.'</b><span style="margin-left:200px;" >
        RUTA: <b>'.$data->row()->Nombre_Ruta.' </b> </span></P><br><br>
        ';

        $output.='<p style="margin-bottom:50px; text-align:center;"><B>*****************************************************************************************
        <br>NOTA:ES RESPONSABILIDAD DEL VENDEDOR CUIDAR ESTE PRODUCTO, TIEMPO DE REPOSICION "'.$data->row()->vida_util_accesorio.'" GARANTIA SE INVALIDA SI EXISTE MALA MANIPULACION POR EL PERSONAL.<br>
        ***************************************************************************************** </B></p>';
        

        $output .= '
        
        <p style="margin-bottom:100px;"><b>EL EQUIPO ESTA ASIGNADO A LA RUTA. POR LO TANTO, SI CAMBIO DE RUTA
        DEBO DE ENTREGAR Y RECIBIR EL EQUIPO CORRESPONDIENTE.</b><p>

        <p style="margin-bottom:200px;"><b>MOTIVO DE ENTREGA: '.$data->row()->motivo_entrega.'</b></p>

        <p>FIRMA USUARIO:________________________</p>
        <p style="margin-left:50%; margin-top:-50px;">ENTREGA: <b>'.strtoupper($this->session->userdata('Nombre')).'</b></p>
    
        ';
        // $output.='<br><br><br><br><br><br><p colspan="2" align="center"><span style="margin-left:100px;"><a href="'.base_url().'index.php/Accesorios" class="btn btn-primary">Regresar</a></span><p>';
        
        //*********************************HOJA DE DESCUENTO ***********************************//
        
        if($data->row()->Categoria=="POWER BANK"){
            $cuota=$row->precio_u/2;
        $output.='<div style="page-break-before:always;">
        
        <BR><BR><BR><BR><BR><BR>
        <p>YO,<b>  '.STRTOUPPER($data->row()->Nombre).' </b>CON DUI NUMERO :<b> '.STRTOUPPER($data->row()->Dui).'</b> AUTORIZO A <BR>
         <b>DISTRIBUIDORA';
         if($this->session->userdata('Nombre_Distribuidora')=='SAN SALVADOR'){
             $output.=' DEL CENTRO';
         }elseif($this->session->userdata('Nombre_Distribuidora')=='SAN MIGUEL'){
            $output.=' DE ORIENTE';
         }else if($this->session->userdata('Nombre_Distribuidora')=='SANTA ANA' OR $this->session->userdata('Nombre_Distribuidora')=='SONSONATE' ){
            $output.=' DE OCCIDENTE';
         }
        $output.=' , S.A DE C.V.</b>  CARGAR A MI CUENTA PERSONAL LA CANTIDAD DE <b>$'.number_format($row->precio_u,2).'</b> DOLARES DE LOS ESTADOS UNIDOS DE NORTE AMERICA.<BR><BR>
        EN CONCEPTO DE DESCUENTO POR: <b>'.$data->row()->nombre_accesorio." ".$row->marca_accesorio." ".$row->tipo_accesorio.'</b><br><br>
        CANTIDAD QUE ME COMPROMETO A CANCELAR EN LA SIGUIENTE FORMA:<BR><BR>
        <b>DESCUENTO EN PLANILLA</b> 
        <img width="5%;" style="margin-left:50px; margin-top:10px;" src="https://cdn4.iconfinder.com/data/icons/vote-check-marks/100/vote-24-512.png">
        </p><p><b><center><hr></center></b></p><br><br>
        A LA VEZ SOLICITO Y AUTORIZO AL DEPARTAMENTO DE COMPENSACIONES DE ESTA EMPRESA, 
        PARA QUE DE MI SALARIO QUINCENAL RETENGA DICHO MONTO A PARTIR DE_____________________________, 
        EN <B>2 CUOTAS QUINCENALES DE $'.number_format($cuota,2).' C/U</B><BR><BR> Y TAMBIÉN PARA QUE EN CASO DE MI RETIRO 
        Y SI FUERA OBJETO DE INDEMNIZACIÓN, SE ME DEDUZCA EL SALDO ADEUDADO, EL CUAL FIRMO EN SEÑAL 
        DE ACEPTACIÓN COMPLETA.<BR><BR>PARA SER PRESENTADA A <b>DISTRIBUIDORA';
        if($this->session->userdata('Nombre_Distribuidora')=='SAN SALVADOR'){
            $output.=' DEL CENTRO';
        }elseif($this->session->userdata('Nombre_Distribuidora')=='SAN MIGUEL'){
           $output.=' DE ORIENTE';
        }else if($this->session->userdata('Nombre_Distribuidora')=='SANTA ANA' OR $this->session->userdata('Nombre_Distribuidora')=='SONSONATE' ){
           $output.=' DE OCCIDENTE';
        }
        $output.=' S.A DE C.V.</B> SE EXTIENDE LA PRESENTE A LOS _______ 
        DIAS DEL MES DE ____________________ DEL AÑO 20______</div>
        <BR><BR><HR><BR><BR>
        NOMBRE DEL EMPLEADO: _________________________________________________________<BR><BR><BR><BR>
        FIRMA:___________________________';
        }
		return $output;
    }
    
    public function MostrarCategoria($distribuidora){
 
        $this->db->select('C_A.Id_Categoria,C_A.Nombre,C_A.Descripcion,C_A.fecha_registro,C_A.estado,C_A.Id_u_sdv');
        $this->db->from('Categoria_Accesorio as C_A');
        $this->db->join('distribuidora as d','C_A.Id_Distribuidora=d.Id_distribuidora');
        $this->db->where('d.Id_Distribuidora',$distribuidora);

        $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        } 


    }

    public function MostrarAccesorios($distribuidora){
 
        $this->db->select('a.Id_Accesorios,a.nombre_accesorio,a.estado,a.Id_Categoria,a.marca_accesorio,a.tipo_accesorio,a.modelo_accesorio,a.color_accesorio,a.vida_util_accesorio,a.caracteristica_accesorio,a.fecha_registro,a.precio_u');
        $this->db->from('Accesorios as a');
        $this->db->join('distribuidora as d','a.Id_Distribuidora=d.Id_distribuidora');
        $this->db->where('d.Id_Distribuidora',$distribuidora);

        $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        } 


    }

    public function Existencia_Producto($Id_Producto){

        
        $query = 'SELECT  Entradas - Salidas  AS Stock
        FROM
            (SELECT Id_Accesorios, SUM(Cantidad) AS Entradas FROM Entrada_Accesorios AS E_A GROUP BY Id_Accesorios) 
                T1 INNER JOIN
            (SELECT Id_Accesorios, SUM(Cantidad) AS Salidas FROM Salida_Accesorios AS S_A GROUP BY Id_Accesorios) 
                T2 ON T1.Id_Accesorios = T2.Id_Accesorios 
                INNER JOIN Accesorios AS A on T1.Id_Accesorios = A.Id_Accesorios where A.Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" AND T1.Id_Accesorios="'.$Id_Producto.'"
        GROUP BY T1.Id_Accesorios order by stock asc ;';

        $resultados = $this->db->query($query);

        $Datos = $resultados->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        } 
    }

    public function Actualizar_Accesorios($param){
     
		$campos = array(
            'nombre_accesorio' => $param['nombre_accesorio'],
            'Id_Categoria' => $param['Id_Categoria'],
            
            'marca_accesorio' => $param['marca_accesorio'],
            'tipo_accesorio' => $param['tipo_accesorio'],
            'modelo_accesorio' => $param['modelo_accesorio'],
            'color_accesorio' => $param['color_accesorio'],
            'vida_util_accesorio' => $param['vida_util_accesorio'],
            'caracteristica_accesorio' => $param['caracteristicas_accesorio'],
            'fecha_registro' => $param['fecha_registro'],
            'Id_u_sdv'=>$this->session->userdata('Id_u_sdv'),
            'precio_u' => $param['precio_u']
            
            
		);
		$this->db->where('Id_Accesorios', $param['Id_Accesorios']);
		$this->db->update('Accesorios',$campos);
		
		return 1;
    }

    public function Activar_Accesorio($id){
        $campos = array(
            'Estado' => 1,

		);
		$this->db->where('Id_Accesorios', $id);
		$this->db->update('Accesorios',$campos);
		
		return 1;
	
    }

    public function Inactivar_Accesorios($id){
        $campos = array(
            'Estado' => 0,

		);
		$this->db->where('Id_Accesorios', $id);
		$this->db->update('Accesorios',$campos);
		
		return 1;
	
    }

    public function Actualizar_Categoria($param){
     
		$campos = array(
            'Nombre' => $param['nombre_categoria'],
            'Descripcion' => $param['descripcion'],
            'fecha_registro' => $param['fecha_registro'],
            'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')

		);
		$this->db->where('Id_Categoria', $param['Id_Categoria']);
		$this->db->update('Categoria_Accesorio',$campos);
		
		return 1;
    }

    public function Activar_Categoria($id){
        $campos = array(
            'estado' => 1,

		);
		$this->db->where('Id_Categoria', $id);
		$this->db->update('Categoria_Accesorio',$campos);
		
		return 1;
	
    }

    public function Inactivar_Categoria($id){
        $campos = array(
            'estado' => 0,

		);
		$this->db->where('Id_Categoria', $id);
		$this->db->update('Categoria_Accesorio',$campos);
		
		return 1;
	
    }

    public function InformeXruta($ruta)
    {
   
        $this->db->select('r.Nombre_Ruta as Ruta, e.Nombre as Vendedor,a.nombre_accesorio As Accesorios,a.marca_accesorio,a.tipo_accesorio,a.modelo_accesorio, s_a.fecha_salida, s_a.Cantidad,s_a.motivo_entrega as Motivo ');
        $this->db->from('Salida_Accesorios as s_a');
        $this->db->join('Accesorios as a','s_a.Id_Accesorios=a.Id_Accesorios');
        $this->db->join('Empleados as e','s_a.Id_Empleados=e.Id_empleados');
        $this->db->join('rutas as r','s_a.Id_Ruta=r.Id_ruta');
        $this->db->where('r.Nombre_Ruta',$ruta);
        $this->db->order_by('s_a.fecha_salida desc');

        $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        }

    }
        
}
