<?php defined('BASEPATH') or exit('No direct script access allowed');

class Marcaciones_imp_model extends CI_Model
{

  function __construct()
  {
    parent::__construct();
  }

  public function Get_actividades()
  {


    $this->db->where('Id!=', '14');
    $this->db->where('Id!=', '15');
    $this->db->where('Id!=', '16');
    $this->db->where('Id!=', '17');

    $query = $this->db->get('acti_impulso');
    $output = '<option value="" disabled selected>Seleccione Actividad</option>';
    foreach ($query->result() as $row) {
      $output .= '<option value="' . $row->Id . '">' . $row->Nombre_activ . '</option>';
    }
    return $output;
  }

  public function Get_clientes()
  {

    $dias = array("Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado");

    $data = 'SELECT ci.Id_cli_imp , ci.Nombre_cli , ci.Cod_cli from Itinerario_impulso as ii
            inner join Clientes_impulsadoras as ci on ii.Id_cli_imp=ci.Id_cli_imp
            inner join usuarios_consolasdv as uc on ii.Id_u_sdv=uc.Id_u_sdv
            where uc.Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and ii.' . $dias[date("w")] . '=1 and ii.Estado_itinerario=1 and ii.Visitado=0;';


    $resultados = $this->db->query($data);

    $output = '<option value="" disabled selected>Seleccione cliente</option>';
    foreach ($resultados->result() as $row) {
      $output .= '<option value="' . $row->Id_cli_imp . '">' . $row->Cod_cli . " - " . $row->Nombre_cli . '</option>';
    }
    return $output;
  }
  public function registrar_actividad($data)
  {
    $this->db->insert('Marcaciones_impulso', $data);
    return 1;
  }

  public function Verificacion_Actividades()
  {

    $CLIENTE = 'SELECT Id_actividad FROM Marcaciones_impulso where Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and Estado_marcacion="INICIADA" and Id_cli_imp!=1077 and Id_cli_imp!=1078 and Id_cli_imp!=1079 and Id_cli_imp!=1080';
    $Clienteresultado = $this->db->query($CLIENTE);

    if ($Clienteresultado->num_rows() > 0) {
      //VERIFICACION DE ACTIVIDAD CON ALGUN CLIENTE ACTIVA
      return 1;
    } else {

      // verificacion de hora de almuerzo activa
      $Almuerzo = 'SELECT Id_cli_imp FROM Marcaciones_impulso where Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and Estado_marcacion="INICIADA" and Id_cli_imp=1077 ';
      $Almuerzoresultado = $this->db->query($Almuerzo);

      if ($Almuerzoresultado->num_rows() > 0) {
        return 2;
      } else {
        //Verificacion si esta en ausencia temporal
        $Ausencia = 'SELECT Id_cli_imp FROM Marcaciones_impulso where Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and Estado_marcacion="INICIADA " and Id_cli_imp=1078 ';
        $Ausenciaresultado = $this->db->query($Ausencia);

        if ($Ausenciaresultado->num_rows() > 0) {
          return 3;
        } else {
          //Verificacion si esta en desplazamaiento
          $Desplazamiento = 'SELECT Id_cli_imp FROM Marcaciones_impulso where Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and Estado_marcacion="INICIADA" and Id_cli_imp=1079';
          $Desplazamientoresultado = $this->db->query($Desplazamiento);
          if ($Desplazamientoresultado->num_rows() > 0) {
            return 4;
          } else {
            $ApoyoDistribuidora = 'SELECT Id_cli_imp FROM Marcaciones_impulso where Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and Estado_marcacion="INICIADA" and Id_cli_imp=1080';
            $ApoyoDistribuidoraresultado = $this->db->query($ApoyoDistribuidora);

            if ($ApoyoDistribuidoraresultado->num_rows() > 0) {
              return 5;
            } else {
              return 0;
            }
          }
        }
      }
    }
  }

  public function Get_clientes_iniciado()
  {


    $data = 'SELECT ci.Id_cli_imp, ci.Cod_cli,ci.Nombre_cli FROM Marcaciones_impulso as mi 
      inner join Clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp 
      where mi.Estado_marcacion="INICIADA" AND mi.Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ';';


    $resultados = $this->db->query($data);

    $output = '<option value="" disabled selected>Seleccione cliente</option>';
    foreach ($resultados->result() as $row) {
      $output .= '<option value="' . $row->Id_cli_imp . '">' . $row->Cod_cli . " - " . $row->Nombre_cli . '</option>';
    }
    return $output;
  }

  public function finalizar_actividad($data)
  {

    $datos = array('Visitado' => 1);

    $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
    $this->db->where('Id_cli_imp', $data["Data2"][1]);
    $this->db->update('Itinerario_impulso', $datos);


    $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
    $this->db->where('Estado_marcacion', 'INICIADA');
    $this->db->update('Marcaciones_impulso', $data["Data1"]);

    return 1;
  }

  public function finalizar_apoyodistribuidora($data)
  {

    $datos = array('Visitado' => 1);


    $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
    $this->db->where('Estado_marcacion', 'INICIADA');
    $this->db->update('Marcaciones_impulso', $data);

    return 1;
  }

  public function ClientesComodin($data)
  {
    $fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
    $nuevafecha = strtotime('-2 hour', strtotime($fecha));
    $nuevafecha = date('Y-m-j H:i:s', $nuevafecha);

    if ($data["datos"]["Estado_marcacion"] == "INICIADA") {


      $data = array(
        'Id_marcacion' => 0,
        'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),
        'Id_cli_imp' => $data["datos"]["Id_cli_imp"],
        'Id_actividad' => $data["datos"]["Id_actividad"],
        'Latitud_ini' => $data["datos"]["Latitud"],
        'Longitud_ini' => $data["datos"]["Longitud"],
        'Fecha_inicio' => $nuevafecha,
        'Img_inicio' => 0/*base_url()."Uploads/Imagenes/Marcaciones_impulso/".$file_info['file_name']*/,
        'Latitud_fin' => 0,
        'Longitud_fin' => 0,
        'Fecha_fin' => 0,
        'Img_fin' => 0,
        'Estado_marcacion' => $data["datos"]["Estado_marcacion"],
        'Id_tipo_marcacion' => 2
      );

      $this->db->insert('Marcaciones_impulso', $data);
    } else {

      $data = array(
        'Latitud_fin' => $data["datos"]["Latitud"],
        'Longitud_fin' => $data["datos"]["Longitud"],
        'Fecha_fin' => $nuevafecha,
        'Estado_marcacion' => $data["datos"]["Estado_marcacion"]
      );

      $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
      $this->db->where('Estado_marcacion', 'INICIADA');
      $this->db->update('Marcaciones_impulso', $data);
    }

    return 1;
  }

  public function Filtro_clientes($Dia)
  {


    $data = 'SELECT ci.Id_cli_imp , ci.Nombre_cli , ci.Cod_cli from Itinerario_impulso as ii
            inner join Clientes_impulsadoras as ci on ii.Id_cli_imp=ci.Id_cli_imp
            inner join usuarios_consolasdv as uc on ii.Id_u_sdv=uc.Id_u_sdv
            where uc.Id_u_sdv=' . $this->session->userdata('Id_u_sdv') . ' and ii.' . $Dia . '=1 and ii.Estado_itinerario=1 and ii.Visitado=0;';


    $resultados = $this->db->query($data);

    $output = '<option value="" disabled selected>Seleccione cliente</option>';
    foreach ($resultados->result() as $row) {
      $output .= '<option value="' . $row->Id_cli_imp . '">' . $row->Cod_cli . " - " . $row->Nombre_cli . '</option>';
    }
    return $output;
  }

  public function rutasmayoreo()
  {


    $data = 'SELECT r.Id_Ruta,r.Nombre_Ruta from rutas as r 
      inner join canal as c on r.id_canal=c.id_canal
      inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
      where c.nombre_canal="MAYOREO" and r.Nombre_Ruta!="SUPERVISOR" AND r.Nombre_Ruta!="NO ASIGNADO" and r.id_distribuidora=' . $this->session->userdata('Id_Distribuidora') . '
      order by r.Nombre_Ruta;';


    $resultados = $this->db->query($data);

    $output = '<option value="" disabled selected>Seleccione cliente</option>';
    foreach ($resultados->result() as $row) {
      $output .= '<option value="' . $row->Id_Ruta . '">' . $row->Nombre_Ruta . '</option>';
    }
    return $output;
  }

  public function ClientesRuta($Id_ruta)
  {


    $data = 'SELECT Id_cli_imp,Cod_cli,Nombre_cli FROM clientes_impulsadoras
        where id_ruta=' . $Id_ruta . ';';


    $resultados = $this->db->query($data);

    $output = '<option value="" disabled selected>Seleccione cliente</option>';
    foreach ($resultados->result() as $row) {
      $output .= '<option value="' . $row->Id_cli_imp . '">' . $row->Cod_cli . " - " . $row->Nombre_cli . '</option>';
    }
    return $output;
  }

  public function ClientesAutocomplete($Id_ruta)
  {

    $query = 'SELECT Id_cli_imp as value, concat(Cod_cli," - ",Nombre_cli) as label,Cod_cli,Direc_cli,Nombre_cli FROM Clientes_impulsadoras
        where id_ruta=' . $Id_ruta . ';';


    $resultados = $this->db->query($query);
    return $resultados->result();


    if (empty($resultados)) {

      return array();
    } else {
      return $resultados;
    }
  }

  public function Sincronizacion_inicial()
  {

    $datos = array(
      "Visitado" => 0
    );

    $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
    return  $this->db->update('Itinerario_impulso',  $datos);
  }

  public function Anular_marcacion()
  {

    $datos = array(
      "Estado_marcacion" => 'ANULADA'
    );

    $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
    $this->db->where('Estado_marcacion', 'INICIADA');
    return  $this->db->update('Marcaciones_impulso',  $datos);
  }
}
