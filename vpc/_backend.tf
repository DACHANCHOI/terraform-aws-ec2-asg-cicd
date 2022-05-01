// terraform {
//   backend "remote" {
//     hostname      = "app.terraform.io"
//     organization   = ""
//     workspaces {
//       name = "vpc"
//     }
//   }
// }
terraform {
  backend "s3" {
    bucket = "devops-tfbackend-dc"
    key    = "vpc/terraform.tfstate"
    region = "ap-northeast-2"
  }
}
