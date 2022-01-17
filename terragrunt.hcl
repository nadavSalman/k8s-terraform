terraform {
  extra_arguments "common_vars" {
    commands = ["plan","refresh"]
    arguments = [
      "-var-file=variables.tfvars",
    ]
  }




  
  extra_arguments "apply_and_destroy_flags" {
    commands = ["apply", "destroy"]
    arguments = [
      "-var-file=variables.tfvars",
      "-auto-approve"
    ]
  }
}


