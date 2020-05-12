<?php defined('BASEPATH') OR exit('No direct script access allowed');

require 'vendor/autoload.php';
require_once 'vendor/box/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

class Informes_Model extends CI_Model {

	function __construct(){
		parent::__construct();
       $this->load->database();

    }
    
    function Actualizar_Informe($data){
        ini_set ('max_execution_time', 1000); 

        ini_set ('mysql.connect_timeout', 1000); // ejecuta sql grande

        ini_set ('default_socket_timeout', 1000);
       
      
        // Saber si existe registro de este informe
        $this->db->where('nombre_informe',$data['nombre_informe']);
        $query=$this->db->get('Informes');
        $Count=$query->num_rows();
      
        $reader = ReaderEntityFactory::createReaderFromFile('Uploads/Informes/'.$data['nombre_informe'].'.xlsx');   
        $reader->open('Uploads/Informes/'.$data['nombre_informe'].'.xlsx');
        $arr_data_produts=[];
        $FilasTotal=0;

            foreach ($reader->getSheetIterator() as $sheet) {  


                

                foreach ($sheet->getRowIterator() as $rownumber=>$row) {

                  
                        
                      

                    if($rownumber>1){

                        $cells = $row->getCells();

                        $Ruta = $cells[0];
                        $Codigo =$cells[1];
                        $Cliente =$cells[2];
                        $Fecha =$cells[3];
                        $No_Docto =$cells[4];
                        $Serie_Docto=$cells[5];
                        $Estado =$cells[6];
                        $Vendedor=$cells[7];
                        $Total =$cells[8];
                        $Condicion =$cells[9];
                        $Nombre_Vendedor =$cells[10];
                        $FechaServer =$cells[11];
                        $FechaMovil =$cells[12];
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


                    }
                                       
                    
                }
                

            }
            

            $this->db->insert_batch('VENTA_DIARIA', $arr_data_venta);

            $reader->close();
       
           

        //   if($this->db->affected_rows() > 0 ){
        //         return true;
        //     }else{
        //         return false;
        //     }

       
    }
    
}
