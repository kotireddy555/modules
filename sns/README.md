# Simple Notification Service (SNS)

Terraform module which creates SNS on AWS.

 SNS is a fully managed publish/subscribe messaging and mobile notifications service for coordinating the delivery of messages to subscribing endpoints and clients.
* [SNS](https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage

```hcl

module "ec2" {
  source = "git::ssh://git@github.azc.ext.hp.com/MSSI-DevOps/TerraformModules.git//ec2?ref=master"

   name                   = "ARC"
   ami                    = "ami-ebd02392"
   instance_type          = "t2.micro"
   key_name               = "user1"
   vpc_security_group_ids = ["sg-12345678"]
   subnet_id              = "subnet-eddcdzz4"
   tag_cost_center        = "US12345678"
   tag_mru                = "7BBK"
   tag_location_code      = "47II19240000HO00"
   tag_eprid              = "ARC12345"
}

```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| display_name | Display name of the SNS topic  | string | `` | yes |
| name | Name of the SNS topic | string | `` | yes | 
| publish_identifiers | List of AWS user or role ARNs that have permission to publish to the SNS topic | list | - | yes |
| subscribe_identifiers | List of AWS user or role ARNs that have permissions to subscribe to the SNS topic. | list | - | yes |



## Outputs

| Name | Description |
|------|-------------|
| topic_arn | The Amazon Resource Name (ARN) of the SNS topic |
| topic_name | Name of the SNS topic |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

