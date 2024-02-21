
function googleTranslateElementInit() {
    new google.translate.TranslateElement({
        pageLanguage: 'pt',
        includedLanguages: 'pt,en,fr,es,pt',
        layout: google.translate.TranslateElement.InlineLayout.SIMPLE
    }, 'google_translate_element');
}


$(document).ready(function(){
  $('#google_translate_element').bind('DOMNodeInserted', function(event) {
      $('.goog-te-menu-value span:first').html('Idioma');
      $('.goog-te-menu-frame.skiptranslate').load(function(){
          setTimeout(function(){
              $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('Translate');
          }, 100);
      });
  });
});

$('document').ready(function() {
  $('#google_translate_element').on("click", function() {
      // Change font family and color
      $("iframe").contents().find(".goog-te-menu2-item div, .goog-te-menu2-item:link div, .goog-te-menu2-item:visited div, .goog-te-menu2-item:active div") //, .goog-te-menu2 *
          .css({
              'color': '#544F4B',
              'background-color': '#e3e3ff'
          });
      // Change hover effects  #e3e3ff = white
      $("iframe").contents().find(".goog-te-menu2-item div").hover(function() {
          $(this).css('background-color', '#17548d').find('span.text').css('color', '#e3e3ff');
      }, function() {
          $(this).css('background-color', '#e3e3ff').find('span.text').css('color', '#544F4B');
      });

      // Change Google's default blue border
      $("iframe").contents().find('.goog-te-menu2').css('border', '1px solid #17548d');

      $("iframe").contents().find('.goog-te-menu2').css('background-color', '#e3e3ff');

      // Change the iframe's box shadow
      $(".goog-te-menu-frame").css({
          '-moz-box-shadow': '0 3px 8px 2px #666666',
          '-webkit-box-shadow': '0 3px 8px 2px #666',
          'box-shadow': '0 3px 8px 2px #666'
      });
  });
});
