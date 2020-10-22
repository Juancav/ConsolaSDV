<?php defined('BASEPATH') OR exit('No direct script access allowed');
require  'vendor/autoload.php';
require_once 'vendor/box/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Writer\Common\Creator\WriterEntityFactory;
use Box\Spout\Common\Entity\Row;

class Clientes_Model extends CI_Model {

  function __construct(){
		parent::__construct();
	

    }

    public function GetClientes() {

      $resultados='SELECT c.Id_cliente,u.Nombre_completo,c.Codigo,Nombre,c.Direccion,c.estado_w
      FROM clientes as c
      INNER JOIN usuarios as u on c.Id_usuarios=u.id_usuarios
      INNER JOIN rutas as r on u.Id_ruta=r.Id_ruta
      WHERE Id_Cliente IN (
                        SELECT MIN(Id_Cliente) 
                          FROM clientes 
                          WHERE Estado = "P"
                          GROUP BY  Id_Usuarios,Codigo
                      );
      ';

      $query = $this->db->query($resultados);
      
    
      // $this->db->select('c.Id_cliente,u.Nombre_completo,c.Codigo,Nombre,c.Direccion,c.estado_w');
      // $this->db->from('clientes as c');
      // $this->db->where('c.Comentario_E !=','REPETIDO');
      // $this->db->or_where('c.Comentario_E IS NULL');
      // $this->db->or_where('c.Comentario_E','');
      // $this->db->where('c.Estado','P');
      // $this->db->join('usuarios as u','c.Id_usuarios=u.id_usuarios');
      // $this->db->join('rutas as r','u.Id_ruta=r.Id_ruta');
      
      // $query=$this->db->get();

      $writer = WriterEntityFactory::createXLSXWriter();
      $filePath= "Uploads/Informes/Plantillas/Data.csv";
      $writer->openToFile($filePath); // write data to a file or to a PHP stream

      //Escribir Encabezados de excel
    
          $cells = [
            WriterEntityFactory::createCell('Id_cliente'),
            WriterEntityFactory::createCell('Nombre_ruta'),
            WriterEntityFactory::createCell('Codigo'),
            WriterEntityFactory::createCell('Nombre'),
            WriterEntityFactory::createCell('Direccion'),
            WriterEntityFactory::createCell('Estado'),
            ];
    
          //a;adir encabezados a archivo excel
          $singleRow = WriterEntityFactory::createRow($cells);
          $writer->addRow($singleRow);

          //obteniendo celdas con los datos
          foreach($query->result() as $row)
          {
              $cells = [
                WriterEntityFactory::createCell($row->Id_cliente),
                WriterEntityFactory::createCell($row->Nombre_completo),
                WriterEntityFactory::createCell($row->Codigo),
                WriterEntityFactory::createCell($row->Nombre),
                WriterEntityFactory::createCell($row->Direccion),
                WriterEntityFactory::createCell($row->estado_w),
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
      
      public function Getusuarios() {
    
        $this->db->select('Id_Usuarios,Nombre_completo,Usuario');
        //$this->db->limit("10");
        $query=$this->db->get('usuarios');
  
        $writer = WriterEntityFactory::createXLSXWriter();
        $filePath= "Uploads/Informes/Plantillas/Data.csv";
        $writer->openToFile($filePath); // write data to a file or to a PHP stream
  
        //Escribir Encabezados de excel
      
            $cells = [
              WriterEntityFactory::createCell('Id_Usuarios'),
              WriterEntityFactory::createCell('Nombre_completo'),
              WriterEntityFactory::createCell('Usuario'),
   
              ];
      
            //a;adir encabezados a archivo excel
            $singleRow = WriterEntityFactory::createRow($cells);
            $writer->addRow($singleRow);
  
            //obteniendo celdas con los datos
            foreach($query->result() as $row)
            {
                $cells = [
                  WriterEntityFactory::createCell($row->Id_Usuarios),
                  WriterEntityFactory::createCell($row->Nombre_completo),
                  WriterEntityFactory::createCell($row->Usuario),
             
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

        public function Getexhibidores() {
    
          $this->db->select('Id_Exhibidores,SKU_Exhibidor,NombreExhibidor');
          $this->db->where('Id_Exhibidores !=','777777777');
          //$this->db->limit("10");
          $query=$this->db->get('exhibidores');
    
          $writer = WriterEntityFactory::createXLSXWriter();
          $filePath= "Uploads/Informes/Plantillas/Data.csv";
          $writer->openToFile($filePath); // write data to a file or to a PHP stream
    
          //Escribir Encabezados de excel
        
              $cells = [
                WriterEntityFactory::createCell('Id_Exhibidores'),
                WriterEntityFactory::createCell('SKU_Exhibidor'),
                WriterEntityFactory::createCell('NombreExhibidor'),
     
                ];
        
              //a;adir encabezados a archivo excel
              $singleRow = WriterEntityFactory::createRow($cells);
              $writer->addRow($singleRow);
    
              //obteniendo celdas con los datos
              foreach($query->result() as $row)
              {
                  $cells = [
                    WriterEntityFactory::createCell($row->Id_Exhibidores),
                    WriterEntityFactory::createCell($row->SKU_Exhibidor),
                    WriterEntityFactory::createCell($row->NombreExhibidor),
               
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
