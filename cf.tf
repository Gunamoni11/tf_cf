resource "aws_cloudformation_stack" "my-new-stack" {
  name = "my-new-stack"
  parameters {
    Name="my-new-stack"
    Port="22"
    VpcId = "${var.vpc_id}"
  }
  template_body = "${file("${path.module}/mystack.yml")}"
}