provider "kubernetes" {
  config_path    = "~/.kube/config"
  host = "localhost:33458"
}


#terragrunt destroy -target kubernetes_namespace.ns
resource "kubernetes_namespace" "ns" {
  for_each = toset(var.namespases) 
  metadata {
    name = each.key
  }
}