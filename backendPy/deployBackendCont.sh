echo "============BUILDING THE IMAGE    ================"
sudo ./buildBackendDocImg.sh
echo "==========RUNNING THE CONATINER ================"
sudo ./createBackendDocContainer.sh
echo "========== DONE ================"
