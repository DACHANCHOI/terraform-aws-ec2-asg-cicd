# terraform-aws-ec2-asg-cicd
terraform 코드를 활용한 AWS ECS 프로비저닝
![image](https://user-images.githubusercontent.com/77256060/166135736-495889dd-42bb-40f0-bc15-40f3c1c73871.png)

### Terraform Workspace List

1. VPC
2. Infra(WAS-ASG, WEB-ASG, WAS-ALB, WEB-ALB, EFS, Launch Template, S3)
3. AWS CodeSeries (CodePipeline, CodeDeploy, Code Build)

### Work Flow

1. VPC생성 (public, private, private-db 서브넷 각각 두개의 AZ로 생성)
2. EFS 생성
3. ASG, Launch Template(User date : efs mount, ecs agent install), ALB 생성
4. WAS-EC2 생성, WEB-EC2 생성
5. userdata : EFS 연결, WEB & WAS proxy 연결

### 사용 방법

1. git clone https://github.com/DACHANCHOI/terraform-aws-ec2-asg-cicd.git
2. 환경변수 추가 (terraform.state.tfvars : aws_account_id)
3. terraform Backend 수정
4. terraform init && apply 
