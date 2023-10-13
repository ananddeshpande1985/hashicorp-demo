# EC2 Instance 

resource "aws_instance" "webserver" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  tags          = merge("${local.common_tags}", { Name = "${local.name_prefix}-${local.environment_prefix}-ec2" })
  depends_on    = [aws_iam_policy_attachment.web_server_attach]
  user_data = templatefile("${path.module}/script.tpl", {
    service_name = "${var.service_name}"
  })

}