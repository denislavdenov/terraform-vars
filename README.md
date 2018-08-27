# 1.You have a default VPC and security group in your cloud provider - in this case AWS
# 2.It is possible to create a security group with Terraform, but in this exercise we are keeping it simple
# 3.You have to configure the default security group inbound and outbound rules to allow SSH traffic and ICMP or create a new security group like in the screenshot below using the AWS console

![Alt text](https://github.com/denislavdenov/terraform-vars/blob/master/screenshots/Screen%20Shot%202018-08-27%20at%2016.42.56.png "Optional title")


# 4.variables needed for that excersice that match the uploaded code
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
# 5. After variables are placed and ready to get values assigned, you need to create a module, in this exercise module is in servers folder , servers.tf
# 6. In order to be able to do SSH connection to the VM that is going to be created, you need to create a pair_key that is going to upload you public key to AWS which is also in servers.tf file.
# 6.1 Next step is to define the connection block where you specift the username for the selected AMI and expand the private_key variable or hardcode it from your local .ssh/id_rsa file like in this example
# 7.You need to make a file in your Documents folder that is going to be provisioned to the VM and change the name and path of the file in your code which is in the provisioning block of servers.tf file.

# 8.Read the uploaded code and practice 
