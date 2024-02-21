function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'pt', includedLanguages: 'pt,en,ffr,es', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
}
    var comboGoogleTradutor = null; //Varialvel global
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({
            pageLanguage: 'pt',
            includedLanguages: 'pt,en,fr,es',
            layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL
        }, 'google_translate_element');
        comboGoogleTradutor = document.getElementById("google_translate_element").querySelector(".goog-te-combo");
    }
    function changeEvent(el) {
        if (el.fireEvent) {
            el.fireEvent('onchange');
        } else {
            var evObj = document.createEvent("HTMLEvents");

            evObj.initEvent("change", false, true);
            el.dispatchEvent(evObj);
        }
    }
    function trocarIdioma(sigla) {
        if (comboGoogleTradutor) {
            comboGoogleTradutor.value = sigla;
            changeEvent(comboGoogleTradutor);
        }
        $('.img-link').removeClass('img-link-selected');
        if(sigla=='pt'){
            $('#pt').addClass('img-link-selected')
        }else if(sigla=='en'){
            $('#en').addClass('img-link-selected')
        }else if(sigla=='fr'){
            $('#fr').addClass('img-link-selected')
        }else {
            $('#es').addClass('img-link-selected')
        }
    }

    function readCookie(name) {
        var c = document.cookie.split('; '),
        cookies = {}, i, C;

        for (i = c.length - 1; i >= 0; i--) {
            C = c[i].split('=');
            cookies[C[0]] = C[1];
        }
        return cookies[name];
    }
    var idioma = readCookie('googtrans');
    if(idioma==null || idioma=='/pt/pt'){
        $('#pt').addClass('img-link-selected')
    }else if(idioma=='/pt/en'){
        $('#en').addClass('img-link-selected')
    }else if(idioma=='/pt/fr'){
        $('#fr').addClass('img-link-selected')
    }else {
        $('#es').addClass('img-link-selected')
    }
