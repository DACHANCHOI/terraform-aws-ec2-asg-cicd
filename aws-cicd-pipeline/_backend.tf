// terraform {
//   backend "remote" {
//     hostname     = "app.terraform.io"
//     organization = ""

//     workspaces {
//       name = "aws-cicd-pipeline"

//     }
//   }
// }
terraform {
  backend "s3" {
    bucket = "devops-tfbackend-dc"
    key    = "codeSeries/terraform.tfstate"
    region = "ap-northeast-2"
  }
}