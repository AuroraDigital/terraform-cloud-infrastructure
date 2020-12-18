resource "aws_sqs_queue" "queue" {
  name = "queue"
  tags = {
    Terraform = "true"
  }
}
