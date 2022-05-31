provider "kubernetes" {
  config_path    = "minikube-config.yaml"
  host = "https://127.0.0.1:53505" # kubectl proxy --port=33458 --address='0.0.0.0' --accept-hosts='^.*' &

}


#terragrunt destroy -target kubernetes_namespace.ns
resource "kubernetes_namespace" "ns" {
  for_each = toset(var.namespases) 
  metadata {
    name = each.key
  }
}