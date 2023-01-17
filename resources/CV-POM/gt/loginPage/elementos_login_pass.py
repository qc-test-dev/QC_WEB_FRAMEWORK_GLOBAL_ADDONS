# elementos_login_pass={
#     'log_pass_title': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[1]/span',
#     'log_pass_passText': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[2]/span',
#     "reg_pass_passtextbox": 'xpath=//*[@id="password"]',
#     'log_pass_siguiente': "xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[4]/div/button",
#     'log_pass_cancelar': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[5]/div/button',
#     'log_pass_olvidoPass': 'xpath=/html/body/div[2]/div/div[1]/div/div[2]/div/div/div[6]/div/button',
# }

elementos_login_pass={
    'log_pass_title': 'xpath=//*[contains(@class, "_3-Imn") and contains(.,//@span)]',
    'log_pass_passText': 'xpath=//*[contains(@class, "_2eE9y _3RJEJ") and contains(.,//@span)]',
    'reg_pass_passtextbox' : 'xpath=//input[@id="password"]',
    'log_pass_siguiente': 'xpath=//button[@id="submitPassword"]',
    'log_pass_cancelar': 'xpath=//button[normalize-space()="CANCELAR"]',
    'log_pass_olvidoPass': 'xpath=//button[normalize-space()="¿OLVIDASTE TU CONTRASEÑA?"]',
}
