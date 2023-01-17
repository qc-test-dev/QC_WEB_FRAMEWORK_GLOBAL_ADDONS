*** Settings ***
Library        Selenium2Library       implicit_wait=20s
Library        OperatingSystem
Library        Process
Library        Collections
Library       ../../resources/charles_proxy/charles_library.py
Variables        ../common_functionalities/email_random.py
Resource       ../common_functionalities/variables.robot
Resource      ../common_functionalities/libraries_keywords.robot



*** Keywords ***
-CLICK ELEMENTO-
    [Arguments]   ${elemento}
    Wait Until Page Contains Element  ${elemento}
    click element     ${elemento}

-GET TEXT-
    [Arguments]   ${elemento}
    get text    ${elemento}

-ABRIR LOGIN PAGE-
   OPEN BROWSER   ${url_login_page}     ${browser}
   Set Window Size     1200   1200

-ABRIR PAYMENT PAGE-
   -LOGIN HOME CV-     ${email}   ${password}
     go to   ${url_payment_page}
     Set Window Size     1200   1200

-LOGIN HOME CV-
   [Arguments]                       ${email}   ${password}
  -ABRIR LOGIN PAGE-
  -INGRESAR EMAIL PARA LOGIN-        ${email}
  -INGRESAR PASSWORD PARA LOGIN-     ${password}
   Sleep   10
  -VALIDAR CARGA HOME-

-LOGIN HOME CV CON PERFIL-
   [Arguments]                       ${email}   ${password}
  -ABRIR LOGIN PAGE-
  -INGRESAR EMAIL PARA LOGIN-        ${email}
  -INGRESAR PASSWORD PARA LOGIN-     ${password}
   Sleep   10
  -CLICK IMAGEN DE PERFIL-
   Sleep   10
  -VALIDAR CARGA HOME-


-LOGOUT HOME CV-
   mouse down       ${profile_menu_page['close_session_inMenu']}
   click element       ${profile_menu_page['close_session_button']}


-VALIDAR USUARIO CV-
   [Arguments]                       ${email}   ${password}
  -ABRIR LOGIN PAGE-
  -INGRESAR EMAIL PARA LOGIN-        ${email}
  -INGRESAR PASSWORD PARA LOGIN-     ${password}


-VALIDAR USUARIO NO VALIDO CV-
   [Arguments]                       ${email}   ${password}
  -ABRIR LOGIN PAGE-
  -INGRESAR EMAIL PARA LOGIN-        ${email}
  -INGRESAR PASSWORD PARA LOGIN-     ${password}
   wait until page contains element    xpath=//div[@class='_l88cd _2hS3x']

-INGRESAR TEXTO PARA SEARCH WRONG WORD-
  [Arguments]                        ${Busqueda_fake}
   wait until element is visible     ${Elementos_Search['buscador']}
   input text                        ${Elementos_Search['buscador']}       ${Busqueda_fake}
   Press Keys    ${Elementos_Search['Buscar']}    ENTER
   Element Should Be Visible   ${Elementos_Search['Sorry']}
   Sleep    8

-INGRESAR TEXTOS PARA SEARCH CyR-
  [Arguments]                        ${Renta}  ${Compra}
   wait until element is visible     ${Elementos_Search['buscador']}
   input text                        ${Elementos_Search['buscador']}       ${Renta}
   Press Keys    ${Elementos_Search['Buscar']}    ENTER
   Element Should Be Visible   ${Elementos_Search['Renta']}
   Sleep  8
   Input Text    ${Elementos_Search['buscador']}    ${Compra}
   Press Keys    ${Elementos_Search['Buscar']}    ENTER
   Element Should Be Visible   ${Elementos_Search['Compra']}
   Sleep    8

-INGRESAR TEXTOS PARA SEARCH-
  [Arguments]                        ${Canal_fake}
   wait until element is visible     ${Elementos_Search['buscador']}
   input text                        ${Elementos_Search['buscador']}       ${Canal_fake}
   click button                      ${Elementos_Search['buscador']}
   Sleep    8

-VALIDAR TEXTOS Y ELEMENTOS LIVE TV NO ESTEN Y ESTEN-
  [Arguments]                        ${Canal_fake}  ${Canal_LiveTV}
  wait until element is visible     ${Elementos_Search['buscador']}
  input text                        ${Elementos_Search['buscador']}       ${Canal_fake}
  Element Should Not Be Visible   ${Elementos_Search['Canales_TV']}
  Sleep  5
  Press Keys    ${Elementos_Search['Buscar']}    ENTER
  input text                        ${Elementos_Search['buscador']}       ${Canal_LiveTV}
  Element Should Be Visible      ${Elementos_Search['Canales_TV']}
  Sleep  5


-INGRESAR EMAIL PARA LOGIN-
  [Arguments]                        ${email}
   wait until element is visible     ${elementos_login_email['reg_emailtextbox']}
   input text                        ${elementos_login_email['reg_emailtextbox']}       ${email}
   click button                      ${elementos_login_email['log_siguiente']}

-INGRESAR PASSWORD PARA LOGIN-
    [Arguments]                      ${password}
    wait until element is visible    ${elementos_login_pass['reg_pass_passtextbox']}
    input text                       ${elementos_login_pass['reg_pass_passtextbox']}    ${password}
    click button                     ${elementos_login_pass['log_pass_siguiente']}

-INGRESAR EMAIL PARA REGISTRO-
   [Arguments]          ${EMAIL_RANDOM}
   wait until element is visible     ${elementos_register_page['reg_emailtextbox']}
   input text                        ${elementos_register_page['reg_emailtextbox']}       ${EMAIL_RANDOM}
   click element                      ${elementos_register_page['reg_terms_check']}
   click button                      ${elementos_register_page['reg_siguiente']}

-INGRESAR PASSWORD PARA REGISTRO-
  [Arguments]                        ${pass_valido}
   wait until element is visible     ${elementos_register_page_pass['reg_passfield']}
   input text                        ${elementos_register_page_pass['reg_passfield']}       ${pass_valido}
   click button                      ${elementos_register_page_pass['reg_siguiente']}



-CLICK IMAGEN DE PERFIL-
    Sleep   10
    ${passed}=   Run Keyword And Return Status       wait until page contains element       ${elementos_profile_page['selectProfile_1_image']}
    run keyword if    ${passed}    click element   ${elementos_profile_page['selectProfile_1_image']}



-VALIDAR CARGA HOME-
    Sleep   4
    wait until page contains element        ${elementos_home_page['home_lupa']}


-IR A POLITICAS DE PRIVACIDAD-
  go to   ${url_politicas_page}

-IR A LICENCIA DE USUARIO FINAL-
  go to   ${url_licenciaUsuario_page}


-CLICK TERMINOS Y PROMOCIONES TELMEX-
    [Arguments]           ${elemento}
    wait until page contains element     ${elemento}
     click element     ${elemento}


-CLICK NODO CATALOGO-
  wait until page contains element    ${elementos_home_page['home_nodo_catalogo']}
  click element   ${elementos_home_page['home_nodo_catalogo']}

-CLICK SUBNODO PARAMOUNT-
  scroll element into view    ${elementos_nodo_catalogo_page['catalogo_subnodo_paramount']}
  wait until page contains element    ${elementos_nodo_catalogo_page['catalogo_subnodo_paramount']}
  click element   ${elementos_nodo_catalogo_page['catalogo_subnodo_paramount']}

-CLICK SUBNODO PELICULAS-
  scroll element into view    ${elementos_nodo_catalogo_page['catalogo_subnodo_peliculas']}
  wait until page contains element    ${elementos_nodo_catalogo_page['catalogo_subnodo_peliculas']}
  click element   ${elementos_nodo_catalogo_page['catalogo_subnodo_peliculas']}

-CLICK SUBNODO SERIES-
  scroll element into view    ${elementos_nodo_catalogo_page['catalogo_subnodo_series']}
  wait until page contains element    ${elementos_nodo_catalogo_page['catalogo_subnodo_series']}
  click element   ${elementos_nodo_catalogo_page['catalogo_subnodo_series']}



-ESPERAR ELEMENTO-
        [Arguments]   ${elemento}
        wait until element is visible     ${elemento}

-INGRESAR TEXTO-
    [Arguments]                      ${elemento}   ${text}
    input text                       ${elemento}   ${text}


-ABRIR REGISTER PAGE-
    OPEN BROWSER       ${url_register_page}     ${browser}
     Set Window Size    1200    1000


-ABRIR LANDIND PAGE-
  open browser     ${url_landing_page}    ${browser}
  Set Window Size    1200    1000

-ABRIR POLITICAS PAGE-
  open browser      ${url_politicas_page}    ${browser}
   Set Window Size    1200    1000
