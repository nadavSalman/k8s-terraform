# Preper MiniKube for terrafrom use 



Init variables using ENV :
```
# Make sure kubectl konfig plugin is installed.
export TF_VAR_minikube_host=$(kubectl konfig export minikube | yq .clusters[0].cluster.server)
```