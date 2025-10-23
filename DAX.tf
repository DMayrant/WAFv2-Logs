resource "aws_dax_cluster" "bar" {
  cluster_name       = "cluster-example"
  iam_role_arn       = aws_iam_role.dax_role.arn
  node_type          = "dax.r5.large"
  replication_factor = 5
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c", 
                    "us-east-1d", "us-east-1f"]
}