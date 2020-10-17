<?php defined('BASEPATH') OR exit('No direct script access allowed');


require  'vendor/autoload.php';
require_once 'vendor/box/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Writer\Common\Creator\WriterEntityFactory;
use Box\Spout\Common\Entity\Row;
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
                        set_time_limit (0);
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

        $query='SELECT DATE_FORMAT(Fecha,"%Y-%m-%d") as Fecha, round(sum(total),2) as Total from VENTA_DIARIA group by Fecha;';

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
        from VENTA_DIARIA group by Canal;';

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
        from VENTA_DIARIA group by Categoria;';

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
        from VENTA_DIARIA group by Distribuidora;';

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

        $hoy = date("Y-m-d H:i:s");
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
                        $Fecha_Ingreso= $hoy; 
                        $Estado=$cells[35];
                        $Fecha_Resolucion=$hoy; 
                        $estado_w=$cells[37];
                        $Fecha_Procesado=$hoy;
                        $Editado=$cells[39];
                        $Comentario_E=$cells[40];
                        $Estado_Analista=$cells[41];
                        $Fecha_Resolucion_R=$hoy;
                        $Fecha_AprobacionA=$hoy;
                        $quienresolucion=$cells[44];
                        $EstadoDescarga=$cells[45];
                        $ActuExhibidor=$cells[46];
                        $ActuClientes=$cells[46];
                    

                
                        
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
                        'EstadoDescarga'=> $EstadoDescarga,
                        'ActuExhibidor'=> $ActuExhibidor,
                        'ActuClientes'=> $ActuClientes
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

    function addExhibidores($data){

        $this->db->insert('Informes',$data);

        
        $arr_data_exhibidores=[];
        $FilasTotal=0;
        $filas=10001;
    
        $reader = ReaderEntityFactory::createReaderFromFile('Uploads/Informes/'.$data['nombre_informe'].'.csv');  
        $reader->setShouldFormatDates(true); // Permite recibir del excel en formato fecha
        $reader->open('Uploads/Informes/'.$data['nombre_informe'].'.csv');

       
            foreach ($reader->getSheetIterator() as $sheet) {  


                

                foreach ($sheet->getRowIterator() as $rownumber=>$row) {

     
                    if($rownumber>1){

                        $cells = $row->getCells();
                       
                        
                        $Id_Cliente =$cells[1];
                        $Id_Exhibidores =$cells[3]; 
                        $Cantidad =$cells[4];
                        $Fecha_Facturacion=$cells[5];

                     $data_exhibidores=[
                        'Id_Cliente'=> $Id_Cliente,
                        'Id_Exhibidores'=>$Id_Exhibidores,
                        'Cantidad'=>$Cantidad,
                        'Fecha_Facturacion'=>$Fecha_Facturacion
                                 ];

                            

                     $arr_data_exhibidores[]=$data_exhibidores;  

                     if($rownumber==$filas){

                        $this->db->insert_batch('clientes_exhibidor', $arr_data_exhibidores);
                        
                        $filas=$filas+10000;
                      
                        unset($data_exhibidores,$arr_data_exhibidores);
                        
                     }


                    }
                                       
                    
                }
                

            }
            
            
            $this->db->insert_batch('clientes_exhibidor', $arr_data_exhibidores);
            
            $reader->close();

            if($this->db->affected_rows() > 0 ){
                return true;
            }else{
                return false;
            }

    }

    public function AvanceExhibidores(){

        $query1='SELECT IFNULL(ActuExhibidor,"NO")  AS "ESTATUS",
        IFNULL(round(count(case when P.Id_Pais=1 THEN P.Id_Pais END ),2),0) AS "SV" ,
        IFNULL(round(count(case when P.Id_Pais=2 THEN P.Id_Pais END ),2),0) AS "GT",
        IFNULL(round(count(case when P.Id_Pais=3 THEN P.Id_Pais END ),2),0) AS "HN"  
        from clientes as c
        inner join usuarios as u on c.id_usuarios=u.id_usuarios 
        inner join rutas as r on u.Id_ruta=r.Id_ruta 
        inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
        inner join pais as P on d.Id_Pais=P.Id_Pais 
        where c.ActuExhibidor="NO" and  c.estado_w=1 and c.Id_Cliente IN (
                        SELECT MIN(Id_Cliente) 
                          FROM clientes 
                          WHERE Estado = "P"
                          GROUP BY  Id_Usuarios,Codigo
                      )  /* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/
        group by ActuExhibidor';

        $query2 ='SELECT IFNULL(ActuExhibidor,"SI") "ESTATUS",
        IFNULL(round(count(case when P.Id_Pais=1 THEN P.Id_Pais END ),2),0) AS "SV1" ,
        IFNULL(round(count(case when P.Id_Pais=2 THEN P.Id_Pais END ),2),0) AS "GT1",
        IFNULL(round(count(case when P.Id_Pais=3 THEN P.Id_Pais END ),2),0) AS "HN1"  
        from clientes as c
        inner join usuarios as u on c.id_usuarios=u.id_usuarios 
        inner join rutas as r on u.Id_ruta=r.Id_ruta
        inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
        inner join pais as P on d.Id_Pais=P.Id_Pais 
        where c.ActuExhibidor="SI" and c.Id_Cliente IN (
                        SELECT MIN(Id_Cliente) 
                          FROM clientes 
                          WHERE Estado = "P"
                          GROUP BY  Id_Usuarios,Codigo
                      )  
        group by ActuExhibidor /* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/;';

        $resultados = $this->db->query($query1);
        $resultados1 = $this->db->query($query2);

        $Si=$resultados->result();
        $No=$resultados1->result();
       
        
      
        if(empty($resultados) or empty($resultados1)){

            return '';
        }else{
            return array($Si,$No);
        } 
    }

    public function ClientesExhibidorXPais(){

        $query1='SELECT   
        count(distinct case when ae.Id_cliente and p.id_pais=1 and ae.TieneExhibidor=0 then ae.id_cliente end) as SV,
        count(distinct case when ae.Id_cliente and p.id_pais=2 and ae.TieneExhibidor=0 then ae.id_cliente end) as GT,
        count(distinct case when ae.Id_cliente and p.id_pais=3 and ae.TieneExhibidor=0 then ae.id_cliente end) as HN
        from actualizacion_exhibidores as ae
        inner join clientes as c on ae.Id_cliente=c.Id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora=d.Id_distribuidora
        inner join pais as p on d.id_pais=p.Id_pais
        ';

        $query2 ='SELECT   
        count(distinct case when ae.Id_cliente and p.id_pais=1 and ae.TieneExhibidor=1 then ae.id_cliente end) as SV1,
        count(distinct case when ae.Id_cliente and p.id_pais=2 and ae.TieneExhibidor=1 then ae.id_cliente end) as GT1,
        count(distinct case when ae.Id_cliente and p.id_pais=3 and ae.TieneExhibidor=1 then ae.id_cliente end) as HN1
        from actualizacion_exhibidores as ae
        inner join clientes as c on ae.Id_cliente=c.Id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora=d.Id_distribuidora
        inner join pais as p on d.id_pais=p.Id_pais;
        ';

        $resultados = $this->db->query($query1);
        $resultados1 = $this->db->query($query2);

        $Si=$resultados->result();
        $No=$resultados1->result();
       
        
      
        if(empty($resultados) or empty($resultados1)){

            return '';
        }else{
            return array($Si,$No);
        } 
    }

    public function PosicionExhibidor(){

        $query='SELECT p.Nombre_pais AS PAIS, 
        count( case when ae.RespuestaObservacion=1 then ae.RespuestaObservacion end) as "Data1",
        count( case when ae.RespuestaObservacion=2 then ae.RespuestaObservacion end) as "Data2",
        count( case when ae.RespuestaObservacion=3 then ae.RespuestaObservacion end) as "Data3",
        count( case when ae.RespuestaObservacion=4 then ae.RespuestaObservacion end) as "Data4",
        count( case when ae.RespuestaObservacion=5 then ae.RespuestaObservacion end) as "Data5",
        count( case when ae.RespuestaObservacion=6 then ae.RespuestaObservacion end) as "Data6"
        from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where c.estado_w=1
        group by p.Nombre_pais;
       
        ;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function Totalclientesconysinexhibidor(){

        $query='SELECT p.Nombre_pais,
        count(case when fae.Con="NO" then fae.Con end ) as "NoExh",
        count(case when fae.Con="SI" then fae.Con end ) as "SiExh"
        FROM  fotos_actualizacion_exh as fae 
        inner join clientes as c on fae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where c.estado_w=1
        group by p.Nombre_pais';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function ClientesCensadosXDistribuidora(){

        $query='SELECT d.Division as Distribuidora , 
        count(case when c.Actuexhibidor="SI" then c.ActuExhibidor end ) as Actualizado , 
        count(case when c.Actuexhibidor="NO" then c.ActuExhibidor end ) as NoActualizado FROM clientes as c 
        inner join usuarios as u on c.id_usuarios=u.id_usuarios 
        inner join rutas as r on u.id_ruta= r.id_ruta
        inner join distribuidora as d on r.id_distribuidora = d.id_distribuidora
        where c.estado_w=1
        group by d.Division;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function SumatoriaExhibidor(){

        $query='SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
        inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
        where e.NombreExhibidor!="SIN EXHIBIDOR" and ae.TipoActualizacion!=2
        group by NombreExhibidor 
        order by Total asc';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function ClientesCensadosNDE_NSET_EC(){

        $query='SELECT p.Nombre_pais as PAIS,
		count( case when ae.RespuestaObservacion=70 then ae.RespuestaObservacion end) as "NDE",
        count( case when ae.RespuestaObservacion=71 then ae.RespuestaObservacion end) as "NSET",
        count( case when ae.RespuestaObservacion=72 then ae.RespuestaObservacion end) as "EC"
        from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where c.estado_w=1
        group by p.Nombre_pais;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function ClientesCensadosXDistribuidoraChange($parametro){

        $query='SELECT '.$parametro.' as Distribuidora , 
        count(case when c.Actuexhibidor="SI" then c.ActuExhibidor end ) as Actualizado , 
        count(case when c.Actuexhibidor="NO" then c.ActuExhibidor end ) as NoActualizado FROM clientes as c 
        inner join usuarios as u on c.id_usuarios=u.id_usuarios 
        inner join rutas as r on u.id_ruta= r.id_ruta
        inner join distribuidora as d on r.id_distribuidora = d.id_distribuidora
        where c.estado_w=1
        group by '.$parametro.';';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function ClientesCensadosNDE_NSET_ECxDivisionchange($parametro){

        $query='SELECT '.$parametro.' as PAIS,
		count( case when ae.RespuestaObservacion=70 then ae.RespuestaObservacion end) as "NDE",
        count( case when ae.RespuestaObservacion=71 then ae.RespuestaObservacion end) as "NSET",
        count( case when ae.RespuestaObservacion=72 then ae.RespuestaObservacion end) as "EC"
        from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where c.estado_w=1
        group by '.$parametro.';';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return '';
        }else{
            return $resultados;
        } 
    }

    public function PosicionExhibidorChange($parametro){

        $query='SELECT '.$parametro.' AS PAIS, 
        count( case when ae.RespuestaObservacion=1 then ae.RespuestaObservacion end) as "Data1",
        count( case when ae.RespuestaObservacion=2 then ae.RespuestaObservacion end) as "Data2",
        count( case when ae.RespuestaObservacion=3 then ae.RespuestaObservacion end) as "Data3",
        count( case when ae.RespuestaObservacion=4 then ae.RespuestaObservacion end) as "Data4",
        count( case when ae.RespuestaObservacion=5 then ae.RespuestaObservacion end) as "Data5",
        count( case when ae.RespuestaObservacion=6 then ae.RespuestaObservacion end) as "Data6"
        from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where c.estado_w=1
        group by '.$parametro.';
        ;';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }


    public function SumatoriaExhibidorfiltro($parametro){

        $query='SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
        inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
        inner join clientes as c on ae.Id_cliente = c.Id_cliente
        inner join usuarios as u on c.id_usuarios=u.id_usuarios
        inner join rutas as r on u.id_ruta=r.id_ruta
        inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais= p.id_pais
        where e.NombreExhibidor!="SIN EXHIBIDOR" and ae.TipoActualizacion!=2 and p.id_pais='.$parametro.'
        group by NombreExhibidor 
        order by Total asc';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function SumatoriaExhibidorfiltroxDivision($parametro){

        $query='SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
        inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
        inner join clientes as c on ae.Id_cliente = c.Id_cliente
        inner join usuarios as u on c.id_usuarios=u.id_usuarios
        inner join rutas as r on u.id_ruta=r.id_ruta
        inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais= p.id_pais
        where e.NombreExhibidor!="SIN EXHIBIDOR" and ae.TipoActualizacion!=2 and d.Division="'.$parametro.'"
        group by NombreExhibidor 
        order by Total asc';

        $resultados = $this->db->query($query);
        return $resultados->result();

      
        if(empty($resultados)){

            return array();
        }else{
            return $resultados;
        } 
    }

    public function GenerarInformeCensoexhibidores() {
    
        $resultados='SELECT 
        p.Nombre_Pais,
        d.Nombre_Distribuidora,
        d.Division,
        r.Nombre_Ruta
        ,c.Codigo, 
        c.Nombre,
        c.Telefono,
        c.Direccion ,
        ae.Id_Exhibidores,
        e.SKU_Exhibidor ,
        e.NombreExhibidor,
        ae.Cantidad,
        ae.TieneExhibidor,
        ae.Comentario ,
        IF(ae.TipoActualizacion=1,"EXHIBIDORES QUE TIENE",
        IF(ae.TipoActualizacion=2,"EXHIBIDORES DEVUELTOS",
        IF(ae.TipoActualizacion=3,"EXHIBIDORES NUEVOS",
        IF(ae.TipoActualizacion=4,"NO POSEE EXHIBIDORES","NO ENCONTRADA")))) AS TipoActualizacion,
        IF(ae.InfoCorrecta=1,"SI",
        IF(ae.InfoCorrecta=2,"NO",
        IF(ae.InfoCorrecta=3,"NO SE PUDO ENTRAR A LA TIENDA","NO ENCONTRADA"))) AS InfoCorrecta,
        fah.LatitudObservacion,
        fah.LongitudObservacion,
        fah.FechaObservacionTel,
        fah.FechaObservacionSer,
        CONCAT("https://043ea08.netsolhost.com/img_server/",fah.FotoObservacion) as IMG_URL,
		IF(RespuestaObservacion=0,"SIN OBSERVACION",
        IF(RespuestaObservacion=1,"VISIBLE Y ACCESIBLE",
        IF(RespuestaObservacion=2,"MAL UBICADO",
        IF(RespuestaObservacion=3,"INVADIDO",
        IF(RespuestaObservacion=4,"NECESITA REPARACION",
        IF(RespuestaObservacion=5,"DESECHADO O GUARDADO POR EL CLIENTE",
        IF(RespuestaObservacion=6,"RETIRADO DEL NEGOCIO",
        IF(RespuestaObservacion=70,"CLIENTE NO DEJO ENTRAR",
        IF(RespuestaObservacion=71,"NO SE ENCONTRO TIENDA / PULPERIA",
        IF(RespuestaObservacion=72,"ESTABA CERRADO","ERROR,NO ENCONTRADA")))))))))) AS Observacion
        from clientes as c
        INNER JOIN actualizacion_exhibidores as ae on c.Id_Cliente=ae.Id_Cliente
        INNER JOIN exhibidores as e on ae.Id_Exhibidores=e.Id_Exhibidores
        inner join fotos_actualizacion_exh as fah on ae.Id_Cliente=fah.Id_Cliente
        inner join usuarios as u on c.Id_Usuarios=u.Id_Usuarios
        inner join rutas as r on u.Id_Ruta=r.Id_Ruta
        inner join distribuidora as d on r.Id_Distribuidora=d.Id_Distribuidora
        inner join pais as p on d.Id_Pais=p.Id_Pais
        where c.estado_w=1 and c.Estado="P"
        ';
  
        $query = $this->db->query($resultados);
  
        $writer = WriterEntityFactory::createXLSXWriter();
        $filePath= "Uploads/Informes/Plantillas/Data.csv";
        $writer->openToFile($filePath); // write data to a file or to a PHP stream
  
        //Escribir Encabezados de excel
        
            $cells = [
              WriterEntityFactory::createCell('Pais'),
              WriterEntityFactory::createCell('Distribuidora'),
              WriterEntityFactory::createCell('Division'),
              WriterEntityFactory::createCell('Ruta'),
              WriterEntityFactory::createCell('Codigo Cliente'),
              WriterEntityFactory::createCell('Nombre '),
              WriterEntityFactory::createCell('Telefono'),
              WriterEntityFactory::createCell('Direccion'),
              WriterEntityFactory::createCell('Id_Exhibidores'),
              WriterEntityFactory::createCell('SKU_Exhibidor'),
              WriterEntityFactory::createCell('NombreExhibidor'),
              WriterEntityFactory::createCell('Cantidad'),
              WriterEntityFactory::createCell('TieneExhibidor'),
              WriterEntityFactory::createCell('Observaciones'),
              WriterEntityFactory::createCell('Comentario'),
              WriterEntityFactory::createCell('TipoActualizacion'),
              WriterEntityFactory::createCell('InfoCorrecta'),
              WriterEntityFactory::createCell('LatitudObservacion'),
              WriterEntityFactory::createCell('LongitudObservacion'),
              WriterEntityFactory::createCell('FechaObservacionTel'),
              WriterEntityFactory::createCell('FechaObservacionSer'),
              WriterEntityFactory::createCell('Url Imgaen')
             
             
   
              ];
      
            //a;adir encabezados a archivo excel
            $singleRow = WriterEntityFactory::createRow($cells);
            $writer->addRow($singleRow);
  
            //obteniendo celdas con los datos
            foreach($query->result() as $row)
            {
            
                $cells = [
                  WriterEntityFactory::createCell($row->Nombre_Pais),
                  WriterEntityFactory::createCell($row->Nombre_Distribuidora),
                  WriterEntityFactory::createCell($row->Division),
                  WriterEntityFactory::createCell($row->Nombre_Ruta),
                  WriterEntityFactory::createCell($row->Codigo),
                  WriterEntityFactory::createCell($row->Nombre),
                  WriterEntityFactory::createCell($row->Telefono),
                  WriterEntityFactory::createCell($row->Direccion),
                  WriterEntityFactory::createCell($row->Id_Exhibidores),
                  WriterEntityFactory::createCell($row->SKU_Exhibidor),
                  WriterEntityFactory::createCell($row->NombreExhibidor),
                  WriterEntityFactory::createCell($row->Cantidad),
                  WriterEntityFactory::createCell($row->TieneExhibidor),
                  WriterEntityFactory::createCell($row->Observacion),
                  WriterEntityFactory::createCell($row->Comentario),
                  WriterEntityFactory::createCell($row->TipoActualizacion),
                  WriterEntityFactory::createCell($row->InfoCorrecta),
                  WriterEntityFactory::createCell($row->LatitudObservacion),
                  WriterEntityFactory::createCell($row->LongitudObservacion),
                  WriterEntityFactory::createCell($row->FechaObservacionTel),
                  WriterEntityFactory::createCell($row->FechaObservacionSer),
                  WriterEntityFactory::createCell($row->IMG_URL)
             
                ];
  
  
              //a;adiendo los datos a la fila corespondiente
              $multipleRows = [
                WriterEntityFactory::createRow($cells),
              ];
  
              $writer->addRows($multipleRows);
            
            }
  
            $writer->close();
            
          return   1;
       
        }


    

    
}
