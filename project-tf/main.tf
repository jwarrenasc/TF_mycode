/* Understanding Modules
   main.tf - part of the "root module", this file defines the provider and then reaches for a prebuilt solution, "module.my_container" */

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

module "my_container" {
  source = "./my_modules/container_maker"
  container_name = var.container_name_from_root
}
