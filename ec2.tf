resource "aws_instance" "tf-ec1" {
 ami = "ami-089a545a9ed9893b6"
 instance_type = "t2.micro"
 key_name = "tests"
 vpc_security_group_ids = ["${aws_security_group.tf-sg.id}"]
 subnet_id = "${aws_subnet.tf-pub-sn-1.id}"
 associate_public_ip_address = true
 user_data = "${file("data.sh")}"
tags = {
 Name = "tf-ec1"
}
}

