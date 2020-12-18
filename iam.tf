resource "aws_iam_user" "user" {
  name = "user"
  tags = {
    Terraform = "true"
  }
}

resource "aws_iam_user_policy" "policy" {
  name   = "user-policy"
  user   = aws_iam_user.user.name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
EOF
}
