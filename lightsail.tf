resource "aws_lightsail_instance" "example" {
  name               = "example-instance"
  availability_zone  = "us-east-1a"  # Change to your desired availability zone
  blueprint_id       = "amazon-linux-2-2022-03-04"
  bundle_id          = "nano_2_0"  # Change to your desired instance type
  key_pair_name      = "my-key-pair"  # Change to your key pair name

  user_data = <<-EOF
              #!/bin/bash
              echo "User data script executed" > /tmp/user_data.log
              # Add your custom user data here
              EOF
}


