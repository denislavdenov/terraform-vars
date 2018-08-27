# You have a default VPC and security group in your cloud provider - in this case AWS
# You have to configure the default security group inbound and outbound rules to allow SSH traffic and ICMP or create a new security group like in the screenshot below

![Alt text](https://github.com/denislavdenov/terraform-vars/blob/master/screenshots/Screen%20Shot%202018-08-27%20at%2016.42.56.png "Optional title")


# variables needed for that excersice that match the uploaded code
Create a file `variables.tf`

``` bash
aws_secret_key     = ""
aws_access_key     = ""
ami                = ""
instance_type      = ""
public_key         = ""
private_key        = ""
identity           = ""
security_group_id  = ""
```

# Read the uploaded code and practice as you have to check and change the username for the connection if you are using different AMI
