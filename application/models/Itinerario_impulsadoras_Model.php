<?php defined('BASEPATH') or exit('No direct script access allowed');
require  'vendor/autoload.php';
require_once 'vendor/box/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Writer\Common\Creator\WriterEntityFactory;
use Box\Spout\Common\Entity\Row;
use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

class Itinerario_impulsadoras_model extends CI_Model
{

  function __construct()
  {
    parent::__construct();
  }

  public function Get_itinerarios($Carnet)
  {
    $Data = 'SELECT ucs.Id_u_sdv,ii.Id_cli_imp,ii.Id_iti_imp,ucs.Nombre, d.Nombre_Distribuidora , ci.Cod_cli ,ci.Nombre_cli , ci.Direc_cli , ii.lunes,ii.martes,ii.miercoles,ii.jueves,ii.viernes,ii.sabado,ii.domingo,ii.estado_itinerario 
      FROM Itinerario_impulso as ii
      inner join Clientes_impulsadoras as ci on ii.id_cli_imp=ci.id_cli_imp
      inner join usuarios_consolasdv as ucs on ii.id_u_sdv=ucs.id_u_sdv
      inner join distribuidora as d on ucs.id_distribuidora=d.id_distribuidora
      where ucs.Usuario="' . $Carnet . '"';

    $query = $this->db->query($Data);

    if (empty($query->result())) {
      return 0;
    } else {
      return  $query->result();
    }
  }

  public function Cambios_itinerario($Datos)
  {

    $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

    $nuevafecha = strtotime('-2 hour', strtotime($fecha));
    $nuevafecha = date('Y-m-j_H:i:s', $nuevafecha);

    for ($x = 0; $x < count($Datos); $x++) {

      if ($Datos[$x]['Id_iti_imp'] == 0) {

        $data = array(

          'Id_iti_imp' => 0,
          'Id_u_sdv' => $Datos[$x]['Id_u_sdv'],
          'Id_cli_imp' => $Datos[$x]['Id_cli_imp'],
          'Lunes' => $Datos[$x]['Lunes'],
          'Martes' => $Datos[$x]['Martes'],
          'Miercoles' => $Datos[$x]['Miercoles'],
          'Jueves' => $Datos[$x]['Jueves'],
          'Viernes' => $Datos[$x]['Viernes'],
          'Sabado' => $Datos[$x]['Sabado'],
          'Domingo' => $Datos[$x]['Domingo'],
          'Estado_itinerario' => $Datos[$x]['Estado_itinerario'],
          'Visitado' => $Datos[$x]['Visitado']
        );

        $this->db->insert('Itinerario_impulso', $data);

        $data = '';
      } else {

        $data = array(

          'Id_u_sdv' => $Datos[$x]['Id_u_sdv'],
          'Id_cli_imp' => $Datos[$x]['Id_cli_imp'],
          'Lunes' => $Datos[$x]['Lunes'],
          'Martes' => $Datos[$x]['Martes'],
          'Miercoles' => $Datos[$x]['Miercoles'],
          'Jueves' => $Datos[$x]['Jueves'],
          'Viernes' => $Datos[$x]['Viernes'],
          'Sabado' => $Datos[$x]['Sabado'],
          'Domingo' => $Datos[$x]['Domingo'],
          'Estado_itinerario' => $Datos[$x]['Estado_itinerario'],
          'Visitado' => $Datos[$x]['Visitado']

        );

        $this->db->where('Id_iti_imp', $Datos[$x]['Id_iti_imp']);
        $this->db->update('Itinerario_impulso', $data);
      }
    }

    return 'success';
  }

  public function get_paises()
  {
    $query = $this->db->get('pais');
    $output = '<option value="" disabled selected>Seleccione un pais</option>';

    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->Id_Pais . '">' . $row->Nombre_Pais . '</option>';
    }
    return $output;
  }

  public function get_distribuidora($Pais)
  {
    $this->db->where('Id_pais', $Pais);
    $query = $this->db->get('distribuidora');
    $output = '<option value="" disabled selected>Seleccione una distribuidora</option>';

    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
    }
    return $output;
  }

  public function get_rutas($distribuidora)
  {
    $this->db->select('r.Id_ruta , r.nombre_ruta');
    $this->db->from('rutas as r');
    $this->db->join('canal as c ', 'r.id_canal=c.id_canal');
    $this->db->where('c.nombre_canal', 'MAYOREO');
    $this->db->where('r.nombre_ruta !=', 'SUPERVISOR');
    $this->db->where('r.nombre_ruta !=', 'NO ASIGNADO');
    $this->db->where('r.Id_distribuidora', $distribuidora);
    $this->db->order_by('r.nombre_ruta ASC');
    $query = $this->db->get('');
    $output = '<option value="" disabled selected>Seleccione una ruta</option>';

    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->Id_ruta . '">' . $row->nombre_ruta . '</option>';
    }
    return $output;
  }

  function upload_data_i($data)
  {

    $arr_data_venta = [];
    $filas = 10001;
    $query = "";

    $reader = ReaderEntityFactory::createReaderFromFile('Uploads/Informes/' . $data['nombre_informe'] . '.csv');
    // $reader->setShouldFormatDates(true); // Permite recibir del excel en formato fecha
    $reader->open('Uploads/Informes/' . $data['nombre_informe'] . '.csv');

    //Carga de clientes impulsadoras
    if ($data['Tipo_carga'] == 1) {

      foreach ($reader->getSheetIterator() as $sheet) {

        foreach ($sheet->getRowIterator() as $rownumber => $row) {


          if ($rownumber > 1) {
            $cells = $row->getCells();

            $this->db->select('Id_ruta');
            $this->db->from('rutas');
            $this->db->where('Nombre_ruta', $cells[8]);
            $query = $this->db->get('');

            if ($query->num_rows() > 0) {

              $Codigo_cli = $cells[0];
              $Nombre_cli = $cells[1];
              $Direc_cli = $cells[2];
              $Tel_cli = $cells[3];
              $Contact_cli = $cells[4];
              $Estado_cli = $cells[5];
              $Laitud_cli = $cells[6];
              $Longitud_cli = $cells[7];
              $Id_ruta = $query->row()->Id_ruta;

              $data_itinerario = [
                'Id_cli_imp' => 0,
                'Cod_cli' => $Codigo_cli,
                'Nombre_cli' => $Nombre_cli,
                'Direc_cli' => $Direc_cli,
                'Tel_cli' =>  $Tel_cli,
                'Contac_cli' =>  $Contact_cli,
                'Estado_cli' => $Estado_cli,
                'Latitud_cli' => $Laitud_cli,
                'Longitud_cli' => $Longitud_cli,
                'Id_ruta' => $Id_ruta
              ];

              $arr_data_venta[] = $data_itinerario;

              if ($rownumber == $filas) {

                $this->db->insert_batch('Clientes_impulsadoras', $arr_data_venta);

                $filas = $filas + 10000;
                set_time_limit(0);
                unset($data_itinerario, $arr_data_venta);
              }
            } else {
              return  array('Fila' => $rownumber, 'Validar' => false);
            }
          }
        }
      }

      $this->db->insert_batch('Clientes_impulsadoras', $arr_data_venta);

      $reader->close();

      return  array('Fila' => $rownumber - 1, 'Validar' => true);


    } else if ($data['Tipo_carga'] == 2) {
      $Usuario = "";
      $Cliente="";

      foreach ($reader->getSheetIterator() as $sheet) {

        foreach ($sheet->getRowIterator() as $rownumber => $row) {


          if ($rownumber > 1) {

            $cells = $row->getCells();

            $this->db->select('Id_u_sdv');
            $this->db->from('usuarios_consolasdv');
            $this->db->where('Usuario', $cells[0]);
            $Usuario = $this->db->get('');

            $this->db->select('Id_cli_imp');
            $this->db->from('Clientes_impulsadoras');
            $this->db->where('Cod_cli', $cells[1]);
            $Cliente = $this->db->get('');

            if ($Usuario->num_rows() > 0 && $Cliente->num_rows() > 0) {
              $Id_u_sdv = $Usuario->row()->Id_u_sdv;
              $Id_cli_imp = $Cliente->row()->Id_cli_imp;
              $Lunes = $cells[2];
              $Martes = $cells[3];
              $Miercoles = $cells[4];
              $Jueves = $cells[5];
              $Viernes = $cells[6];
              $Sabado = $cells[7];
              $Domingo = $cells[8];
              $Estado_itinerario = 1;
              $visitado = 0;

              $data_itinerario = [
                'Id_iti_imp' => 0,
                'Id_u_sdv' => $Id_u_sdv,
                'Id_cli_imp' => $Id_cli_imp,
                'Lunes' => $Lunes,
                'Martes' =>  $Martes,
                'Miercoles' => $Miercoles,
                'Jueves' => $Jueves,
                'Viernes' => $Viernes,
                'Sabado' => $Sabado,
                'Domingo' => $Domingo,
                'Estado_itinerario' => $Estado_itinerario,
                'visitado' => $visitado
              ];



              $arr_data_venta[] = $data_itinerario;

              if ($rownumber == $filas) {

                $this->db->insert_batch('Itinerario_impulso', $arr_data_venta);

                $filas = $filas + 10000;
                set_time_limit(0);
                unset($data_itinerario, $arr_data_venta);
              }
            } else {
              return  array('Fila' => $rownumber, 'Validar' => false);
            }
          }
        }
      }


      $this->db->insert_batch('Itinerario_impulso', $arr_data_venta);

      $reader->close();

      return  array('Fila' => $rownumber - 1, 'Validar' => true);
    }
  }

  public function Informe_marcaciones($Data) {

    if($Data["Distribuidora"] == ""){
      $resultados='SELECT p.Nombre_pais,d.division,d.nombre_distribuidora,uc.nombre,ci.cod_cli,ci.Nombre_cli,ai.nombre_activ,mi.latitud_ini,mi.longitud_ini,mi.latitud_fin,mi.longitud_fin,mi.fecha_inicio,mi.fecha_fin,
      CONCAT(MOD(HOUR(TIMEDIFF(mi.fecha_fin,  mi.fecha_inicio )), 24), "horas",MINUTE(TIMEDIFF(mi.fecha_fin, mi.fecha_inicio )), " minutos ") as Tiempo_visita,mi.Img_inicio,mi.img_fin,tm.nombre_tipo_marcacion,mi.observacion FROM usuarios_consolasdv as uc
      inner join Marcaciones_impulso as mi on uc.id_u_sdv=mi.id_u_sdv
      inner join Tipo_marcacion_impulso as tm on mi.id_tipo_marcacion=tm.id_tipo_marcacion
      inner join Clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp
      inner join acti_impulso as ai on mi.id_actividad=ai.id
      inner join distribuidora as d on uc.id_distribuidora=d.id_distribuidora
      inner join pais as p on d.id_pais=p.id_pais
      WHERE Canal="IMPULSO" && p.id_pais='.$Data["Pais"].' && mi.Fecha_inicio BETWEEN "'.$Data["Fecha_inicio"].'" AND "'.$Data["Fecha_fin"].'"';
    }else{
      $resultados='SELECT p.Nombre_pais,d.division,d.nombre_distribuidora,uc.nombre,ci.cod_cli,ci.Nombre_cli,ai.nombre_activ,mi.latitud_ini,mi.longitud_ini,mi.latitud_fin,mi.longitud_fin,mi.fecha_inicio,mi.fecha_fin,
      CONCAT(MOD(HOUR(TIMEDIFF(mi.fecha_fin,  mi.fecha_inicio )), 24), "horas",MINUTE(TIMEDIFF(mi.fecha_fin, mi.fecha_inicio )), " minutos ") as Tiempo_visita,mi.Img_inicio,mi.img_fin,tm.nombre_tipo_marcacion,mi.observacion FROM usuarios_consolasdv as uc
      inner join Marcaciones_impulso as mi on uc.id_u_sdv=mi.id_u_sdv
      inner join Tipo_marcacion_impulso as tm on mi.id_tipo_marcacion=tm.id_tipo_marcacion
      inner join Clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp
      inner join acti_impulso as ai on mi.id_actividad=ai.id
      inner join distribuidora as d on uc.id_distribuidora=d.id_distribuidora
      inner join pais as p on d.id_pais=p.id_pais
      WHERE Canal="IMPULSO" && d.Id_Distribuidora='.$Data["Distribuidora"].' && mi.Fecha_inicio BETWEEN "'.$Data["Fecha_inicio"].'" AND "'.$Data["Fecha_fin"].'"';
    }
    

    $query = $this->db->query($resultados);

    $writer = WriterEntityFactory::createXLSXWriter();
    $filePath= "Uploads/Informes/Plantillas/Marcaciones_impulso.csv";
    $writer->openToFile($filePath); // write data to a file or to a PHP stream

    //Escribir Encabezados de excel
  
        $cells = [
          WriterEntityFactory::createCell('Pais '),
          WriterEntityFactory::createCell('Division'),
          WriterEntityFactory::createCell('Distribuidora'),
          WriterEntityFactory::createCell('Nombre Impulsadora'),
          WriterEntityFactory::createCell('Codigo cliente'),
          WriterEntityFactory::createCell('Nombre cliente'),
          WriterEntityFactory::createCell('Actividad realizada'),
          WriterEntityFactory::createCell('Fecha inicio'),
          WriterEntityFactory::createCell('Latitud Inicio'),
          WriterEntityFactory::createCell('Longitud Inicio'),
          WriterEntityFactory::createCell('Fecha fin'),
          WriterEntityFactory::createCell('Latitud fin'),
          WriterEntityFactory::createCell('Longitud fin'),
          WriterEntityFactory::createCell('Duracion de visita'),
          WriterEntityFactory::createCell('Imagen inicio'),
          WriterEntityFactory::createCell('Imagen Fin'),
          WriterEntityFactory::createCell('Tipo marcacion'),
          WriterEntityFactory::createCell('Observaciones'),

          ];
  
        //a;adir encabezados a archivo excel
        $singleRow = WriterEntityFactory::createRow($cells);
        $writer->addRow($singleRow);

        //obteniendo celdas con los datos
        foreach($query->result() as $row)
        {
            $cells = [
              WriterEntityFactory::createCell($row->Nombre_pais),
              WriterEntityFactory::createCell($row->division),
              WriterEntityFactory::createCell($row->nombre_distribuidora),
              WriterEntityFactory::createCell($row->nombre),
              WriterEntityFactory::createCell($row->cod_cli),
              WriterEntityFactory::createCell($row->Nombre_cli),
              WriterEntityFactory::createCell($row->nombre_activ),
              WriterEntityFactory::createCell($row->fecha_inicio),
              WriterEntityFactory::createCell($row->latitud_ini),
              WriterEntityFactory::createCell($row->longitud_ini),
              WriterEntityFactory::createCell($row->fecha_fin),
              WriterEntityFactory::createCell($row->latitud_fin),
              WriterEntityFactory::createCell($row->longitud_fin),
              WriterEntityFactory::createCell($row->Tiempo_visita),
              WriterEntityFactory::createCell($row->Img_inicio),
              WriterEntityFactory::createCell($row->img_fin),
              WriterEntityFactory::createCell($row->nombre_tipo_marcacion),
              WriterEntityFactory::createCell($row->observacion),

         
            ];


          //a;adiendo los datos a la fila corespondiente
          $multipleRows = [
            WriterEntityFactory::createRow($cells),
          ];

          $writer->addRows($multipleRows);
        
        }

        $writer->close();
        return   $query->result();
   
    }
}
