#!/bin/bash

declare -a tests=(SuiteTestWEB)
#networksetup -setwebproxystate Wi-Fi off &&networksetup -setsecurewebproxystate Wi-Fi off
#killall -9 charles||killall -9 Charles
#charles -headless -config  ../com.xk72.charles.config -bg
#declare -a paises=(gt hn cr sv ni )
declare -a paises=(mx co )
#declare -a paises=(mx co gt hn pa do)

for testname in "${tests[@]}"
do
  declare  fecha=$(date +"%m_%d_%H:%M")
  export FECHA="$fecha"
  export   TESTNAME="$testname"
  #pabot --processes 1   --outputdir   Resultados/${fecha}   testCases/CV-MX-WEB-ACCESO.robot
  charles_proxy_configuration_file_path="../resources/charles_proxy/config_by_country_chls/com.xk72.charles.config"
  charles -headless -config  ${charles_proxy_configuration_file_path}  -bg
  for pais in "${paises[@]}"
  do
    export PAIS="$pais"
    declare -A paises_complete
    paises_complete=([mx]='mexico'   [co]='colombia' [do]='dominicana' [gt]='guatemala' [hn]='honduras' [pa]='panama' [cr]='costarica' [sv]='elsalvador' [ni]='nicaragua' )
    export PAIS_URL="${paises_complete[$pais]}"
    #export PAIS=$"pais"
    #echo ${paises_complete[$pais]}
    #echo ${PAIS}
    #echo ${pais}
    #echo ${PAIS_URL}

    robot  --outputdir    ../Resultados/${TESTNAME}_${PAIS}_${FECHA}     --variable pais:${pais}  --variable pais_url:${PAIS_URL}  ${TESTNAME}.robot

  done
done
networksetup -setwebproxystate Wi-Fi off &&networksetup -setsecurewebproxystate Wi-Fi off
networksetup -setwebproxystate "USB 10/100/1000 LAN"  off &&networksetup -setsecurewebproxystate "USB 10/100/1000 LAN" off
killall -9 charles||killall -9 Charles


#charles_local_path = "../../Resultados/charles_traces/"

