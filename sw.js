const CacheEstatica = 'sitio-estatico';
const Layout= [
    '/ConsolaSDV/index.php',
    'Public/Img/favicon.png',   //ICONO DE LA PAGINA LOGIN
    'Public/Css/util.css',      //CSS DE LOGIN 
    'Public/Css/style.css',     //CCS ESTILOS DEL MENU Y BODY CONSOLASDV
    'Public/Css/Css.css',       //CCS ESTILOS DEL MENU Y BODY CONSOLASDV
    'Public/Img/bocadeli.jpg',  //IMAGEN DEL LOGIN 
    'https://code.jquery.com/jquery-3.4.1.js', // CDN DE JQUERY
    // 'Public/vendor/bootstrap/js/popper.js', //BOOTSTRAP POPPER 
    // 'Public/vendor/daterangepicker/moment.min.js',// MOMENT JS FECHAS
    'Public/Css/MarcacionesImp.css', //CCS DE APP IMPULSO
    '//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css', // TEMA DE JQUERY UI 
    'https://code.jquery.com/jquery-1.12.4.js', //JQUERY UI 
    'https://code.jquery.com/ui/1.12.1/jquery-ui.js', //JQUERY UI JS
    'Public/js/App.js', //INICIALIZADOR SERVICES WORKER
    'https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css', // CDN BOOTSTRAP CCS
    'https://cdn.jsdelivr.net/npm/sweetalert2@9' , // SWEET ALERT 
    'https://cdn.jsdelivr.net/npm/echarts@4.7.0/dist/echarts.min.js' , //ECHARTS LIBRERIA DE GRAFICOS
    'https://kit.fontawesome.com/74f9e3337a.js', //ICONOS UTILIZADOS FONT AWUESOME
    'Public/Img/almuerzo.gif', // IMAGEN ALMUERZO GIF
    'Public/Img/ausencia.gif', //IMAGEN AUSENCIA TEMPORAL GIF
    'Public/Img/desplazamiento.gif', // IMAGEN DESPLAZAMIENTO IMPULSADORA
    'Public/Img/Icons/Logo_72x72.png', //icons
    'Public/Img/Icons/Logo_96x96.png',
    'Public/Img/Icons/Logo_128x128.png',
    'Public/Img/Icons/Logo_144x144.png',
    'Public/Img/Icons/Logo_152x152.png',
    'Public/Img/Icons/Logo_192x192.png',
    'Public/Img/Icons/Logo_384x384.png',
    'Public/Img/Icons/Logo_512x512.png'

]

// Instalar service worker 
self.addEventListener('install', evt =>{
    
    evt.waitUntil(
        caches.open(CacheEstatica)
        .then(cache => {
            console.log("cargando...");
            cache.addAll(Layout);
        })
    );

});

//Activar service worker 
self.addEventListener('activate', evt =>{
    console.log("Serviceworker ha sido activado correctamente");
});


// eventos de recuperacion fetch
self.addEventListener('fetch' , evt => {
   
    //BUSCAR EN LA CACHE SI EXISTE LA SOLICITUD 
    evt.respondWith(
        caches
        .match(evt.request)
        .then(
            cacheRes => {
                return cacheRes || fetch(evt.request);
            }
        )
    );
});