terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

module "private-module" {
  source  = "app.terraform.io/org-kplabs/private-module/kplabs"
  version = "1.0.0"
  word_count = 4
}

output "final_pet_name" {
  value = module.my_pet.id
}
