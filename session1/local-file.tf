
resource "aws_instance" "angles11" {
  instance_type = "t2.micro"
  key_name      = "test"
  ami = "ami-06b09bfacae1453cb"
}


resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

resource "local_file" "angeles_del_mar" {
  content  = "foo!"
  filename = "${path.module}/angeles_del_mar"
}


resource "local_file" "Jilver" {
  content  = "hhhh"
  filename = "${path.module}/Jilver"
}
