docid=`pidof sudo dockerd`
echo $docid
sudo kill -9 $docid

