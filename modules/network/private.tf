resource "aws_subnet" "private_subnet_1a" {
  vpc_id = aws_vpc.cluster_vpc.id
  cidr_block = "10.0.32.0/20"

	availability_zone = format("%sa", var.aws_region)

	tags = {
		Name = format("%s-private-1a", var.cluster_name),
		"kubernetes.io/cluster/${var.cluster_name}" = "shared"
	}
}

resource "aws_subnet" "private_subnet_1b" {
	vpc_id = aws_vpc.cluster_vpc.id
	cidr_block = "10.0.48.0/20"

	availability_zone = format("%sb", var.aws_region)

	tags = {
		Name = format("%s-private-1b", var.cluster_name),
		"kubernetes.io/cluster/${var.cluster_name}" = "shared"
	}
}