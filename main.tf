provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXYKJQW65T77VDAN2"
  secret_key = "wKp5W+sonZVNXMW5+RuQGrA3I4/2ffDGTrJj5iqI"
}

resource "aws_instance" "ec2_example" {
  ami           = "ami-08116b9957a259459"
  instance_type = "t2.micro"
  key_name      = "keyy"

  tags = {
    Name = "public_instance"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "keyy"           
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPrqeNmm3ZfnoaX9IpmW0PUPWhnpIad9XEetnL9mfpVuVX3dUJAa8kewgZHtN/aAjGUBoOHQ8tgEs+XuGOOxYRS5JObW56jgIJaz6DlCpwf0hqxpdX+jVeRtO+hF0mzx36T/n/HiMmndaLsRuhlVUuNYw/XQA3mPL92Rlq/EyR1ZHVSg6DdjEPIIYNjfC8L8+mv3BPJgt26vl+Pv3cFmWpzfoQlinlzg/xmAHqYxiWTKMWLWCaggEhb6MMShvIQjWiA5rsmT5GdpR0p0VEeAo3iqfnBHF4U20LTCtz24us3PSCn9qGUG3a7Ztf8fj4GoSjP/pbfhkywliXcadUOXnN nassim@DESKTOP-C2DPHLV"
     
}
