aleatorio=$(( $RANDOM % 50 + 1 ))
text="Bienvenido a adivinador de numeros!!"
echo $text
contador=0
for i in {1..10}
do
    contador=$i
    echo "Ingresar un numero"
    read numero
    if ["$numero" -lt "1"] && ["$numero" -gt "50"];
    then 
        echo "Por favor ingrese un numero entre 1 y 50."    
        contador=11
        break
    elif ["$numero" -lt "$aleatorio"]
    then
        echo "El numero que buscas es mayor al que ingresaste.Intenta con otro numero."
    elif ["$numero" -gt "$aleatorio"]
    then 
        echo "El numero que buscas es menor al que ingresaste.Intenta con otro numero."
    else
        break
    fi
done
if ["$contador" -le "5"]
then
    echo "Felicidades!! Sos un Crack con IQ mas de 120"
elif ["$contador" -ge "6"] && ["$contador" -le "10"]
then 
    echo "Bien ahi!! Tomate un descanso" 
else 
    echo "Ok Chau."
fi