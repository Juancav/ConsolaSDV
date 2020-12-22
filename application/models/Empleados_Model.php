<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Empleados_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }

    function fetch_distribuidora(){

        $this->db->where('Id_Pais',$this->session->userdata('Id_pais'));
        $query = $this->db->get("distribuidora");
        return $query->result();
    }

    function fetch_canal($Id_Distribuidora)
    {
         $this->db->where('Id_Distribuidora', $Id_Distribuidora);
         $query = $this->db->get('canal');
         $output = '<option value=""  disabled="disabled" selected="true">Seleccione el  Canal</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
         }
         return $output;
    }
        
    function fetch_ruta($Id_Canal)
    {
        $this->db->where('Id_Canal', $Id_Canal);
        
        $query = $this->db->get('rutas');
        $output = '<option value="" disabled="disabled" selected="true">Seleccione la Ruta</option>';
        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Ruta.'">'.$row->Nombre_Ruta.'</option>';
        }
        return $output;
    }


    function fetch_empleado($Id_Ruta)
    {
        $this->db->where('Id_Ruta', $Id_Ruta);
        $this->db->where('Estado', 1);
        $this->db->where('Cargo', 'VENDEDOR');
      
        
        $query = $this->db->get('Empleados');
        $output = '<option value="" disabled="disabled" selected="true">Seleccione el Empleado</option>';
        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Empleados.'">'.$row->Nombre.'</option>';
        }
        return $output;
    }


    function Ingresar_Empleados($data){
        
        $this->db->insert('Empleados',$data);
        
        if($this->db->affected_rows() > 0 ){
            return true;
        }else{
            return false;
        }
    }
        
    public function Consultar_Empleados($distribuidora,$cargo){

            $this->db->select('e.Id_Distribuidora, e.Estado ,e.Id_Canal,e.Id_Ruta, e.foto_empleado, e.Id_Empleados, e.Carnet,e.Dui, e.Nombre , e.Cargo, e.Fecha ,d.Nombre_Distribuidora,c.Nombre_Canal,r.Nombre_Ruta');
            $this->db->from('Empleados as e');
            $this->db->join('distribuidora as d', 'e.Id_Distribuidora = d.Id_Distribuidora');
            $this->db->join('canal as c ',' e.Id_Canal= c.Id_Canal');
            $this->db->join('rutas as r ',' e.Id_Ruta=r.Id_Ruta ');
            $this->db->where('e.Id_Distribuidora',$distribuidora);
            $this->db->where('e.Cargo',$cargo);
            $this->db->order_by('r.Nombre_Ruta', 'ASC');

        $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        } 



    }

    public function Actualizar_Empleados($param){
		$campos = array(
            'Carnet' => $param['Carnet'],
            'Dui' => $param['Dui'],
            'Nombre' => $param['Nombre'],
            'Cargo' => $param['Cargo'],
			'Fecha' => $param['Fecha'],
			'Id_Distribuidora' => $param['Id_Distribuidora'],
			'Id_Canal' => $param['Id_Canal'],
			'Id_Ruta' => $param['Id_Ruta']
		);
		$this->db->where('Id_Empleados', $param['Id_Empleados']);
		$this->db->update('Empleados',$campos);
		
		return 1;
    }

    public function Activar_Empleado($id){
        $campos = array(
            'Estado' => 1,

		);
		$this->db->where('Id_Empleados', $id);
		$this->db->update('Empleados',$campos);
		
		return 1;
	
    }
    
    public function Inactivar_Empleado($id){
        $campos = array(
            'Estado' => 0,

		);
		$this->db->where('Id_Empleados', $id);
		$this->db->update('Empleados',$campos);
		
		return 1;
		
    }
    public function Verificacion_Empleado($ruta){

        $this->db->select('count(estado) as CantidadActivos');
        $this->db->from('Empleados');
        $this->db->where('Id_Ruta',$ruta);
        $this->db->where('Estado','1');
        $this->db->where('Cargo','VENDEDOR');

        $query = $this->db->get();

        // $Datos = $query->result();

        if($query->num_rows()>0){

            return $query->row();
        }else{
            return array();
        } 

    }

    public function Registrar_Historial($param){

        $fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
        $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

        // vVerificar si se ha entregado telefono
            $query='SELECT * FROM (
                    select bec.Id_telefono as Id_telefono,bec.estado as Estado ,bec.Id_ruta as Ruta 
                    from bitacora_entrega_celular as bec
                    union all
                    select becno.Id_telefono as Id_telefono ,becno.estado as Estado, becno.Id_ruta as Ruta 
                    from bitacora_entrega_celular_noautorizado as becno )  TT
                    where Ruta='.$param['Id_Ruta'].' and Estado=1;';

            $data = $this->db->query($query);
        // Verificar si se le ha entregado impresora
            $query2='SELECT Id_Impresoras from Bitacora_entrega_impresora where Id_ruta='.$param['Id_Ruta'].' and estado=1;';
            $data2 = $this->db->query($query2);

            $campos = array(
                'Id_Empleados' => $param['Id_Empleado'],
    
            );
            $this->db->where('Id_Ruta', $param['Id_Ruta']);
            $this->db->where('estado', 1);
            $this->db->update('bitacora_entrega_celular',$campos);

            $this->db->where('Id_Ruta', $param['Id_Ruta']);
            $this->db->where('estado', 1);
            $this->db->update('bitacora_entrega_celular_noautorizado',$campos);
            
            $this->db->where('Id_Ruta', $param['Id_Ruta']);
            $this->db->where('estado', 1);
            $this->db->update('Bitacora_entrega_impresora',$campos);


            $campos2 = array(
                'estado' => 0,
    
            );


            $this->db->where('Id_Ruta', $param['Id_Ruta']);
            $this->db->where('estado', 1);
            $this->db->update('Historial_Entregas',$campos2);


            if($data->num_rows()>0 and $data2->num_rows()>0){

                $campos = array(
                    'Id_historial' => 0,
                    'Motivo_Traspaso' => $param['Motivo'],
                    'fecha_registro' => $nuevafecha,
                    'estado' => 1,
                    'PB' => $param['PW'],
                    'CU' => $param['CU'],
                    'VT' => $param['VT'],
                    'EP' => $param['EP'],
                    'EI' => $param['EI'],
                    'CT' => $param['CT'],
                    'CI' => $param['CI'],
                    'Observacion' => $param['Observacion'],
                    'Id_Distribuidora' => $param['Id_Distribuidora'],
                    'Id_Canal' => $param['Id_Canal'],
                    'Id_Ruta' => $param['Id_Ruta'],
                    'Id_Empleados' => $param['Id_Empleado'],
                    'Id_telefono' => $data->row()->Id_telefono,
                    'Id_Impresoras' => $data2->row()->Id_Impresoras,
                    'Id_PDF' => $nuevafecha."_".$param['Id_Empleado'],
                    'id_u_sdv' => $this->session->userdata('Id_u_sdv'),
    
                                
                );
            
            

                return $this->db->insert('Historial_Entregas',$campos);;

            }else{
                return  false;
            } 
 
    }

    public function Consultar_PDF(){

        $query='SELECT he.Id_historial,r.Nombre_Ruta, e.Nombre,he.fecha_registro,he.Id_PDF,he.estado,he.Motivo_Traspaso from Historial_Entregas as he
                    inner join rutas as r on he.Id_Ruta=r.Id_Ruta
                    inner join canal as c on he.Id_Canal=c.Id_Canal
                    inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
                    inner join Empleados as e on he.Id_Empleados=e.Id_Empleados 
                    where he.Id_u_sdv='.$this->session->userdata('Id_u_sdv').' and he.estado=1 
                    order by he.Id_historial DESC limit 5';
    
        $resultados = $this->db->query($query);
        return $resultados->result();
        
    }

    public function Consultar_PDF_ruta($Id_ruta){

        $query='SELECT he.Id_historial,r.Nombre_Ruta, e.Nombre,he.fecha_registro,he.Id_PDF,he.estado,he.Motivo_Traspaso from Historial_Entregas as he
                    inner join rutas as r on he.Id_Ruta=r.Id_Ruta
                    inner join canal as c on he.Id_Canal=c.Id_Canal
                    inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
                    inner join Empleados as e on he.Id_Empleados=e.Id_Empleados 
                    where he.estado=1 and r.id_ruta='.$Id_ruta.'
                    order by he.Id_historial DESC';
    
        $resultados = $this->db->query($query);
        return $resultados->result();
        
    }


    public function fetch_single_details($Id_PDF)
	{


        $this->db->select('e.Cargo');
        $this->db->from('Historial_Entregas as he');
        $this->db->join('Empleados as  e','he.Id_Empleados=e.Id_Empleados');
        $this->db->where('he.Id_PDF',$Id_PDF);
        $query=$this->db->get();


        if($query->row()->Cargo=='IMPULSADORA'){

            $data='SELECT r.Nombre_Ruta,he.Id_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,he.PB , he.CU ,he.VT,he.EP,he.EI,he.CT,he.CI,d.Nombre_Distribuidora,he.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.Id_telefono,t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, (select Nombre from Empleados where Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" and Cargo="JEFE DE VENTA" and Estado=1) AS JEFE_DE_VENTA, mi.nombre_marca, moi.nombre_modelo,  i.codigo_impresora,i.activo_fijo,i.n_serie,di.primera_ocasion, he.Observacion,he.Id_PDF  
                    from Historial_Entregas as he
                    inner join rutas as r on he.Id_Ruta=r.Id_Ruta
                    inner join canal as c on he.Id_Canal=c.Id_Canal
                    inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
                    inner join Empleados as e on he.Id_Empleados=e.Id_Empleados
                    inner join telefonos as t on  he.Id_telefono=t.Id_telefono
                    inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
                    inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
                    inner join Impresoras as i on he.Id_Impresoras=i.Id_Impresoras
                    inner join Marca_Impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
                    inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
                    inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
                    inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras
                  WHERE he.Id_PDF="'.$Id_PDF.'"';

       
       
                $data = $this->db->query($data);

               

        }else{


            $this->db->select('c.Nombre_Canal');
            $this->db->from('Historial_Entregas as he');
            $this->db->join('Empleados as  e','he.Id_Empleados=e.Id_Empleados');
            $this->db->join('canal as  c','e.Id_Canal=c.Id_Canal');
            $this->db->where('he.Id_PDF',$Id_PDF);
            $query=$this->db->get();


            if($query->row()->Nombre_Canal !='DETALLE'){

                $data='SELECT r.Nombre_Ruta,he.Id_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,he.PB , he.CU ,he.VT,he.EP,he.EI,he.CT,he.CI,d.Nombre_Distribuidora,he.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc ,t.Id_Telefono, t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, (select Nombre from Empleados where Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" and Cargo="JEFE DE VENTA" and Estado=1) AS JEFE_DE_VENTA, mi.nombre_marca, moi.nombre_modelo,  i.codigo_impresora,i.activo_fijo,i.n_serie,di.primera_ocasion, he.Observacion,he.Id_PDF  
                    from Historial_Entregas as he
                    inner join rutas as r on he.Id_Ruta=r.Id_Ruta
                    inner join canal as c on he.Id_Canal=c.Id_Canal
                    inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
                    inner join Empleados as e on he.Id_Empleados=e.Id_Empleados
                    inner join telefonos as t on  he.Id_telefono=t.Id_telefono
                    inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
                    inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
                    inner join Impresoras as i on he.Id_Impresoras=i.Id_Impresoras
                    inner join Marca_Impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
                    inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
                    inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
                    inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras
                  WHERE he.Id_PDF="'.$Id_PDF.'"';

       
       
                $data = $this->db->query($data);

                

            }else{

            $data='SELECT r.Nombre_Ruta,he.Id_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,he.PB , he.CU ,he.VT,he.EP,he.EI,he.CT,he.CI,d.Nombre_Distribuidora,he.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc ,t.Id_Telefono, t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, (select Nombre from Empleados where Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" and Cargo="JEFE DE VENTA" and Estado=1) AS JEFE_DE_VENTA, mi.nombre_marca, moi.nombre_modelo,  i.codigo_impresora,i.activo_fijo,i.n_serie,di.primera_ocasion,mh.img_mh, he.Observacion,he.Id_PDF  
                from Historial_Entregas as he
                inner join rutas as r on he.Id_Ruta=r.Id_Ruta
                inner join canal as c on he.Id_Canal=c.Id_Canal
                inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
                inner join Empleados as e on he.Id_Empleados=e.Id_Empleados
                inner join telefonos as t on  he.Id_telefono=t.Id_telefono
                inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
                inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
                inner join autorizaciones_mh as mh on t.Id_telefono=mh.Id_telefono
                inner join Impresoras as i on he.Id_Impresoras=i.Id_Impresoras
                inner join Marca_Impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
                inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
                inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
                inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras
            WHERE he.Id_PDF="'.$Id_PDF.'"';

                $data = $this->db->query($data);
            }

        }


        
    // $data->row()->Nombre; "ASI SE ACCEDE A UNA COLUMNA DE LA CONSULTA"
        $JEFE="JEFE DE VENTA";
        $Espacio="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $Espacio2="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $Espacio3="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $EspacioImp="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $EspacioVen="&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
       
     

        
        $data2='SELECT e.Nombre,e.Carnet,e.Cargo from Historial_Entregas as he
                inner join Empleados as e on he.Id_Empleados=e.Id_Empleados
                where he.Id_Ruta="'.$data->row()->Id_Ruta.'" and he.estado=0
                ORDER BY he.Id_historial DESC LIMIT 1';

        $data2 = $this->db->query($data2);

     
        $count=$data->num_rows();

        $count2=$data2->num_rows();


        $output='';

        if($count2>0){

            $output.='
            <div style="font-size:20px;">

            <img width="125px"  height="125px" style="margin-top:10px;" src="https://fotos.subefotos.com/1caca0253f02cfa9f52b2d2264004f28o.png">

                    <table border="2" style="border: 2px solid black; float:right; margin-top:60px;">
                        <tr>
                            <th><B>FECHA DE REGISTRO</th>
                        </tr>
                        <tr>
                            <td style="text-align:center;">'.$data->row()->fecha_registro.'</td>
                        </tr>
                    </table>

                    <H2 STYLE="text-align:center; margin-top:-100px;"> LIQUIDACION DE EQUIPO DE FACTURACION </H2>
                        <br>

                    <table  border="2" style="width:100%;">
                        <tr>
                            <th style="text-align:center;"><B>DATOS</B></th>
                        </tr>
                    </table>

                        <br><br>

                    <table border="1" style="width:100%;">
                        <tr>
                            <td>RUTA</td>
                            <td><b>'.$data->row()->Nombre_Ruta.'</b> </td>
                            <td style="width:25%;">CODIGO DE EMPLEADO</td>
                            <td><b>'.$data2->row()->Carnet.'</b> </td>
                        </tr>
                        <tr>
                            <td>NOMBRE</td>
                            <td colspan="3"><b>'.$data2->row()->Nombre.'</b></td>
                        </tr>
                        <tr>
                            <td>NUMERO DE TELEFONO</td>
                            <td><b>'.$data->row()->telefono.'</b></td>
                            <td>PUESTO</td>
                            <td><b>'.$data2->row()->Cargo.'</b></td>
                        </tr>
                    </table>
                        <br><br>
                        
                    <table border="1" style="width:100%; text-align:center;">
                    <tr style="text-align:center;">
                        <th rowspan="2">ACCESORIOS</th>
                        <th rowspan="2">MONTO</th>
                        <th colspan="3">ENTREGO</th>
                        <th rowspan="2">CODIGO DE SERIE / IMEI / ACTIVO FIJO</th>
                        <th colspan="3">ESTADO</th>
                        <th rowspan="2">COMENTARIOS</th>
                    </tr>
                    <tr style="text-align:center;">
                        <th>S</th>
                        <th>N</th>
                        <th>P</th>
                        <th>M</th>
                        <th>R</th>
                        <th>B</th>
                    </tr>
                    <tr>
                        <td >'.$data->row()->Nombre_Marca.' '.$data->row()->nombre_Modelo.'</td>
                        <td > $'.$data->row()->primera_ocacion.'</td>
                        <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                        <td> </td>
                        <td> </td>
                        <td> <b>'.$data->row()->imei_telefono.'</b></td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                    </tr>
                    <tr>
                        <td>'.$data->row()->nombre_marca.' '.$data->row()->nombre_modelo.$data->row()->codigo_impresora.' </td>
                        <td> $'.$data->row()->primera_ocasion.' </td>
                        <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                        <td> </td>
                        <td> </td>
                        <td> <b>'.$data->row()->n_serie.' | '.$data->row()->activo_fijo.'</b></td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                    </tr>

                    <tr>
                        <td>POWER BANK</td>
                        <td> $11.00 </td>';

                        if($data->row()->PB==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>
                            ';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%">
                            </td>
                            <td></td>';
                            
                        }
                    
                            $output.='
                       
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    <tr>
                        <td> CABLE USB </td>
                        <td> $6.00  </td>
                        ';
                        
                        if($data->row()->CU==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"></td>
                            <td></td>';
                        }
                    
                            $output.='
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                    </tr>
                    <tr>
                        <td> VIDRIO TEMPLADO </td>
                        <td> $8.00 </td>';
                        
                        if($data->row()->VT==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"></td>
                            <td></td>';
                        }
                    
                            $output.='
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                    </tr>
                    <tr>
                        <td> ESTUCHE DE TELEFONO </td>
                        <td> $5.00 </td>';
                        
                        if($data->row()->EP==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"></td>
                            <td></td>';
                        }
                    
                            $output.='
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                    </tr>
                    <tr>
                        <td> CARGADOR DE TELEFONO </td>
                        <td> $3.00 </td>
                        ';
                        
                        if($data->row()->CT==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"></td>
                            <td></td>';
                        }
                    
                            $output.='
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                    </tr>
                    <tr>
                        <td> ESTUCHE DE IMPRESORA </td>
                        <td> $22.00 </td>
                        ';
                        
                        if($data->row()->EI==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"></td>
                            <td></td>';
                        }
                    
                            $output.='
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                    </tr>
                    <tr>
                        <td> CARGADOR DE IMPRESORA</td>
                        <td> $25.00 </td>
                        ';
                        
                        if($data->row()->CI==1){
                            $output.='
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"> </td>
                            <td></td>
                            <td></td>';
                        }else{

                            $output.='
                            <td></td>
                            <td> <img src="https://images.vexels.com/media/users/3/143372/isolated/preview/6e633a235ea0d523078e667b9f84f15b-blue-check-mark-by-vexels.png" width="110%"></td>
                            <td></td>';
                        }
                    
                            $output.='
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                    </tr>

                    </table>
                        <br>
                    <table border="2" style="width:100%; text-align:center; ">
                        <tr> <th>MOTIVO : '.$data->row()->Motivo_Traspaso.'</th></tr>
                    </table>

                    <p><b>OBSERVACION:</b> '.STRTOUPPER($data->row()->Observacion).'</p>

                    
                    <p style="position:fixed; bottom:250px; text-align:center;">
                        <span style="float:right; width:50%;"><b>____________________________________________</b><br>
                        NOMBRE Y FIRMA DE AUTORIZACION</span>

                        <span style="float:left; width:50%;"><b>____________________________________________</b><br>
                        NOMBRE Y FIRMA DE USUARIO</span>
                    </p>
                    

                        
            </div>
            ';
           
            
        }else{

        }
      
        if ($count>0){

           

                    if($data->row()->Nombre_Marca !="HAND HELD"){

                        // *********************************HOJA DE ENTREGA TELEFONO ***********************************//
                                    $output.='<div style="margin-top:-35; margin-left:7%;';
                                    if($count2>0){
                                        $output.='page-break-before:always;';
                                    }else{

                                    }
                                    
                                    $output.='"><img src="https://i.ibb.co/MGcV2Y3/Titulo-PDF.png"/></div>';
                                    $output.=  '<p style="font-size:16px; margin-left:5%; margin-top:-35px;"><b>Informacion Del Solicitante</b></p>'; 
                                    $output.= '<p style="font-size:16px; margin-left:5%;">Fecha de registro: <b>'.$data->row()->fecha_registro.'</b> <b></p>';
                                    $output.='<p style="font-size:16px; margin-left:5%;">Tipo de empleado:<b>&nbsp;&nbsp;&nbsp;'.$data->row()->Cargo.'</b> ';
                                    if($data->row()->Cargo=="VENDEDOR")
                                    {
                                    $output.=$EspacioVen;
                                    }
                                    else if($data->row()->Cargo=="IMPULSADORA")
                                    { 
                                        $output.=$EspacioImp;
                                    };
                                    $output.='(Seleccion) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Otro: <input type="text"  style="height:30px; width:40%; background-color:#DFDFDF; margin-top:5px;" class="form-control" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------------------------" ></p> ';
                                    $output.='<div style="margin-top:-38px;"><p style="font-size:16px; margin-left:5%; ">Vigencia:<b>&nbsp;&nbsp;&nbsp; Permanente</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Seleccion)    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Otro: <input type="text"  style="height:30px; width:40%; background-color:#DFDFDF; margin-top:5px;" class="form-control" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------------------------" ></p></div>';
                                    $output.='<div style="margin-top:-35px; margin-left:-3px;"><p style="font-size:16px; margin-left:5%; "><b>R '.$data->row()->Nombre_Ruta.'</b>  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Desde: <input type="text" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$data->row()->fecha_registro.'" style="height:20px;  background-color:#DFDFDF;"></input></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Hasta: <input type="text"  style="height:30px; width:40%; background-color:#DFDFDF;" class="form-control" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------------------------" ></p></div>';
                                    
                                    $output.='<div style="margin-left:26%;">';

                                    $output.='<div style="float:left; ">';
                                        $output.='<p style="font-size:16px; margin-left:-20%; margin-top:10px;"> Departamento Solicitante &nbsp;&nbsp;<br><p>';
                                        $output.='<p style="font-size:16px; margin-left:-20%;" >&nbsp;&nbsp;&nbsp;Nombre Del Solicitante &nbsp;&nbsp;<br></p>';
                                        $output.='<p style="font-size:16px; margin-left:-20%; margin-top:20px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cargo Del Solicitante &nbsp;&nbsp;</p>';
                                    $output.='</div>';

                                    $output.='<div>';
                                        $output.='<input type="text" value="'.$Espacio.'VENTAS" style="font-size: 14px; height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                        $output.='<input type="text" value="'.$Espacio2.'&nbsp;&nbsp;&nbsp;&nbsp;'.$data->row()->JEFE_DE_VENTA.'" style="font-size: 14px;height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                        $output.='<input type="text" value="'.$Espacio2.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$JEFE.' | '.$data->row()->Nombre_Distribuidora.'" style="font-size: 14px; height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                    $output.='</div>';

                                    $output.='</div>';

                                    $output.='<p style="font-size:16px; margin-left:3%;"><b>Informacion del Usuario Responsable del Telefono</b></p>';

                                    $output.='<div style="margin-left:26%;">';

                                    $output.='<div style="float:left; ">';
                                        $output.='<p style="font-size:16px; margin-left:-20%; margin-top:10px;"> Nombre del Usuario &nbsp;&nbsp;<br><p>';
                                        $output.='<p style="font-size:16px; margin-left:-24%;" >Departamento Responsable &nbsp;&nbsp;<br></p>';
                                    $output.='</div>';

                                    $output.='<div>';
                                        $output.='<input type="text" value="'.$Espacio2.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$data->row()->Nombre.'" style="font-size: 14px; height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                        $output.='<input type="text" value="'.$Espacio.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VENTAS'.'" style="font-size: 14px;height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                        $output.='</div>';
                                    $output.='</div>';

                                    $output.='<div style="margin-left:-5%;"><img width="100.5%" height="250px" src="https://fotos.subefotos.com/15a551727983ffc757af09c27c7b1238o.png"></div>';
                                    $output.='<p style="font-size:16px; margin-left:3%; margin-top:-7px;"> Justificacion <input type="text" style="font-size: 14px;height:30px; width:85%; background-color:#DFDFDF;" value="'.$Espacio.'ENTREGA DE EQUIPO POR: '.$data->row()->Motivo_Traspaso.'" ></input></p>';
                                    $output.='<input type="text" value="" style="font-size: 14px; margin-top:-22px; margin-left:35px; height:30px; width:90%; background-color:#DFDFDF; "></input>';
                                    $output.='<input type="text" value="" style="font-size: 14px; margin-top:0; margin-left:35px; height:30px; width:90%; background-color:#DFDFDF; "></input>';
                                    $output.='<div style="margin-left:-5%;"><img width="98%" height="200px"src="https://fotos.subefotos.com/b4f9c1a76472c9f643fbac104995d36co.png"></div>';

                                    $output.='
                                    <div style="border:  5px black solid; height:375px; margin-top:-10px;">

                                                <div style="border-bottom: 5px black solid; height:30px;  background-color:#DFDFDF">

                                                <p style="text-align:center; font-size:20px; margin-top:-1px;">
                                                    ESPACIO RESERVADO PARA TECNOLOGIA DE INFORMACION
                                                </p>
                                                
                                                <p style="font-size:22px; text-align:center;">&nbsp;&nbsp;&nbsp;Fecha/hora Entrega:_______________________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Autorizado Gerente De IT f._____________________<br>
                                                    Nombre quien Entrega:_______________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Firma Persona que Entrega f._____________________<br>
                                                <p>

                                                    <div style="border-bottom: 5px black solid; border-top: 5px black solid; height:30px; background-color:#DFDFDF">
                                                    
                                                    <p style="text-align:center; font-size:20px; margin-top:-1px;">
                                                        DATOS DEL APARATO TELEFONICO
                                                    </p>
                                                    
                                                    <p style="font-size:22px; margin-left:100px;"> 
                                                                                                    NUMERO: <b>'.$data->row()->telefono.'</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MARCA: <b>'.$data->row()->Nombre_Marca.'</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MODELO: <b>'.$data->row()->nombre_Modelo.'</b><br>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMEI: <b>'.$data->row()->imei_telefono.'</b><br>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIM: <b>'.$data->row()->sim_card.'</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        En caso de robo , o daño me hago responsable de reponer el celular <br>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        asignado por aparato de igual o similar modelo
                                                        <br>PRIMERA OCASION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>$'.$data->row()->primera_ocacion.'</b><br>
                                                        SEGUNDA OCASION &nbsp;&nbsp;&nbsp;&nbsp; <b>$'.$data->row()->segunda_ocacion.'</b><br>
                                                        TERCERA OCASION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>$'.$data->row()->tercera_ocacion.'</b> 
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        F.______________________________
                                                    </p>

                                                    

                                                    </div>

                                                </div>

                                            
                                                
                                    </div>';

                        //*********************************END, HOJA DE ENTREGA TELEFONO ***********************************//
                    }else{
                        //*********************************HOJA DE ENTREGA HAND HELD ***********************************//
                        $output.='<div style="margin-top:-35;';
                        if($count2>0){
                            $output.='page-break-before:always;">';
                        }else{

                        }
                     
                            $output .=  '<div style="font-size:20px;">
                                    <img width="125px"  height="125px" style="margin-top:10px;" src="https://fotos.subefotos.com/1caca0253f02cfa9f52b2d2264004f28o.png">
                                        
                                    
                                        <h1 style="font-size:24px; position:fixed; text-align:center;">

                                                                PRODUCTOS ALIMENTICIOS BOCADELI S.A DE C.V<br>
                                                            Formato para movimiento definitivo de activos fijos <br>
                                                                        Formulario ACF-01
                                        </h1>
                                        
                                        Fecha : <b>'.$data->row()->fecha_registro.'</b>  
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            Correlativo No. <table style="float:right; margin-right:300px;">
                                                                                            <td width="150px"  style="border: 1px #000 solid; ">&nbsp;</td>
                                                                                            </table>
                                                                                            <br><br>
                                        <b>Tipos de movimiento activos</b>
                                        

                                        <table style="margin-left:150px; margin-top:-30px; font-size:15px;" >
                                            <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Alta por entrega del activo fijo o contratacion de personal</td>
                                            </tr>
                                            <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:20px;">Alta por liquidacion de proyectos o adquisicion de maquinaria (Debera completar anexo 1)</td>
                                            </tr>
                                            <tr>
                                                <td style="border:1px #000 solid; text-align:center;" width="50px">X</td ><td style="font-size:23px;"> Traslado interno(dentro de la misma empresa o area)</td>
                                            </tr>
                                            <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Traslado externo (a otra distribuidora) o venta del activo</td>
                                            </tr>
                                            <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Bajas de activo fijo dañado</td>
                                            </tr>
                                            <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Retiro de Activos Fijos por obsolescencia o donacion</td>
                                            </tr>
                                        </table><br>

                                        
                                        <table style="float:right;">
                                        
                                            <tr>
                                            <td></td>
                                                <td></td>
                                                <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>RUTA</b></td>
                                                <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>'.$data->row()->Nombre_Ruta.'</b></td>
                                                
                                            </tr>

                                            <tr>
                                                <td colspan="4" style="border:1px #000 solid; text-align:center; font-size:20px; width:500px;" ><b> Dependencia destino (Recibe)</b></td>
                                            </tr>

                                            <tr>
                                                
                                                <td style="border:1px #000 solid;  font-size:20px;"> Nuevo Responsable</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->Nombre.'</td>
                                                
                                            </tr>

                                            <tr>
                                            
                                                <td style="border:1px #000 solid;  font-size:20px;"> Codigo de Empleado</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->Carnet.'</td>
                                            </tr>

                                            <tr>
                                            
                                                <td style="border:1px #000 solid;  font-size:20px;"> Area </td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;">  VENTAS </td>
                                            </tr>

                                            <tr>
                                        
                                                <td style="border:1px #000 solid;  font-size:20px;"> Codigo Centro de Costos</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->cod_cc.'</td>
                                            </tr>

                                            <tr>
                                            
                                                <td style="border:1px #000 solid;  font-size:20px;">Nombre centro de costos</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->descrip_cc.'</td>
                                            </tr>


                                        </table>

                                        
                                        <table style="float:left; margin-top:2px;">
                                            
                                            <tr>
                                            <td width="75px">&nbsp;</td>
                                            <td width="75px">&nbsp;</td>
                                            <td width="75px">&nbsp;</td>
                                            <td width="75px">&nbsp;</td>
                                            <td width="75px">&nbsp;</td>
                                            <td style=" text-align:center; font-size:20px;" width="100px">&nbsp;</td>
                                            <td style=" text-align:center; font-size:20px;" width="100px">&nbsp;</td>
                                            </tr>

                                            <tr>
                                            <td colspan="6"style="border:1px #000 solid; text-align:center; font-size:20px;" width="100px"><b> Dependencia Origen (Entrega)</b></td>
                                            </tr>

                                            <tr>
                                            <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Responsable Actual </td>
                                            <td colspan="2" style="border:1px #000 solid; text-align:center; font-size:20px;"> IT </td>
                                            </tr>

                                            <tr>
                                            <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Codigo de Empleado </td>
                                            <td colspan="2" style="border:1px #000 solid;  font-size:20px;">  </td>
                                            </tr>

                                            <tr>
                                            <td colspan="2" style="border:1px #000 solid;  font-size:20px;"> Area </td>
                                            <td colspan="4" style="border:1px #000 solid; text-align:center; font-size:20px;"> IT </td>
                                            </tr>

                                            <tr>
                                            <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Codigo centro de costos </td>
                                            <td colspan="2" style="border:1px #000 solid;  font-size:20px;">  </td>
                                            </tr>

                                            <tr>
                                            <td colspan="4" style="border:1px #000 solid;   font-size:20px;"> Nombre centro de costos </td>
                                            <td colspan="2" style="border:1px #000 solid;   font-size:20px;"> </td>
                                            </tr>

                                        </table>

                                        <table style=" text-align:center; width:100%; position:absolute; margin-top:15%;">
                                            <tr>
                                            <th colspan="4" style="border:1px #000 solid;"> INFORMACION BASICA DE LOS ACTIVOS FIJOS</th>
                                            </tr>

                                            <tr>
                                            <th style="border:1px #000 solid;"> No.</th>
                                            <th style="border:1px #000 solid;"> Descripcion de los activos</th>
                                            <th style="border:1px #000 solid;"> Codigo De Activo</th>
                                            <th style="border:1px #000 solid;"> Marca y/o No. de Serie del Activo</th>
                                            </tr>  
                                            
                                            <tr>
                                            <td style="border:1px #000 solid;">1</td>
                                            <td style="border:1px #000 solid;">'.$data->row()->Nombre_Marca.' '.$data->row()->nombre_Modelo.'</td>
                                            <td style="border:1px #000 solid;">'.$data->row()->activo_fijo.'</td>
                                            <td style="border:1px #000 solid;">'.$data->row()->imei_telefono.'</td>
                                            </tr>

                                            <tr>
                                            <td style="border:1px #000 solid;">2</td>
                                            <td style="border:1px #000 solid;"></td>
                                            <td style="border:1px #000 solid;"></td>
                                            <td style="border:1px #000 solid;"></td>
                                            </tr>

                                            <tr>
                                            <td style="border:1px #000 solid;">3</td>
                                            <td style="border:1px #000 solid;"></td>
                                            <td style="border:1px #000 solid;"></td>
                                            <td style="border:1px #000 solid;"></td>
                                            </tr>

                                        </table>

                                        <table style=" text-align:center; width:100%; position:absolute; margin-top:26%;">
                                            <tr>
                                            <td style="border:1px #000 solid;"><B>Observaciones</B></td>
                                            </tr>
                                            <tr>
                                            <td rowspan="10" style="border:1px #000 solid;"><B>SE HACE ENTREGA DE EQUIPO PARA USO DE FACTURACION MOVIL EN LINEA</B></td>
                                            </tr>

                                        </table>

                                        <table style="float:right; margin-top:35%; text-align:center;  width:600px; margin-left:42px;">
                                            
                                            
                                                <tr>
                                                <td colspan="3" style="border:1px #000 solid;"><b>Firmas Dependencia Origen(Entrega)</b></td>
                                                </tr>

                                                <tr>
                                                <td colspan="3"  height="70px" style="border:1px #000 solid;">&nbsp;</td>
                                                </tr>

                                                <tr>
                                                <td colspan="3" style="border:1px #000 solid;"><b>Firma y Sello responsable/dependencia actual</b></td>
                                                </tr>

                                                <tr>
                                                <td  colspan="3" height="70px" style="border:1px #000 solid;">&nbsp;</td>
                                                </tr>

                                                <tr>
                                                <td colspan="3" style="border:1px #000 solid;"><b>Firma y Sello de quien autorizo el traslado</b></td>
                                                </tr>

                                        </table>

                                        <table style="float:left; margin-top:35%;   width:620px; text-align:center; margin-right:90px;">
                                            <tr>
                                                <td colspan="2" style="border:1px #000 solid"><b>Firmas Dependencia Destino(Recibe)</b></td>
                                            </tr>
                                                <tr>
                                                <td colspan="2" height="70px" style="border:1px #000 solid">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="border:1px #000 solid"><b>Firma y Sello nuevo responsable/dependencia </b></td>
                                                </tr>
                                                <tr>
                                                <td height="70px" style="border:1px #000 solid">&nbsp;</td>
                                                <td height="70px" style="border:1px #000 solid">&nbsp;</td>
                                                </tr>
                                            <tr>
                                                <td style="border:1px #000 solid"><b>V.B Auxiliar activos</b></td>
                                                <td style="border:1px #000 solid"><b>Captura Activos Fijos</b></td>
                                            </tr>
                                        </table>

                                        <table style="border:1px #000 solid; margin-top:53%; width:100.5%; ">
                                            <tr>
                                            <th style="border:1px #000 solid; text-align:center;">Clausula de Compromiso</th>
                                            </tr>
                                            <tr>
                                                <td style="font-size:17px;">
                                                Como funcionario de Productos Alimenticios Bocadeli, S.A. de C.V. declaro que los activos relacionados en el presente documento están  bajo  
                                                mi  responsabilidad,  por  lo  cual  les  daré un uso adecuado al  desempeño de mis funciones y a la destinación institucional prevista para cada 
                                                uno de ellos. En consecuencia, serán asumidos por mí el daño o la pérdida de los mismos debidos a mi negligencia o incumplimiento de los instructivos relacionados con su uso y conservación.
                                                <br><br>
                                                Me comprometo  a  informar  oportunamente  al encargado de Activos Fijos sobre cualquier desplazamiento, traslado temporal o definitivo  de 
                                                dichos activos mediante la tramitación de los formatos respectivos, y sobre cualquier situación que ponga en inminente riesgo los bienes 
                                                relacionados. Dado que  la omisión  de estas disposiciones es considerada como falta grave por el  reglamento interno de trabajo,  asumo  las  
                                                consecuencias  económicas  que   conlleven  el  daño  o   la   pérdida  de  los  bienes mencionados si ocurren por mi  negligencia o 
                                                incumplimiento  de los instructivos  correspondientes, y en tal evento autorizo a Productos Alimenticios Bocadeli a efectuar el descuento 
                                                correspondiente al valor de reposición del bien afectado, deduciéndolo de mis salarios, prestaciones sociales o eventuales indemnizaciones a mi 
                                                favor.
                                                </td>
                                            </tr>
                                        </table>
                                        <br>
                                        <p style="font-size:16px; margin-top:-7px; text-align:center;"><b> Se requiere original y dos copias distribuidas asi : Original , contabilidad 1a. Copia auditoria interna 2.a Copia Archivo</b></p>


                                        
                                
                                        <div>'; 


                        //*********************************END, HOJA DE ENTREGA HAND HELD ***********************************//
                    }

                        //********************************* HOJA DE DESCUENTO ***********************************//
 
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
                                $output.=' , S.A DE C.V.</b>  CARGAR A MI CUENTA PERSONAL LA CANTIDAD DE <b>$'.number_format($data->row()->primera_ocacion,2).'</b> DOLARES DE LOS ESTADOS UNIDOS DE NORTE AMERICA.<BR><BR>
                                EN CONCEPTO DE DESCUENTO POR: <b>'.$data->row()->Nombre_Marca." ".$data->row()->nombre_Modelo."<BR> IMEI: ".$data->row()->imei_telefono.'</b><br><br>
                                CANTIDAD QUE ME COMPROMETO A CANCELAR EN LA SIGUIENTE FORMA:<BR><BR>
                                <b>DESCUENTO EN PLANILLA</b> 
                                <img width="5%;" style="margin-left:50px; margin-top:10px;" src="https://cdn4.iconfinder.com/data/icons/vote-check-marks/100/vote-24-512.png">
                                </p><p><b><center><hr></center></b></p><br><br>
                                A LA VEZ SOLICITO Y AUTORIZO AL DEPARTAMENTO DE COMPENSACIONES DE ESTA EMPRESA, 
                                PARA QUE DE MI SALARIO QUINCENAL RETENGA DICHO MONTO A PARTIR DE_____________________________, 
                                EN <B>5 CUOTAS QUINCENALES DE $'.number_format(($data->row()->primera_ocacion/5),2).' C/U</B><BR><BR> Y TAMBIÉN PARA QUE EN CASO DE MI RETIRO 
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
                                FIRMA:___________________________'
                            ;

                        //********************************* HOJA DE DESCUENTO ***********************************//  

                        //*********************************HOJA DE ENTREGA IMPRESORA ***********************************//
        
                        $output.='';
                        $output .=  '<div style="font-size:20px; page-break-before:always;">
                                <img width="125px"  height="125px" style="margin-top:10px;" src="https://fotos.subefotos.com/1caca0253f02cfa9f52b2d2264004f28o.png">
                                    
                                
                                    <h1 style="font-size:24px; position:fixed; text-align:center;">

                                                            PRODUCTOS ALIMENTICIOS BOCADELI S.A DE C.V<br>
                                                        Formato para movimiento definitivo de activos fijos <br>
                                                                    Formulario ACF-01
                                    </h1>
                                    
                                    Fecha : <b>'.$data->row()->fecha_registro.'</b>  
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        Correlativo No. <table style="float:right; margin-right:300px;">
                                                                                        <td width="150px"  style="border: 1px #000 solid; ">&nbsp;</td>
                                                                                        </table>
                                                                                        <br><br>
                                    <b>Tipos de movimiento activos</b>
                                    

                                    <table style="margin-left:150px; margin-top:-30px; font-size:15px;" >
                                        <tr>
                                            <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Alta por entrega del activo fijo o contratacion de personal</td>
                                        </tr>
                                        <tr>
                                            <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:20px;">Alta por liquidacion de proyectos o adquisicion de maquinaria (Debera completar anexo 1)</td>
                                        </tr>
                                        <tr>
                                            <td style="border:1px #000 solid; text-align:center;" width="50px">X</td ><td style="font-size:23px;"> Traslado interno(dentro de la misma empresa o area)</td>
                                        </tr>
                                        <tr>
                                            <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Traslado externo (a otra distribuidora) o venta del activo</td>
                                        </tr>
                                        <tr>
                                            <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Bajas de activo fijo dañado</td>
                                        </tr>
                                        <tr>
                                            <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Retiro de Activos Fijos por obsolescencia o donacion</td>
                                        </tr>
                                    </table><br>

                                    
                                    <table style="float:right;">
                                    
                                        <tr>
                                        <td></td>
                                            <td></td>
                                            <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>RUTA</b></td>
                                            <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>'.$data->row()->Nombre_Ruta.'</b></td>
                                            
                                        </tr>

                                        <tr>
                                            <td colspan="4" style="border:1px #000 solid; text-align:center; font-size:20px; width:500px;" ><b> Dependencia destino (Recibe)</b></td>
                                        </tr>

                                        <tr>
                                            
                                            <td style="border:1px #000 solid;  font-size:20px;"> Nuevo Responsable</td>
                                            <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->Nombre.'</td>
                                            
                                        </tr>

                                        <tr>
                                        
                                            <td style="border:1px #000 solid;  font-size:20px;"> Codigo de Empleado</td>
                                            <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->Carnet.'</td>
                                        </tr>

                                        <tr>
                                        
                                            <td style="border:1px #000 solid;  font-size:20px;"> Area </td>
                                            <td colspan="3" style="border:1px #000 solid;  font-size:20px;">  VENTAS </td>
                                        </tr>

                                        <tr>
                                    
                                            <td style="border:1px #000 solid;  font-size:20px;"> Codigo Centro de Costos</td>
                                            <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->cod_cc.'</td>
                                        </tr>

                                        <tr>
                                        
                                            <td style="border:1px #000 solid;  font-size:20px;">Nombre centro de costos</td>
                                            <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->descrip_cc.'</td>
                                        </tr>


                                    </table>

                                    
                                    <table style="float:left; margin-top:2px;">
                                        
                                        <tr>
                                        <td width="75px">&nbsp;</td>
                                        <td width="75px">&nbsp;</td>
                                        <td width="75px">&nbsp;</td>
                                        <td width="75px">&nbsp;</td>
                                        <td width="75px">&nbsp;</td>
                                        <td style=" text-align:center; font-size:20px;" width="100px">&nbsp;</td>
                                        <td style=" text-align:center; font-size:20px;" width="100px">&nbsp;</td>
                                        </tr>

                                        <tr>
                                        <td colspan="6"style="border:1px #000 solid; text-align:center; font-size:20px;" width="100px"><b> Dependencia Origen (Entrega)</b></td>
                                        </tr>

                                        <tr>
                                        <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Responsable Actual </td>
                                        <td colspan="2" style="border:1px #000 solid; text-align:center; font-size:20px;"> IT </td>
                                        </tr>

                                        <tr>
                                        <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Codigo de Empleado </td>
                                        <td colspan="2" style="border:1px #000 solid;  font-size:20px;">  </td>
                                        </tr>

                                        <tr>
                                        <td colspan="2" style="border:1px #000 solid;  font-size:20px;"> Area </td>
                                        <td colspan="4" style="border:1px #000 solid; text-align:center; font-size:20px;"> IT </td>
                                        </tr>

                                        <tr>
                                        <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Codigo centro de costos </td>
                                        <td colspan="2" style="border:1px #000 solid;  font-size:20px;">  </td>
                                        </tr>

                                        <tr>
                                        <td colspan="4" style="border:1px #000 solid;   font-size:20px;"> Nombre centro de costos </td>
                                        <td colspan="2" style="border:1px #000 solid;   font-size:20px;"> </td>
                                        </tr>

                                    </table>

                                    <table style=" text-align:center; width:100%; position:absolute; margin-top:15%;">
                                        <tr>
                                        <th colspan="4" style="border:1px #000 solid;"> INFORMACION BASICA DE LOS ACTIVOS FIJOS</th>
                                        </tr>

                                        <tr>
                                        <th style="border:1px #000 solid;"> No.</th>
                                        <th style="border:1px #000 solid;"> Descripcion de los activos</th>
                                        <th style="border:1px #000 solid;"> Codigo De Activo</th>
                                        <th style="border:1px #000 solid;"> Marca y/o No. de Serie del Activo</th>
                                        </tr>  
                                        
                                        <tr>
                                        <td style="border:1px #000 solid;">1</td>
                                        <td style="border:1px #000 solid;">'.$data->row()->nombre_marca.' '.$data->row()->nombre_modelo.' '.$data->row()->codigo_impresora.' </td>
                                        <td style="border:1px #000 solid;">'.$data->row()->activo_fijo.'</td>
                                        <td style="border:1px #000 solid;">'.$data->row()->n_serie.'</td>
                                        </tr>

                                        <tr>
                                        <td style="border:1px #000 solid;">2</td>
                                        <td style="border:1px #000 solid;"></td>
                                        <td style="border:1px #000 solid;"></td>
                                        <td style="border:1px #000 solid;"></td>
                                        </tr>

                                        <tr>
                                        <td style="border:1px #000 solid;">3</td>
                                        <td style="border:1px #000 solid;"></td>
                                        <td style="border:1px #000 solid;"></td>
                                        <td style="border:1px #000 solid;"></td>
                                        </tr>

                                    </table>

                                    <table style=" text-align:center; width:100%; position:absolute; margin-top:26%;">
                                        <tr>
                                        <td style="border:1px #000 solid;"><B>Observaciones</B></td>
                                        </tr>
                                        <tr>
                                        <td rowspan="10" style="border:1px #000 solid;"><B>SE HACE ENTREGA DE EQUIPO PARA USO DE FACTURACION MOVIL EN LINEA</B></td>
                                        </tr>

                                    </table>

                                    <table style="float:right; margin-top:35%; text-align:center;  width:600px; margin-left:42px;">
                                        
                                        
                                            <tr>
                                            <td colspan="3" style="border:1px #000 solid;"><b>Firmas Dependencia Origen(Entrega)</b></td>
                                            </tr>

                                            <tr>
                                            <td colspan="3"  height="70px" style="border:1px #000 solid;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                            <td colspan="3" style="border:1px #000 solid;"><b>Firma y Sello responsable/dependencia actual</b></td>
                                            </tr>

                                            <tr>
                                            <td  colspan="3" height="70px" style="border:1px #000 solid;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                            <td colspan="3" style="border:1px #000 solid;"><b>Firma y Sello de quien autorizo el traslado</b></td>
                                            </tr>

                                    </table>

                                    <table style="float:left; margin-top:35%;   width:620px; text-align:center; margin-right:90px;">
                                        <tr>
                                            <td colspan="2" style="border:1px #000 solid"><b>Firmas Dependencia Destino(Recibe)</b></td>
                                        </tr>
                                            <tr>
                                            <td colspan="2" height="70px" style="border:1px #000 solid">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="border:1px #000 solid"><b>Firma y Sello nuevo responsable/dependencia </b></td>
                                            </tr>
                                            <tr>
                                            <td height="70px" style="border:1px #000 solid">&nbsp;</td>
                                            <td height="70px" style="border:1px #000 solid">&nbsp;</td>
                                            </tr>
                                        <tr>
                                            <td style="border:1px #000 solid"><b>V.B Auxiliar activos</b></td>
                                            <td style="border:1px #000 solid"><b>Captura Activos Fijos</b></td>
                                        </tr>
                                    </table>

                                    <table style="border:1px #000 solid; margin-top:53%; width:100.5%; ">
                                        <tr>
                                        <th style="border:1px #000 solid; text-align:center;">Clausula de Compromiso</th>
                                        </tr>
                                        <tr>
                                            <td style="font-size:17px;">
                                            Como funcionario de Productos Alimenticios Bocadeli, S.A. de C.V. declaro que los activos relacionados en el presente documento están  bajo  
                                            mi  responsabilidad,  por  lo  cual  les  daré un uso adecuado al  desempeño de mis funciones y a la destinación institucional prevista para cada 
                                            uno de ellos. En consecuencia, serán asumidos por mí el daño o la pérdida de los mismos debidos a mi negligencia o incumplimiento de los instructivos relacionados con su uso y conservación.
                                            <br><br>
                                            Me comprometo  a  informar  oportunamente  al encargado de Activos Fijos sobre cualquier desplazamiento, traslado temporal o definitivo  de 
                                            dichos activos mediante la tramitación de los formatos respectivos, y sobre cualquier situación que ponga en inminente riesgo los bienes 
                                            relacionados. Dado que  la omisión  de estas disposiciones es considerada como falta grave por el  reglamento interno de trabajo,  asumo  las  
                                            consecuencias  económicas  que   conlleven  el  daño  o   la   pérdida  de  los  bienes mencionados si ocurren por mi  negligencia o 
                                            incumplimiento  de los instructivos  correspondientes, y en tal evento autorizo a Productos Alimenticios Bocadeli a efectuar el descuento 
                                            correspondiente al valor de reposición del bien afectado, deduciéndolo de mis salarios, prestaciones sociales o eventuales indemnizaciones a mi 
                                            favor.
                                            </td>
                                        </tr>
                                    </table>
                                    <br>
                                    <p style="font-size:16px; margin-top:-25px; text-align:center;"><b> Se requiere original y dos copias distribuidas asi : Original , contabilidad 1a. Copia auditoria interna 2.a Copia Archivo</b></p>


                                    
                            
                                    <div>'; 


                    //*********************************END, HOJA DE ENTREGA IMPRESORA ***********************************//
                

                    //********************************* HOJA DE DESCUENTO ***********************************//
                        
                        
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

                        $output.=' , S.A DE C.V.</b>  CARGAR A MI CUENTA PERSONAL LA CANTIDAD DE <b>$'.number_format($data->row()->primera_ocasion,2).'</b> DOLARES DE LOS ESTADOS UNIDOS DE NORTE AMERICA.<BR><BR>
                        EN CONCEPTO DE DESCUENTO POR: <b>'.$data->row()->nombre_marca." ".$data->row()->nombre_modelo."<BR> N SERIE: ".$data->row()->n_serie.'</b><br><br>
                        CANTIDAD QUE ME COMPROMETO A CANCELAR EN LA SIGUIENTE FORMA:<BR><BR>
                        <b>DESCUENTO EN PLANILLA</b> 
                        <img width="5%;" style="margin-left:50px; margin-top:10px;" src="https://cdn4.iconfinder.com/data/icons/vote-check-marks/100/vote-24-512.png">
                        </p><p><b><center><hr></center></b></p><br><br>
                        A LA VEZ SOLICITO Y AUTORIZO AL DEPARTAMENTO DE COMPENSACIONES DE ESTA EMPRESA, 
                        PARA QUE DE MI SALARIO QUINCENAL RETENGA DICHO MONTO A PARTIR DE_____________________________, 
                        EN <B>5 CUOTAS QUINCENALES DE $'.number_format(($data->row()->primera_ocasion/5),2).' C/U</B><BR><BR> Y TAMBIÉN PARA QUE EN CASO DE MI RETIRO 
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

                    // ********************************* HOJA DE DESCUENTO ***********************************// 
                    

                    // ********************************* HOJA DE ENTREGA DE AUTORIZACION ***********************************// 

                    $this->db->select('c.Nombre_Canal');
                    $this->db->from('Historial_Entregas as he');
                    $this->db->join('Empleados as  e','he.Id_Empleados=e.Id_Empleados');
                    $this->db->join('canal as  c','e.Id_Canal=c.Id_Canal');
                    $this->db->where('he.Id_PDF',$Id_PDF);
                    $MH=$this->db->get();

                    $this->db->select('img_mh');
                    $this->db->from('autorizaciones_mh');
                    $this->db->where('Id_telefono', $data->row()->Id_Telefono);
                    $MH_1 = $this->db->get('');

                    if($MH->row()->Nombre_Canal=='DETALLE'){
                        $output.='<div style="font-size:20px; page-break-before:always;">';
                        
                        $imagemh = 'https://043ea08.netsolhost.com/ConsolaSDV/Uploads/Archivos/CartaMH/cartamhdefault.png';

                        if ($MH_1->row()->img_mh == $imagemh) {
                          $output .= '<img width="100%" src="https://www.teknozeka.com/wp-content/uploads/2020/03/wp-header-logo-21.png">';
                        } else {
                          $output .= '<img width="100%" src="' . substr($MH_1->row()->img_mh, 42) . '">';
                        }
                
                        $output.='<br><br><br><p style="font-size:24px; margin-left:350px;">RUTA: <b>'.STRTOUPPER($data->row()->Nombre_Ruta).' </b><br><br>
                        EMPLEADO:  <b>'.STRTOUPPER($data->row()->Nombre).'</b><br><br>
                        CARNET:  <b>'.STRTOUPPER($data->row()->Carnet).'</b><br><br>
                        MOTIVO ENTREGA:  <b>'.STRTOUPPER($data->row()->Motivo_Traspaso).'</b><br><br>
                        FECHA ENTREGA:  <b>'.STRTOUPPER($data->row()->fecha_registro).'</b><br><br><br><br><br>
                        FIRMA:<b>__________________________________</b></p>
                    </div>
                    ';
                    }
                   


            return $output;

        }else{
            return $output="<h1 style='color:red; text_align:center;'>EL PROCESO DE ENTREGA DE EQUIPO NO SE HA REALIZADO CORRECTAMENTE </h1>
            
            <h3>Pasos a seguir</h3>
            <div style='margin-left:10%'>
            <h5>Registro de marca de telefono</h5>
            <h5>Registro de modelo de telefono</h5>
            <h5>Registro de deducible(Contactarse con el administrador)</h5>
            <h5>Registro de telefono o Hand Held</h5>
            <h5>Registro de Autorizacion MH si es para rutas de detalle</h5>
            <h5>Entrega de telefono o Hand Held</h5>
            <h5>Baja o alta De serie</h5>
            </div>
            <h5>Si a realizado todos los pasos anteriores y aun le sigue mostrando esta hoja Contactarse con el administrador</h5>";

            
            
            
        }
      
    }
  
    public function fetch_impulsadora($Carnet)
    {
        $Impulsadora="IMPULSADORA";

        $this->db->where('Carnet', $Carnet);
        $this->db->where('Estado', 1);
        $this->db->where('Cargo',$Impulsadora);
        $data = $this->db->get('Empleados');



        $Datos = $data->result();

            if(empty($Datos)){

                return array();
            }else{
                return $Datos;
            } 

    }

    


    public function Insert_Historial_Impulso($param){

        $fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
        $nuevafecha = date ( 'Y-m-d_H:i:s' , $nuevafecha );

        $this->db->select('Id_Empleados,Id_Distribuidora,Id_Canal,Id_Ruta');
        $this->db->from('Empleados');
        $this->db->where('Carnet',$param['Carnetbaja']);
        $this->db->where('Cargo','IMPULSADORA');
        $this->db->where('Estado','1');

        $Baja = $this->db->get();


        $this->db->select('Id_Empleados,Id_Distribuidora,Id_Canal,Id_Ruta');
        $this->db->from('Empleados');
        $this->db->where('Carnet',$param['CarnetAlta']);
        $this->db->where('Cargo','IMPULSADORA');
        $this->db->where('Estado','1');
   

        $Alta= $this->db->get();

        $this->db->select('Id_telefono');
        $this->db->from('bitacora_entrega_celular_noautorizado');
        $this->db->where('Id_Empleados',$Baja->row()->Id_Empleados);
        $this->db->where('Estado','1');
      

        $Cell= $this->db->get();


            $campos = array(
                'Id_Empleados' => $Alta->row()->Id_Empleados,
    
            );

            $this->db->where('Id_Empleados', $Baja->row()->Id_Empleados);
            $this->db->where('estado', 1);
            $this->db->update('bitacora_entrega_celular_noautorizado',$campos);



            $campos1 = array(
                'Estado' => 0,
    
            );
            $this->db->where('Id_Empleados', $Alta->row()->Id_Empleados);
            $this->db->where('estado', 1);
            $this->db->update('Historial_Entregas',$campos1);


            if($Cell->num_rows()>0 and $Alta->num_rows()>0 ){

                $Id_Historial=0;
                $Motivo=$param['Motivo'];
                $Fecha=$nuevafecha;
                $Estado=1;
                $PB=0;
                $VT=$param['VT'];
                $EP=$param['EP'];
                $EI=0;
                $CT=$param['CT'];
                $CI=0;
                $Observacion=$param['Observacion'];
                $Id_Distribuidora=$Alta->row()->Id_Distribuidora;
                $Id_Canal=$Alta->row()->Id_Canal;
                $Id_Ruta=$Alta->row()->Id_Ruta;
                $Id_Empleados=$Alta->row()->Id_Empleados;
                $Id_Telefono=$Cell->row()->Id_telefono;
                $Id_Impresora=999;
                $Id_u_sdv=$this->session->userdata('Id_u_sdv');
                $Id_PDF= $nuevafecha."_".$Alta->row()->Id_Empleados;


                $DatosImpulso = array(
                    'Id_historial' => $Id_Historial,
                    'Motivo_Traspaso' => $Motivo,
                    'fecha_registro' =>  $Fecha,
                    'estado' => $Estado,
                    'PB' =>  $PB,
                    'VT' => $VT,
                    'EP' => $EP,
                    'EI' => $EI,
                    'CT' => $CT,
                    'CI' => $CI,
                    'Observacion' => $Observacion,
                    'Id_Distribuidora' => $Id_Distribuidora,
                    'Id_Canal' => $Id_Canal,
                    'Id_Ruta' => $Id_Ruta,
                    'Id_Empleados' =>  $Id_Empleados,
                    'Id_telefono' => $Id_Telefono,
                    'Id_Impresoras' => $Id_Impresora,
                    'Id_u_sdv' => $Id_u_sdv,
                    'Id_PDF' =>$Id_PDF,
                                
                );
            
               
     
                
                return $this->db->insert('Historial_Entregas',$DatosImpulso);

            }else{
                return 0;
            }
 
    }

    
   


}
