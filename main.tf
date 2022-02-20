resource "aws_cloudformation_stack" "example" {
  name = "example"
  parameters = {
    VpcId = var.vpc_id
  }
  template_body = file("${path.master}/example.yml")
}
