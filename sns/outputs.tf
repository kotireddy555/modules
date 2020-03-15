output "topic_arn" {
  value = "${aws_sns_topic.sns.arn}"
}

output "topic_name" {
  value = "${aws_sns_topic.sns.name}"
}
