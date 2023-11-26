data "aws_ami" "main" {
  most_recent = true
  filter {
    name   = "name"
    values = var.ami_name_filter
  }
  owners = var.ami_owner_name
}
resource "aws_instance" "main" {
  ami = try(data.aws_ami.main.id, var.ami_id)
  instance_type = var.ec2_type
  tags = var.ec2_tags
}