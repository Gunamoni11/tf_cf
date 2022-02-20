resource "aws_cloudformation_stack" "my-new-stack" {
  name = "my-new-stack"
  parameters {
    Name="my-new-stack"
    Port="22"
    VpcId = "${vpc-6014600b}"
  }
  template_body = "${file("${path.module}/cf.tf")}"
}
