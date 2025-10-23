data "aws_vpc_endpoint_service" "execute_api" {
  service = "execute-api"
}

resource "aws_vpc_endpoint" "api_gateway_endpoint" {
  vpc_id              = aws_vpc.main_vpc.id # Replace aws_vpc.main.id with your VPC ID
  service_name        = data.aws_vpc_endpoint_service.execute_api.service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true
  subnet_ids          = aws_subnet.private_subnet.*.id # Replace with your private subnet IDs
  security_group_ids  = [aws_security_group.dax_sg.id]   # Replace with your security group ID
}

resource "aws_api_gateway_rest_api" "example" {
  name        = "Example"
  description = "REST API"
  endpoint_configuration {
    types            = ["PRIVATE"]
    vpc_endpoint_ids = [aws_vpc_endpoint.api_gateway_endpoint.id]
  }
}