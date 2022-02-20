provider "aws"{
  region = "us-east-2"
}
resource "aws_cloudformation_stack" "example" {
  name = "example"
  parameters = {
    VpcId = vpc-6014600b
  }
  template_body = file("${path.master}/example.yml")
}
