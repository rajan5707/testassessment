#sudo docker rm -f angcontain
sudo docker rm -f $(sudo docker ps -a -q)
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker delteing buildmmm"
#        exit 1
fi

sudo docker run -d -it --name backendcontainer -p 5000:5000 backendpy1:bpy1
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker build failed"
        exit 1
fi
echo "====CONTAINER IS RUNNING AT PORT = 5000"
