# EC2 Instance 

resource "aws_instance" "webserver" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  tags          = merge("${var.common_tags}", { Name = "${var.name_prefix}-${var.environment_prefix}-ec2" })
  user_data = templatefile("${path.module}/script.tpl", {
    service_name = "${var.service_name}"
  })

}
