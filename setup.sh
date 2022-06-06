#!/usr/local/bin/bash







export_tf_env(){
    export TF_VAR_minikube_host=$(kubectl konfig export minikube | yq .clusters[0].cluster.server)
}

main(){
    export_tf_env
}