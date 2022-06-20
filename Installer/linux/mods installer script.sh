#!/usr/bin/env bash

#intro
echo "Welcome to the QQA Modpack Installation Script for Linux. Please Follow Instructions in the terminal prompt"
sleep 3

#start the user interface animations
#./InstallerWiz &

sleep 3

#check if Directory exists
if [ -d ~/.minecraft/QQA-modded/ ]
then
    echo "Existing Install, Updating"
else
    echo "Brand New Install, Making New Directory"
    #edit launcher profile
    echo "Editing Launcher Profile"
    cp ~/.minecraft/launcher_profiles.json ~/.minecraft/launcher_profiles.json.old
    #./ProfileEdit
    #https://www.youtube.com/watch?v=2pBVlpLM1Sc
    #https://www.youtube.com/watch?v=S1YIosjYmeg
    #"QQA-Modded" : {
    #  "gameDir" : "QQA MODDED DIRECTORY",
    #  "icon" : "Cake",
    #  "javaArgs" : "-Xmx8G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M",
    #  "lastVersionId" : "1.12.2-forge-14.23.5.2860",
    #  "name" : "QQA-Modded",
    #  "type" : "custom"
    #},


fi

sleep 3

echo "Cloning Modpack Repository"
echo "Repository will include configs and forge installer"
cd ~/.minecraft/
git clone https://github.com/jurassicjordan/QQA-modded.git

sleep 3

#start forge installer if not installed
#check first
if [ ! -d ~/.minecraft/versions/1.12.2-forge-14.23.5.2860 ]
then
    echo "Forge Version Is missing, Executing Jar"
    echo "Please compete installation"
    java -jar ~/.minecraft/QQA-modded/inst-bin/forge-1.12.2-14.23.5.2860-installer.jar
else
    echo "Forge Version is installed, continue with installation process"
fi


sleep 3

echo "Installation Complete"
echo "Follow the instructions for setting up a new profile"
#exit

#$SHELL
