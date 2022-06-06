provider "kubernetes" {
  config_path    = "/Users/nsalman/dev-me/k8s-terraform/minikube-config.yaml"
  host = var.minikube_host # kubectl proxy --port=33458 --address='0.0.0.0' --accept-hosts='^.*' &

}


#terragrunt destroy -target kubernetes_namespace.ns
resource "kubernetes_namespace" "ns" {
  for_each = toset(var.namespases) 
  metadata {
    name = each.key
  }
}