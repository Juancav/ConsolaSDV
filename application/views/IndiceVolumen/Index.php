<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Indice Volumen</title>
   <!--Icon page-->
   <link href="Public/Img/favicon.png" rel="icon">
</head>
<body>
<div class="page-wrapper chiller-theme toggled">
<main class="page-content">
            <section id="hero" class="wow fadeIn">
           
            <iframe width="100%" height="750px" src="https://app.powerbi.com/reportEmbed?reportId=4b545f92-6b31-47ed-a67d-ebe91b1452b3&autoAuth=true&ctid=565b4844-e1cd-4fee-87d7-3c9ef324c5f4&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLXBhYXMtMS1zY3VzLXJlZGlyZWN0LmFuYWx5c2lzLndpbmRvd3MubmV0In0%3D<?php switch($this->session->userdata('Rol')){case"JEFE DE VENTA":echo'&$filter=DATA/DISTRIBUIDORA eq '."'".$this->session->userdata('Nombre_Distribuidora');  break;}?>'" frameborder="0" allowFullScreen="true"></iframe></div>

            
            </section>
            </div>
            </main>
</div>

</body>
</html>


