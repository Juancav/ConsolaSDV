<?php

  if(isset($Id_PDF))
  {
   echo $Id_PDF;
  }
  ?>

<div style='
text-align: center;   
background: #3a3f48;
box-shadow: 0px -1px 5px #282c33;
border-top: 1px solid #464a52;
position: fixed;
bottom: 0;
width: 100%;
height: 30px;
color: white;
font-family: "Latin Modern Roman 10";
font-style: italic;
  color:#fff;
  text-shadow:1px 1px 10px #fff, 1px 1px 10px #16c7ff;
  font-size:48px;
  text-align:center;
  z-index:10'>
<h4>&copy; Bocadeli <?php $fecha_actual = date('Y'); echo $fecha_actual; ?> -Sistema De Ventas</h4>
</div>
</body>
<html>
