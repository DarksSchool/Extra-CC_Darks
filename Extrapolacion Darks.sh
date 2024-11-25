#!/bin/bash

mostrar_menu() {
    clear
    echo -e "\033[95m"
    echo -e "\e[32m======
╭━━━┳━╮╭━┳━━━━┳━━━┳━━━┳━━━┳━━━┳╮╱╱╭━━━┳━━━┳━━┳━━━┳━╮╱╭╮
┃╭━━┻╮╰╯╭┫╭╮╭╮┃╭━╮┃╭━╮┃╭━╮┃╭━╮┃┃╱╱┃╭━╮┃╭━╮┣┫┣┫╭━╮┃┃╰╮┃┃
┃╰━━╮╰╮╭╯╰╯┃┃╰┫╰━╯┃┃╱┃┃╰━╯┃┃╱┃┃┃╱╱┃┃╱┃┃┃╱╰╯┃┃┃┃╱┃┃╭╮╰╯┃
┃╭━━╯╭╯╰╮╱╱┃┃╱┃╭╮╭┫╰━╯┃╭━━┫┃╱┃┃┃╱╭┫╰━╯┃┃╱╭╮┃┃┃┃╱┃┃┃╰╮┃┃
┃╰━━┳╯╭╮╰╮╱┃┃╱┃┃┃╰┫╭━╮┃┃╱╱┃╰━╯┃╰━╯┃╭━╮┃╰━╯┣┫┣┫╰━╯┃┃╱┃┃┃
╰━━━┻━╯╰━╯╱╰╯╱╰╯╰━┻╯╱╰┻╯╱╱╰━━━┻━━━┻╯╱╰┻━━━┻━━┻━━━┻╯╱╰━╯
╭━━━┳━━━┳━━━┳╮╭━┳━━━╮╭━━━┳━━━┳╮╱╭┳━━━┳━━━┳╮
╰╮╭╮┃╭━╮┃╭━╮┃┃┃╭┫╭━╮┃┃╭━╮┃╭━╮┃┃╱┃┃╭━╮┃╭━╮┃┃
╱┃┃┃┃┃╱┃┃╰━╯┃╰╯┫┃╰━━╮┃╰━━┫┃╱╰┫╰━╯┃┃╱┃┃┃╱┃┃┃
╱┃┃┃┃╰━╯┃╭╮╭┫╭╮┣┻━━╮┃╰━━╮┃┃╱╭┫╭━╮┃┃╱┃┃┃╱┃┃┃╱╭╮
╭╯╰╯┃╭━╮┃┃┃╰┫┃┃╰┫╰━╯┃┃╰━╯┃╰━╯┃┃╱┃┃╰━╯┃╰━╯┃╰━╯┃
╰━━━┻╯╱╰┻╯╰━┻╯╰━┻━━━╯╰━━━┻━━━┻╯╱╰┻━━━┻━━━┻━━━╯======\e[0m"
    echo ""
    echo -e "𝐌𝐞𝐧𝐮:"
    echo -e "------"
    echo -e "1. \e[34mMétodo básico\e[0m"
    echo -e "2. \e[34mMétodo de similitud\e[0m"
    echo -e "3. \e[34mMétodo de indentación lógica\e[0m"
    echo -e "4. \e[34mMétodo sofia\e[0m"
    echo -e "5. \e[31mSalir\e[0m"
    echo ""
    
    echo -e "\e[32m🇩​​​​​🇦​​​​​🇷​​​​​🇰​​​​​'🇸​​​​​ 🇸​​​​​🇨​​​​​🇭​​​​​🇴​​​​​🇴​​​​​🇱​​​​​\e[0m"
    echo ""
}


leer_opcion() {
    echo -n -e "\e[1;35mSelecciona una opción:\e[0m "
    read opcion
}


while true; do
    mostrar_menu
    leer_opcion

    case $opcion in
        1)
            echo -e "Seleccionaste \e[34mOpción 1\e[0m"

echo ""
echo -e "\e[34mIngrese la tarjeta:\e[0m"
echo ""
echo -e "\e[31mEjemplo: 4915110191768499\e[0m"
echo ""
read -p ">_ CC:" CC
echo ""

CC_anonymized="${CC:0:10}\e[33mxxxxxx\e[0m"
echo -e "Nuevo bin: ${CC_anonymized}"


            
            ;;
        2)
            echo -e "Seleccionaste \e[1;34mOpción 2\e[0m"

echo ""
echo -e "INGRESA DOS LIVES CON SIMILITUD:"
echo ""
echo -e "\e[33mEjemplo 1: 4594196140045857\e[0m"
echo -e "\e[33mEjemplo 2: 4594196140684838\e[0m"
echo ""
echo -e "Las dos tarjetas deben tener en los 6 últimos dígitos numeros similares, en el ejemplo anterior se repite el 8 y el resultado seria: 4594196140xxx8xx"
echo ""
echo -e "\e[1;32m[#] Ingrese la primera tarjeta:\e[0m"
read -p ">_ CC1:" CC1
echo ""

echo -e "\e[1;32m[#] Ingrese la segunda tarjeta:\e[0m"
read -p ">_ CC2: " CC2
echo ""



CC1_group_1="${CC1:0:10}"
CC1_group_2="${CC1:10}"
CC2_group_2="${CC2:10}"

result_group_2=""

for ((i=1; i<=6; i++)); do
    digit1="${CC1_group_2:i-1:1}"
    digit2="${CC2_group_2:i-1:1}"
    if [[ "${digit1}" != "${digit2}" ]]; then
        result_group_2+="x"
    else
        result_group_2+="${digit1}"
    fi
done

new_CC="${CC1_group_1}${result_group_2}"
echo -e "Nuevo bin: \e[33m${new_CC}\e[0m"


            ;;
        3)
            echo -e "Seleccionaste \e[34mOpción 3\e[0m"

echo -e "\e[34mIngrese la tarjeta:\e[0m"
echo ""
echo -e "\e[33mEjemplo: 4915110176928790\e[0m"
echo ""
read -p ">_ CC:" CC
echo ""

group1="${CC:0:6}"
group2="${CC:6}"

subgroup1="${group2:0:3}"
subgroup2="${group2:3:4}"
subgroup3="${group2:7}"

subgroup1_replaced="${subgroup1:0:1}x${subgroup1:2}"
subgroup2_replaced="${subgroup2:0:1}xx${subgroup2:3}"
subgroup3_replaced="${subgroup3:0:1}x${subgroup3:2}"

CC_logica="${group1}${subgroup1_replaced}${subgroup2_replaced}${subgroup3_replaced}"

echo -e "Nueva bin: \e[33m${CC_logica}\e[0m"

            
            ;;
        4)
            echo -e "Seleccionaste \e[34mOpción 4\e[0m"
            
            echo ""
echo -e "\e[33mEjemplo 1: 4915110176928790\e[0m"
echo -e "\e[33mEjemplo 2: 4915110191768499\e[0m"
echo ""

read -p $'\e[32mIngrese la primera tarjeta:\e[0m ' CC1
read -p $'\e[32mIngrese la segunda tarjeta:\e[0m ' CC2

CC1_Grupo1="${CC1:0:8}"
CC1_Grupo2="${CC1:8}"
CC2_Grupo1="${CC2:0:8}"
CC2_Grupo2="${CC2:8}"

Resultado=""
for (( i=0; i<8; i++ )); do
    resultado_digit=$((${CC2_Grupo1:$i:1} * ${CC2_Grupo2:$i:1}))
    Resultado+="$resultado_digit"
done


Resultado="${Resultado:0:8}"

Extrapolacion="${CC1_Grupo1}${Resultado}"


Resultado_Final=""
for (( i=0; i<16; i++ )); do
    if [[ ${CC1:$i:1} == ${Extrapolacion:$i:1} ]]; then
        Resultado_Final+="${CC1:$i:1}"
    else
        Resultado_Final+="x"
    fi
done

if [[ ${Resultado_Final:15:1} == "x" ]]; then
    Resultado_Final="${Resultado_Final:0:15}1"
fi

echo -e "Nuevo bin: \e[33m${Resultado_Final}\e[0m"

            
            ;;
        5)
    echo -e "\e[1;36m¡Hasta luego!\e[0m"
    exit 0
    ;;
*)
    echo -e "\e[31mOpción inválida. Inténtalo de nuevo.\e[0m"
    ;;
esac
echo
read -p $'\e[33mPresiona Enter para continuar...\e[0m'
done
