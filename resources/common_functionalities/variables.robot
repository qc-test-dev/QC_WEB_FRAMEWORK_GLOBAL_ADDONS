*** Variables ***
#variables globales
${browser}            headlesschrome
${jenkins-chrome}       chrome
${browser-firefox}      firefox
${browser-safari}       safari
${email_valido}         qc_${pais}_roku@gmail.com
${email_novalido}       qc_${pais}_roku@gmail.com.mx
${pass_valido}          Claro123
${pass_valido_registro}    Claro123
${pass_novalido}        Claro123qq
${email_gratis}         abc0000000000000023@gmail.com
${pass_gratis}          Claro123
${content_add_favs}        jumanji

#DirPaths
${localpath}               /home/usr_admin/auto_qc/web_auto/QC_WEB_GENERIC_FRAMEWORK_GLOBAL/QC_WEB_FRAMEWORK_GLOBAL_ADDONS
${screenshots-folder}      ${localpath}/Resultados/screenshots
${textos_payment}          ${localpath}/resources/CV-POM/paymentPage/textosPayment
${path_cv-pom}             ${localpath}/resources/CV-POM



#urls
${url_register_page}            https://www.clarovideo.com/${pais_url}/register
${url_login_page}               https://www.clarovideo.com/${pais_url}/login
${url_landing_page}             https://www.clarovideo.com/${pais_url}/landing
${url_payment_page}             https://www.clarovideo.com/${pais_url}/payment
${url_politicas_page}           https://www.clarovideo.com/politicas_de_privacidad
${url_licenciaUsuario_page}     https://www.clarovideo.com/licencia_usuario_final

*** Settings ***
#importar variables de elementos web desde diccionanarios .py
Variables      ${path_cv-pom}/${pais}/loginPage/elementos_login_email.py
Variables      ${path_cv-pom}/${pais}/loginPage/textos_elementos_login_email.py
Variables      ${path_cv-pom}/${pais}/loginPage/elementos_login_pass.py
Variables      ${path_cv-pom}/${pais}/loginPage/textos_elementos_login_pass.py
Variables      ${path_cv-pom}/${pais}/anonymousLandingPage/elementos-landing-anonimo.py
Variables      ${path_cv-pom}/${pais}/anonymousLandingPage/textos-landing-anonimo.py
Variables      ${path_cv-pom}/${pais}/paymentPage/elements_payment_page.py
Variables      ${path_cv-pom}/${pais}/paymentPage/labels_payment_page.py
Variables      ${path_cv-pom}/${pais}/paymentPage/textos_promos_labels_payment_page.py
Variables      ${path_cv-pom}/${pais}/paymentPage/textos_promos_payment_page.py
Variables      ${path_cv-pom}/${pais}/HomePage/elementos_home_page.py
Variables      ${path_cv-pom}/${pais}/HomePage/textos_home_page.py
Variables      ${path_cv-pom}/${pais}/HomePage/textos_home_page.py
Variables      ${path_cv-pom}/${pais}/conocelaspromocionesPage/elementos_conocePromos.py
Variables      ${path_cv-pom}/${pais}/registerPage/elementos-registerPage.py
Variables      ${path_cv-pom}/${pais}/registerPage/textos-elementos-registerPage.py
Variables      ${path_cv-pom}/${pais}/terminosyCondicionesPage/elementos_terminosycondiciones.py
Variables      ${path_cv-pom}/${pais}/registerPage/textos-elementos-registerPage-pass.py
Variables      ${path_cv-pom}/${pais}/registerPage/elementos-registerPage-pass.py
Variables      ${path_cv-pom}/${pais}/profilesPage/elementos_profile_page.py
Variables      ${path_cv-pom}/${pais}/HomePage/profile_menu_page.py
Variables      ${path_cv-pom}/${pais}/HomePage/search_tab_home.py
Variables      ${path_cv-pom}/${pais}/PoliticasPrivacidadPage/politicas_de_privacidad.py
Variables      ${path_cv-pom}/${pais}/vcardMoviePage/elementos_VcardMovie_page.py


#importar variables de funciones .py
Variables      ${localpath}/resources/common_functionalities/email_random.py
