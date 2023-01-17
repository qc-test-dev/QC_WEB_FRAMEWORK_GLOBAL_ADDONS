# elementos_login_email={
#     'log_title' : 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[1]',
#     'log_correoText': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[2]/div[1]/span',
#     "reg_emailtextbox": 'xpath=//*[@id="emailLogin"]',
#     'log_siguiente': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[3]/div/button',
#     'log_cancelar': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[4]/div/button',
#     'log_continuaFB': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[5]/div/button',
#     'log_sesionAPPLE': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[6]/div/button',
#     'log_nuevo?': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[7]/span',
#     'log_RegLink': 'xpath=//*[@id="app"]/div/div[1]/div/div[2]/div/div/div[7]/span/a',
# }

elementos_login_email={
    'log_title' : 'xpath=//span[normalize-space()="Inicia sesión"]',
    'log_correoText': 'xpath=//*[contains(@class, "_2eE9y") and contains(.,//@span)]',
    #'log_correoText': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[2]/div[1]/span',
    #'log_correoText': 'xpath=//span[normalize-space()="¿Cuál es tu correo electrónico?"]',
    "reg_emailtextbox": 'xpath=//input[@id="emailLogin"]',
    'log_siguiente': 'xpath=//button[@id="submitEmail"]',
    'log_cancelar': 'xpath=//button[normalize-space()="CANCELAR"]',
    'log_continuaFB': 'xpath=//button[normalize-space()="CONTINÚA CON FACEBOOK"]',
    'log_sesionAPPLE': 'xpath=//button[normalize-space()="Iniciar sesión con Apple"]',
    #'log_nuevo?': 'xpath=//a[normalize-space()="Registrate"]',
    #'log_nuevo?': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[7]/span',
    'log_nuevo?': 'xpath=//*[contains(@class, "_17S02") and contains(.,"¿Nuevo en Claro video?" )]',
    'log_reg': 'xpath=//a[normalize-space()="Registrate"]',
    #Inicia Chat estaba pre-visto?
    #'log_RegLink': 'xpath=//*[@id="app"]/div/div[1]/div/div[2]/div/div/div[7]/span/a',
}
