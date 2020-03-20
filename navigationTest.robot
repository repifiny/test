*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Ouvrir navigateur
    Ouvrir Chrome
    Set Browser Implicit Wait    5
    Sleep    2    
    Close Browser    
#Go to Linkedin
#    Ouvrir Linkedin
#    Click Link    href=https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin 
#Inscription CGM
#    Ouvrir CGM
#    utilisateur    ${user}
#    mot de passe    ${mdp}
#    Click Button    id=SubmitLogin
#    Input Text    id=search_query_top    bourts   
#    Click Button    name=submit_search     
    #Click Element    title=A1
    #Click Button    name=Submit  
    #Click Link    href=https://inscriptioncgm.mg/a1/62-essai-ne-pas-acheter.html    
    #Click Link    href=https://inscriptioncgm.mg/commande-rapide
    #Select Checkbox    id=uniform-cgv  
    #Click Link    href=javascript:$('#ariary_net_form').submit();
    #Input Text    id=numcompte    AG329
    #Input Password    id=mdp    Ariary1
    
*** Variables ***
${URL_GOOGLE}    https://google.com
${URL_LINKEDIN}    https://fr.linkedin.com
${URL_CGM}    https://inscriptioncgm.mg/mon-compte
${user}    test@test.test
${mdp}    mdp
${NAVIGATEUR}    Chrome

*** Keywords ***
Ouvrir Chrome
    Open Browser    ${URL_GOOGLE}    ${NAVIGATEUR}
Ouvrir Linkedin
    Open Browser    ${URL_LINKEDIN}    ${NAVIGATEUR}
Ouvrir CGM
    
    Open Browser    ${URL_CGM}    ${NAVIGATEUR}
utilisateur
    [Arguments]    ${user}
    Input Text    id=email    ${user}
mot de passe
    [Arguments]    ${mdp}
    Input Text    id=passwd    ${mdp}