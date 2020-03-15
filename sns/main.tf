resource "aws_sns_topic" "sns" {
  name         = var.name
  display_name = var.display_name
}

data "aws_iam_policy_document" "policy-doc" {
  statement {
    sid = "${var.name}-subscribe"
    actions = [
      "sns:Subscribe",
    ]

    resources = [
      "${aws_sns_topic.sns.arn}",
    ]

    effect = "Allow"

    principals {
      type = "AWS"

      identifiers = ["${var.subscribe_identifiers}"]
    }
  }

  statement {
    sid = "${var.name}-publish"
    actions = [
      "sns:Publish",
    ]

    resources = [
      "${aws_sns_topic.sns.arn}",
    ]

    effect = "Allow"

    principals {
      type = "AWS"

      identifiers = ["${var.publish_identifiers}"]
    }
  }
}

resource "aws_sns_topic_policy" "topic-policy" {
  arn    = aws_sns_topic.sns.arn
  policy = data.aws_iam_policy_document.policy-doc.json
}
