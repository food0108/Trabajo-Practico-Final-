echo "Ingrese su nombre"
read nombre
echo "Buen dia , $nombre"
OPCION=0 
while [ "$OPCION" -ne "3" ]  
do 
    echo "Que te puedo ayudar?"
    echo "1.Mostrar la hora en 12hs. (Am/Pm)"
    echo "2.Reporte de clima de Bahia Blanca"
    echo "3.Salir." 
    echo "----------"
    echo "eleccion:" 
    read OPCION 
    case $OPCION in 
        1)
            echo ""
            echo "Son la/s"
            date +"%I:%M %p"
            echo ""
            ;;
        2)
            echo ""
            curl wttr.in/Bahia-Blanca?0
            echo ""
            ;;
    esac
done
echo "Muchas gracias!! $user"
