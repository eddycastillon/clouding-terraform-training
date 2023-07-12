
module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = var.ec2_instance_name
  instance_type = "t2.micro"
  key_name      = "test"
  tags = {
    Terraform   = "true"
    Environment = "dev2"
  }

}



module "ec2_instance11" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = "11"
  instance_type = "t2.micro"
  key_name      = "test"
  tags = {
    Terraform   = "true"
    Environment = "dev2"
  }

}

