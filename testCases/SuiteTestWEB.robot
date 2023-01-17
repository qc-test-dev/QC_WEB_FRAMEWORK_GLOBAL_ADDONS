*** Settings ***
Documentation    Ambiente Global FrameWork generico para ajustar de acuerdo al  BRF
Resource             ../resources/common_functionalities/tests_keywords.robot
Resource             ../resources/common_functionalities/libraries_keywords.robot
Test Setup            -CONFIGURACIÓN TESTCASE-
Test Teardown        -TERMINAR CONFIGURACIÓN TESTCASE-
Suite Setup          -CONFIGURACIÓN INICIAL SUITETEST-
Suite Teardown       -TERMINAR CONFIGURACIÓN SUITETEST-


*** Test Cases ***
Test Case 1 prueba Login ${pais}
    #[Tags]    mx
    -LOGIN HOME CV CON PERFIL-     ${email_valido}    ${pass_valido}
    #-ir a una vcard subs de picardia via url, parametrizada por pais
    #-validar los textos y precio (ver brf)



CV-WEB-ACCESO-VALIDAR LOGOUT

    -LOGIN HOME CV-      ${email_valido}    ${pass_valido}
    -LOGOUT HOME CV-
