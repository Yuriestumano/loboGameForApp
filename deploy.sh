echo "Deseja commitar e enviar todas as modifições? S / N : [S] ";
read opcao 
if [ "$opcao" == "N" ] || [ "$opcao" == "n" ] 
then
    echo "Não enviar modifições!"
else
    git add * 
    git commit -m auto
    git pull
    git push
fi

ng build --prod
gcloud config set account palpitin@gmail.com
gcloud config set project palpitin2api
gcloud app deploy
