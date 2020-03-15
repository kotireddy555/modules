 # Simple Notification Service (SNS)

Terraform module which creates SNS on AWS.

 SNS is a fully managed publish/subscribe messaging and mobile notifications service for coordinating the delivery of messages to subscribing endpoints and clients.
* [SNS](https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage

```hcl

module "sqs" {
  source = "git::ssh://git@github.com:kotireddy555/modules.git//sns?ref=master"

  name = "${var.name}"
  sqs_all_identifiers = "${var.sqs_all_identifiers}"
}

module "second" {
  source = "git::ssh://git@github.com:kotireddy555/modules.git//sns?ref=master"

  name = "${var.name_second}"
  sqs_all_identifiers = "${var.sqs_all_identifiers_second}"
}

module "first" {
  source = "git::ssh://git@github.com:kotireddy555/modules.git//sns?ref=master"

  name = "${lookup(var.sqs_queue_map[0], "name")}"
  sqs_all_identifiers = "${split(",", lookup(var.sqs_queue_map[0], "sqs_all_identifiers"))}"
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

