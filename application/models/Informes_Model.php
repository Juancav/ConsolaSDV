<?php defined('BASEPATH') OR exit('No direct script access allowed');

require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;
use CodeIgniter\HTTP\IncomingRequest;
use Codeigniter\Database\Query;

class Informes_Model extends CI_Model {

	function __construct(){
		parent::__construct();
       $this->load->database();

    }
    
    function Actualizar_Informe($data){
        ini_set('MAX_EXECUTION_TIME', '-1');
      
        $Afecha = date('Y-m-d H:i:s');

        $this->db->where('nombre_informe',$data['nombre_informe']);
        $query=$this->db->get('Informes');
        $Count=$query->num_rows();
        $Acumulador=0;

        if($Count>0){

        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader('Xlsx');
            $filename='Uploads/Informes/'.$data['nombre_informe'].'.xlsx';

            $reader->setReadDataOnly(TRUE);
            $spreadsheet = $reader->load($filename);
            $sheet =$spreadsheet->getSheet(0);

            // $db = \Config\Database::connect();
            // $builder = $db->table('VENTA_DIARIA');

            foreach($sheet->getRowIterator(2) as $row){
       
                $Ruta = trim($sheet->getCellByColumnAndRow(1,$row->getRowIndex()));
                $Codigo = trim($sheet->getCellByColumnAndRow(2,$row->getRowIndex()));
                $Cliente = trim($sheet->getCellByColumnAndRow(3,$row->getRowIndex()));
                $Fecha = trim($sheet->getCellByColumnAndRow(4,$row->getRowIndex()));
                $No_Docto = trim($sheet->getCellByColumnAndRow(5,$row->getRowIndex()));
                $Serie_Docto= trim($sheet->getCellByColumnAndRow(6,$row->getRowIndex()));
                $Estado = trim($sheet->getCellByColumnAndRow(7,$row->getRowIndex()));
                $Vendedor= trim($sheet->getCellByColumnAndRow(8,$row->getRowIndex()));
                $Total = trim($sheet->getCellByColumnAndRow(9,$row->getRowIndex()));
                $Condicion = trim($sheet->getCellByColumnAndRow(10,$row->getRowIndex()));
                $Nombre_Vendedor = trim($sheet->getCellByColumnAndRow(11,$row->getRowIndex()));
                $FechaServer = trim($sheet->getCellByColumnAndRow(12,$row->getRowIndex()));
                $FechaMovil = trim($sheet->getCellByColumnAndRow(13,$row->getRowIndex()));
                $Latitud	= trim($sheet->getCellByColumnAndRow(14,$row->getRowIndex()));
                $Longitud = trim($sheet->getCellByColumnAndRow(15,$row->getRowIndex()));
                $Cantidad = trim($sheet->getCellByColumnAndRow(16,$row->getRowIndex()));
                $CodigoProducto = trim($sheet->getCellByColumnAndRow(17,$row->getRowIndex()));
                $Descripcion= trim($sheet->getCellByColumnAndRow(18,$row->getRowIndex()));
                $Precio = trim($sheet->getCellByColumnAndRow(19,$row->getRowIndex()));
                $Venta = trim($sheet->getCellByColumnAndRow(20,$row->getRowIndex()));
                $Familia= trim($sheet->getCellByColumnAndRow(21,$row->getRowIndex()));	
                $SubFamila = trim($sheet->getCellByColumnAndRow(22,$row->getRowIndex()));
                $SubSubFamilia = trim($sheet->getCellByColumnAndRow(23,$row->getRowIndex()));
                $Categoria = trim($sheet->getCellByColumnAndRow(24,$row->getRowIndex()));
                $Canal = trim($sheet->getCellByColumnAndRow(25,$row->getRowIndex()));
                $Grupo = trim($sheet->getCellByColumnAndRow(26,$row->getRowIndex()));
                $Distribuidora = trim($sheet->getCellByColumnAndRow(27,$row->getRowIndex()));
                $División = trim($sheet->getCellByColumnAndRow(28,$row->getRowIndex()));
                $Pais = trim($sheet->getCellByColumnAndRow(29,$row->getRowIndex()));

                if(
                    $Ruta == '' ||
                    $Codigo == '' ||
                    $Cliente == '' ||
                    $Fecha == '' ||
                    $No_Docto == '' ||
                    $Serie_Docto== '' ||
                    $Estado == '' ||
                    $Vendedor== '' ||
                    $Total == '' ||
                    $Condicion == '' ||
                    $Nombre_Vendedor == '' ||
                    $FechaServer == '' ||
                    $FechaMovil == '' ||
                    $Latitud	== '' ||
                    $Longitud == '' ||
                    $Cantidad == '' ||
                    $CodigoProducto == '' ||
                    $Descripcion== '' ||
                    $Precio == '' ||
                    $Venta == '' ||
                    $Familia== '' ||
                    $SubFamila == '' ||
                    $SubSubFamilia == '' ||
                    $Categoria == '' ||
                    $Canal == '' ||
                    $Grupo == '' ||
                    $Distribuidora == '' ||
                    $División == '' ||
                    $Pais == '' 

                )
                    continue;

                    
    $data_venta[]=[
                 'Id_Inf_venta'=>0,
                 'Ruta'=>$Ruta ,
                 'Codigo'=>$Codigo, 
                 'Cliente'=>$Cliente, 
                 'Fecha'=> date ( 'Y-m-j H:i:s' , $Fecha ), 
                 'No_Docto'=>$No_Docto, 
                 'Serie_Docto'=>$Serie_Docto,
                 'Estado'=>$Estado, 
                 'Vendedor'=>$Vendedor,
                 'Total'=>$Total, 
                 'Condicion'=>$Condicion, 
                 'Nombre_Vendedor'=>$Nombre_Vendedor,
                 'FechaServer'=> date ( 'Y-m-j H:i:s' , $FechaServer), 
                 'FechaMovil'=>date ( 'Y-m-j H:i:s' , $FechaMovil) ,
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

        $Acumulador++;

            }

            $this->db->insert_batch('VENTA_DIARIA', $data_venta);


        


            $campos=array(
                'fecha_actualizacion'=>$data['fecha_actualizacion'],
                'url_informe'=>$data['url_informe'],
                'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')
            );
            $this->db->where('nombre_informe', $data['nombre_informe']);
            $this->db->update('Informes',$campos);

            if($this->db->affected_rows() > 0 ){
                return true;
            }else{
                return false;
            }
  

        }else{
            $this->db->insert('Informes',$data);
        
            if($this->db->affected_rows() > 0 ){
                return true;
            }else{
                return false;
            }
        }
       
    }
    
}
