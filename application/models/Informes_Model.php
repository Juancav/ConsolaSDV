<?php defined('BASEPATH') OR exit('No direct script access allowed');


require  'vendor/autoload.php';
require_once 'vendor/box/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

class Informes_Model extends CI_Model {

	function __construct(){
		parent::__construct();
       $this->load->database();

    }
    
    function Actualizar_Informe($data){

        $arr_data_venta=[];
        $FilasTotal=0;
        $filas=10001;

      
        // Saber si existe registro de este informe
        $this->db->where('nombre_informe',$data['nombre_informe']);
        $query=$this->db->get('Informes');
        $Count=$query->num_rows();

        if($Count>0){
            $campos=array(
                'fecha_actualizacion'=>$data['fecha_actualizacion'],
                'Id_u_sdv'=> $this->session->userdata('Id_u_sdv')
            );
            $this->db->where('nombre_informe',$data['nombre_informe']);
            $this->db->update('Informes',$campos);
          
        }else{

            $this->db->insert('Informes',$data);

        }

        
  
        $reader = ReaderEntityFactory::createReaderFromFile('Uploads/Informes/'.$data['nombre_informe'].'.csv');  
        $reader->setShouldFormatDates(true); // Permite recibir del excel en formato fecha
        $reader->open('Uploads/Informes/'.$data['nombre_informe'].'.csv');

       
            foreach ($reader->getSheetIterator() as $sheet) {  


                

                foreach ($sheet->getRowIterator() as $rownumber=>$row) {

       
                    if($rownumber>1){

                        $cells = $row->getCells();
                       
                        $Ruta = $cells[0];
                        $Codigo =$cells[1];
                        $Cliente =$cells[2];
                        $Fecha =date('Y-m-d',strtotime($cells[3])); 
                        $No_Docto =$cells[4];
                        $Serie_Docto=$cells[5];
                        $Estado =$cells[6];
                        $Vendedor=$cells[7];
                        $Total =$cells[8];
                        $Condicion =$cells[9];
                        $Nombre_Vendedor =$cells[10];
                        $FechaServer =date('Y-m-d H:i:s',strtotime($cells[11])); 
                        $FechaMovil = date('Y-m-d H:i:s',strtotime($cells[12]));
                        $Latitud =$cells[13];
                        $Longitud =$cells[14];
                        $Cantidad =$cells[15];
                        $CodigoProducto =$cells[16];
                        $Descripcion=$cells[17];
                        $Precio =$cells[18];
                        $Venta =$cells[19];
                        $Familia=$cells[20];
                        $SubFamila =$cells[21];
                        $SubSubFamilia =$cells[22];
                        $Categoria =$cells[23];
                        $Canal =$cells[24];
                        $Grupo =$cells[25];
                        $Distribuidora =$cells[26];
                        $División =$cells[27];
                        $Pais =$cells[28];
                    

                
                        
                     $data_venta=[
                                'Id_Inf_venta'=>0,
                                'Ruta'=>$Ruta ,
                                'Codigo'=>$Codigo, 
                                'Cliente'=>$Cliente, 
                                'Fecha'=>  $Fecha , 
                                'No_Docto'=>$No_Docto, 
                                'Serie_Docto'=>$Serie_Docto,
                                'Estado'=>$Estado, 
                                'Vendedor'=>$Vendedor,
                                'Total'=>$Total, 
                                'Condicion'=>$Condicion, 
                                'Nombre_Vendedor'=>$Nombre_Vendedor,
                                'FechaServer'=>$FechaServer, 
                                'FechaMovil'=> $FechaMovil,
                                'Latitud'=>$Latitud,	
                                'Longitud'=>$Longitud, 
                                'Cantidad'=>$Cantidad, 
                                'CodigoProducto'=>$CodigoProducto, 
                                'Descripcion'=>$Descripcion,
                                'Precio'=>$Precio ,
                                'Venta'=>$Venta, 
                                'Familia'=>$Familia,
                                'SubFamila'=>$SubFamila, 
                                'SubSubFamilia'=>$SubSubFamilia,
                                'Categoria'=>$Categoria,
                                'Canal'=>$Canal, 
                                'Grupo'=>$Grupo,
                                'Distribuidora'=>$Distribuidora,
                                'División'=>$División,
                                'Pais'=>$Pais 
                                 ];

                            

                     $arr_data_venta[]=$data_venta;  

                     if($rownumber==$filas){

                        $this->db->insert_batch($data['nombre_informe'], $arr_data_venta);
                        
                        $filas=$filas+10000;
                        unset($data_venta,$arr_data_venta);
                        
                     }


                    }
                                       
                    
                }
                

            }
            
            
            $this->db->insert_batch($data['nombre_informe'], $arr_data_venta);
            
            $reader->close();

            if($this->db->affected_rows() > 0 ){
                return true;
            }else{
                return false;
            }

    }


    public function Fecha_Informe(){

        $this->db->select('fecha_actualizacion');
        $this->db->from('Informes');
        $this->db->where('nombre_informe','VENTA_DIARIA');
        $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        } 
    }


    public function VentaXDia(){

        $query='SELECT DATE_FORMAT(Fecha,"%Y-%d-%m") as Fecha, round(sum(total),2) as Total from VENTA_DIARIA group by Fecha;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function VentaXCanal(){

        $query='SELECT Canal,
        IFNULL(round(sum(case when Distribuidora="CHALATENANGO" THEN TOTAL END ),2),0) AS "CH" ,
        IFNULL(round(sum(case when Distribuidora="SAN SALVADOR" THEN TOTAL END ),2),0) AS "SS" ,
        IFNULL(round(sum(case when Distribuidora="SAN MIGUEL" THEN TOTAL END ),2),0) AS "SM" ,
        IFNULL(round(sum(case when Distribuidora="SANTA ANA" THEN TOTAL END ),2),0) AS "SA" ,
        IFNULL(round(sum(case when Distribuidora="SONSONATE" THEN TOTAL END ),2),0) AS "SO"
        from Venta_diaria group by Canal;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function VentaXCCategoria(){

        $query='SELECT Categoria,
        IFNULL(round(sum(case when Distribuidora="CHALATENANGO" THEN TOTAL END ),2),0) AS "CH" ,
        IFNULL(round(sum(case when Distribuidora="SAN SALVADOR" THEN TOTAL END ),2),0) AS "SS" ,
        IFNULL(round(sum(case when Distribuidora="SAN MIGUEL" THEN TOTAL END ),2),0) AS "SM" ,
        IFNULL(round(sum(case when Distribuidora="SANTA ANA" THEN TOTAL END ),2),0) AS "SA" ,
        IFNULL(round(sum(case when Distribuidora="SONSONATE" THEN TOTAL END ),2),0) AS "SO"
        from Venta_diaria group by Categoria;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function VentaxGrupo_Distribuidora(){

        $query='SELECT Distribuidora,
        IFNULL(round(sum(case when Grupo="GRUPO 01" THEN TOTAL END ),2),0) AS "G1" ,
        IFNULL(round(sum(case when Grupo="GRUPO 02" THEN TOTAL END ),2),0) AS "G2" ,
        IFNULL(round(sum(case when Grupo="GRUPO 03" THEN TOTAL END ),2),0) AS "G3" ,
        IFNULL(round(sum(case when Grupo="GRUPO 04" THEN TOTAL END ),2),0) AS "G4" ,
        IFNULL(round(sum(case when Grupo="GRUPO 05" THEN TOTAL END ),2),0) AS "G5",
        IFNULL(round(sum(case when Grupo="GRUPO 06" THEN TOTAL END ),2),0) AS "G6" ,
        IFNULL(round(sum(case when Grupo="GRUPO 07" THEN TOTAL END ),2),0) AS "G7" ,
        IFNULL(round(sum(case when Grupo="GRUPO 08" THEN TOTAL END ),2),0) AS "G8" ,
        IFNULL(round(sum(case when Grupo="GRUPO 09" THEN TOTAL END ),2),0) AS "G9" ,
        IFNULL(round(sum(case when Grupo="GRUPO 10" THEN TOTAL END ),2),0) AS "G10" 
        from Venta_diaria group by Distribuidora;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function Top_Productos(){

        $query=' SELECT Descripcion , round(sum(total),2) as Total 
        from VENTA_DIARIA
        group by Descripcion 
        order by Total desc
        limit 10 ;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function VentaFamilia(){

        $query=' SELECT TRIM(Familia) As name , round(sum(total),2) as value 
        from VENTA_DIARIA
        group by name 
        order by Total desc
        ;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function VentaSubFamilia(){

        $query='  SELECT TRIM(SubFamila) As name , round(sum(total),2) as value 
        from VENTA_DIARIA
        group by name 
        order by Total desc;
        ;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }


    public function VentaDistribuidora(){

        $query='SELECT Distribuidora,round(sum(total),2) as Total 
                from VENTA_DIARIA
                group by Distribuidora 
                order by Total desc;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    function Agregar_clientes($data){

        $arr_data_clientes=[];
        $FilasTotal=0;
        $filas=10001;

      
        // Saber si existe registro de este informe
        $this->db->where('nombre_informe',$data['nombre_informe']);
        $query=$this->db->get('Informes');
        $Count=$query->num_rows();

        if($Count>0){
            $campos=array(
                'fecha_actualizacion'=>$data['fecha_actualizacion'],
                'Id_u_sdv'=> $this->session->userdata('Id_u_sdv')
            );
            $this->db->where('nombre_informe',$data['nombre_informe']);
            $this->db->update('Informes',$campos);
          
        }else{

            $this->db->insert('Informes',$data);

        }

        
  
        $reader = ReaderEntityFactory::createReaderFromFile('Uploads/Informes/'.$data['nombre_informe'].'.csv');  
        $reader->setShouldFormatDates(true); // Permite recibir del excel en formato fecha
        $reader->open('Uploads/Informes/'.$data['nombre_informe'].'.csv');

       
            foreach ($reader->getSheetIterator() as $sheet) {  


                

                foreach ($sheet->getRowIterator() as $rownumber=>$row) {

     
                    if($rownumber>1){

                        $cells = $row->getCells();
                       
                        $Codigo = $cells[0];
                        $Nombre =$cells[1];
                        $Direccion =$cells[2];
                        $Id_Municipio =$cells[3]; 
                        $Telefono =$cells[4];
                        $Contacto=$cells[5];
                        $Propietario =$cells[6];
                        $Id_Tfacturacion=$cells[7];
                        $Dui =$cells[8];
                        $Numero_Registro =$cells[9];
                        $Nit =$cells[10];
                        $Id_Condicionc =$cells[11]; 
                        $Dia_Cobro = $cells[12];
                        $Monto_Credito =$cells[13];
                        $Id_Tcompra =$cells[14];
                        $Id_Tcontribuyente =$cells[15];
                        $Cantidad_Exhibidor =$cells[16];
                        $Exhibiror_Uno=$cells[17];
                        $Exhibiror_Dos =$cells[18];
                        $Exhibiror_Tres =$cells[19];
                        $Orden_Visita=$cells[20];
                        $Dias =$cells[21];
                        $RefUno =$cells[22];
                        $Latitud =$cells[23];
                        $Longitud =$cells[24];
                        $Id_Usuarios =$cells[25];
                        $Id_Ref =$cells[26];
                        $Id_Gironegocio =$cells[27];
                        $Foto_Negocio =$cells[28];
                        $Foto_Exhibidor=$cells[29];
                        $CompraS_B=$cells[30];
                        $CompraS_D=$cells[31];
                        $CompraS_Y=$cells[32];
                        $CompraS_F=$cells[33];
                        $Fecha_Ingreso= date('Y-m-d',strtotime($cells[34])); 
                        $Estado=$cells[35];
                        $Fecha_Resolucion=date('Y-m-d',strtotime($cells[36])); 
                        $estado_w=$cells[37];
                        $Fecha_Procesado=date('Y-m-d',strtotime($cells[38]));
                        $Editado=$cells[39];
                        $Comentario_E=$cells[40];
                        $Estado_Analista=$cells[41];
                        $Fecha_Resolucion_R=date('Y-m-d',strtotime($cells[42]));
                        $Fecha_AprobacionA=date('Y-m-d',strtotime($cells[43]));
                        $quienresolucion=$cells[44];
                        $EstadoDescarga=$cells[45];
                    

                
                        
                     $data_clientes=[
                        'Id_Cliente'=> 0,
                        'Codigo'=>$Codigo,
                        'Nombre'=>$Nombre,
                        'Direccion'=>$Direccion,
                        'Id_Municipio'=>$Id_Municipio,
                        'Telefono'=>$Telefono,
                        'Contacto'=>$Contacto,
                        'Propietario'=>$Propietario,
                        'Id_Tfacturacion'=>$Id_Tfacturacion,
                        'Dui'=>$Dui,
                        'Numero_Registro'=>$Numero_Registro,
                        'Nit'=>$Nit,
                        'Id_Condicionc'=>$Id_Condicionc,
                        'Dia_Cobro'=>$Dia_Cobro,
                        'Monto_Credito'=> $Monto_Credito,
                        'Id_Tcompra'=> $Id_Tcompra,
                        'Id_Tcontribuyente'=> $Id_Tcontribuyente,
                        'Cantidad_Exhibidor'=> $Cantidad_Exhibidor,
                        'Exhibiror_Uno'=>$Exhibiror_Uno,
                        'Exhibiror_Dos'=>$Exhibiror_Dos,
                        'Exhibiror_Tres'=>$Exhibiror_Tres,
                        'Orden_Visita'=> $Orden_Visita,
                        'Dias'=> $Dias,
                        'RefUno'=> $RefUno,
                        'Latitud'=> $Latitud,
                        'Longitud'=> $Longitud,
                        'Id_Usuarios'=> $Id_Usuarios,
                        'Id_Ref'=> $Id_Ref,
                        'Id_Gironegocio'=> $Id_Gironegocio,
                        'Foto_Negocio'=> $Foto_Negocio,
                        'Foto_Exhibidor'=> $Foto_Exhibidor,
                        'CompraS_B'=> $CompraS_B,
                        'CompraS_D'=> $CompraS_D,
                        'CompraS_Y'=> $CompraS_Y,
                        'CompraS_F'=> $CompraS_F,
                        'Fecha_Ingreso'=> $Fecha_Ingreso,
                        'Estado'=> $Estado,
                        'Fecha_Resolucion'=> $Fecha_Resolucion,
                        'estado_w'=>$estado_w,
                        'Fecha_Procesado'=> $Fecha_Procesado,
                        'Editado'=> $Editado,
                        'Comentario_E'=> $Comentario_E,
                        'Estado_Analista'=> $Estado_Analista,
                        'Fecha_Resolucion_R'=> $Fecha_Resolucion_R,
                        'Fecha_AprobacionA'=> $Fecha_AprobacionA,
                        'quienresolucion'=> $quienresolucion,
                        'EstadoDescarga'=> $EstadoDescarga
                                 ];

                            

                     $arr_data_clientes[]=$data_clientes;  

                     if($rownumber==$filas){

                        $this->db->insert_batch('clientes', $arr_data_clientes);
                        
                        $filas=$filas+10000;
                        unset($data_clientes,$arr_data_clientes);
                        
                     }


                    }
                                       
                    
                }
                

            }
            
            
            $this->db->insert_batch('clientes', $arr_data_clientes);
            
            $reader->close();

            if($this->db->affected_rows() > 0 ){
                return true;
            }else{
                return false;
            }

    }

    
}
