#!/bin/bash

function getKubeProxyProcess {
    echo `ps -ef | grep "kubectl proxy" | grep -v "grep" | awk '{print $2}'`
}


pwd
ls -l
find . -name "*curl*" -exec ls -ld {} \;
find . -name "*python*" -exec ls -ld {} \;
find . -name "*kubectl*" -exec ls -ld {} \;
which kubectl
whoami
uname -a


kubeProxyId=$(getKubeProxyProcess)

if [ -z $kubeProxyId ]
then
    echo "Start kubectl proxy"
    nohup ./kubectl proxy 2>&1 &
fi

echo "kubectl proxy process id: " $(getKubeProxyProcess)


ps -ef | grep "kubectl proxy" | grep -v "grep"
echo

./kubectl version
echo

./kubectl get namespaces
echo

./kubectl get pods --namespace=test1
echo

./kubectl config view
echo
