terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

output "example_output_homedir" {
  value = provider::local::direxists(pathexpand("~/.ssh"))
}
