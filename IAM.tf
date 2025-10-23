resource "aws_iam_role" "dax_role" {
  name = "dax-cluster-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "dax.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "waf_cloudwatch_logs_policy" {
  name        = "WAFCloudWatchLogsPolicy"
  description = "IAM policy for WAF to send logs to CloudWatch Logs"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:DescribeLogStreams"
        ],
        Resource = "arn:aws:logs:*:*:log-group:/aws/waf/webacls/*"
      }
    ]
  })
}