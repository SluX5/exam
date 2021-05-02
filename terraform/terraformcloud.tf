terraform {
  backend "remote" {
    organization = "slux"

    workspaces {
      name = "slux_exam"
    }
  }
}