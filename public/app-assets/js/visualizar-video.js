$(document).on('click','a[data-role=show-video]',async function(e){
    var nomeTitulo = document.getElementById('nomeTitulo');
    var visualizar = document.getElementById('visualizar');
    var nome = $(this).data('src');
    nomeTitulo.innerText = $(this).data('nome');
    $('#origem-video').attr('src',nome);
    visualizar.load();
  });
$('#modal-visualizar-video').on('hidden.bs.modal',function(){
    var visualizar = document.getElementById('visualizar');
    $('#origem-video').attr('src','');
    visualizar.load();
})

$(document).on('click','a[data-role=show-video-iframe]',async function(e){
    var nomeTitulo = document.getElementById('nomeTitulo-iframe');
    var nome = $(this).data('src').replaceAll('watch?v=','embed/').replaceAll('youtu.be/','youtube.com/embed/');
    nomeTitulo.innerText = $(this).data('nome');
    $('#origem-video-iframe').attr('src',nome);
    visualizar.load();
  });

$('#modal-visualizar-video-iframe').on('hidden.bs.modal',function(){
    var visualizar = document.getElementById('origem-video-iframe');
    $('#origem-video-iframe').attr('src','');
})



