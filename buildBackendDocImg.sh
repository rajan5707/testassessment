REG_USERNAME="rajan9886886836"
REG_PASSWORD="R@j@n5707"
echo "====> Logging into conatiner"
sudo docker login --username $REG_USERNAME --password $REG_PASSWORD
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker Login failed"
        exit 1
fi
echo "====>Initailising the image build "
sudo docker build . -f backendDockerFile.df -t backendpy1:bpy1
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker build failed"
        exit 1
fi
sudo docker tag backendpy1:bpy1 rajan9886886836/backendpy1:bpy1
echo "====> Inintialising Pushing the image to conatiner"
sudo docker push rajan9886886836/backendpy1:bpy1
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker PUSH failed"
        exit 1
fi
