#!/bin/bash

function getKubeProxyProcess {
    echo `ps -ef | grep "kubectl proxy" | grep -v "grep" | awk '{print $2}'`
}

kubeProxyId=$(getKubeProxyProcess)

if [ ! -z $kubeProxyId ]
then
    echo "kubectl proxy process id: " $(getKubeProxyProcess)
    echo "Stop kubectl proxy"
    kill $kubeProxyId
fi