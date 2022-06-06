
variable minikube_host {
  type        = string
}
variable context {
  type        = string
  default     = "minikube" 
}


variable namespases {
  type        = list(string)
  description = "description"
}
