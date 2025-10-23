resource "aws_wafv2_web_acl" "api_gateway_waf" {
  name        = "my-api-gateway-waf"
  description = "WAF for API Gateway"
  scope       = "REGIONAL" # Must be REGIONAL for API Gateway

  tags = merge(local.common_tags, {
    Name = "WAF"
  })

  default_action {
    allow {} # Default action if no rules match
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "MyApiGatewayWAF"
    sampled_requests_enabled   = true

  }
}

  resource "aws_cloudwatch_log_group" "wafv2_log_group" {
      name              = "aws-waf-logs-your-waf-name" # Replace 'your-waf-name'
      retention_in_days = 90 
      
      tags = merge(local.common_tags, {
        Name = "Cloud_Watch_WAFv2_logs"
      })
  }