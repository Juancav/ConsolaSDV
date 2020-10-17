

  if ('serviceWorker' in navigator) {
        navigator.serviceWorker.register('/ConsolaSDV/sw.js')
    .then((reg)=> console.log('El Service Worker fue instalado correctamente',reg))
    .catch((err)=> console.log('Error, Fallo la instalacion del service worker',err));
  }else{
    console.log("El service worker no pudo ser instalado ")
  }