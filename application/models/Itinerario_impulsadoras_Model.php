<?php defined('BASEPATH') or exit('No direct script access allowed');
require  'vendor/autoload.php';
require_once 'vendor/box/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Writer\Common\Creator\WriterEntityFactory;
use Box\Spout\Common\Entity\Row;

class Itinerario_impulsadoras_model extends CI_Model
{

  function __construct()
  {
    parent::__construct();
  }
  public function Get_itinerarios($Carnet)
  {
    $Data = 'SELECT ucs.Id_u_sdv,ii.Id_cli_imp,ii.Id_iti_imp,ucs.Nombre, d.Nombre_Distribuidora , ci.Cod_cli ,ci.Nombre_cli , ci.Direc_cli , ii.lunes,ii.martes,ii.miercoles,ii.jueves,ii.viernes,ii.sabado,ii.domingo,ii.estado_itinerario FROM Itinerario_impulso as ii
      inner join clientes_impulsadoras as ci on ii.id_cli_imp=ci.id_cli_imp
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

        $this->db->insert('itinerario_impulso', $data);

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
        $this->db->update('itinerario_impulso', $data);
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
    $this->db->join('canal as c ','r.id_canal=c.id_canal');
    $this->db->where('c.nombre_canal','MAYOREO');
    $this->db->where('r.nombre_ruta !=','SUPERVISOR');
    $this->db->where('r.nombre_ruta !=','NO ASIGNADO');
    $this->db->where('r.Id_distribuidora', $distribuidora);
    $this->db->order_by('r.nombre_ruta ASC');
    $query = $this->db->get('');
    $output = '<option value="" disabled selected>Seleccione una ruta</option>';

    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->Id_ruta . '">' . $row->nombre_ruta . '</option>';
    }
    return $output;
  }
}
