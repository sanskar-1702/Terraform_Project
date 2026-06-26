#Public Subnet
resource "aws_subnet" "devops_public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_cidr
  availability_zone = var.public_subnet_az
  map_public_ip_on_launch = true


  tags = {
    Name        = "Devops-${var.env}-public-subnet"
    environment = var.env
  }

}

#Private Subnet 
resource "aws_subnet" "devops_private_subnet" {
  count      = length(var.private_subnet_cidr)
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr[count.index]

  availability_zone = var.private_subnet_az[count.index]

  tags = {
    Name        = "Devops-${var.env}-private-subnet-${count.index + 1}"
    environment = var.env
  }

}

#Internet Gateway
resource "aws_internet_gateway" "devops_internet_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "Devops-${var.env}-internet-gateway"
    environment = var.env
  }
}

#Public Route Table
resource "aws_route_table" "devops_public_RT" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.devops_internet_gateway.id
  }

  tags = {
    Name        = "Devops-${var.env}-public-route-table"
    environment = var.env
  }
}

#private route table
resource "aws_route_table" "devops_private_RT" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "Devops-${var.env}-private-route-table"
    environment = var.env
  }
}

#Public route table association with public subnet
resource "aws_route_table_association" "devops_pub_subnet_asso" {
  subnet_id      = aws_subnet.devops_public_subnet.id
  route_table_id = aws_route_table.devops_public_RT.id
}

#private route table association with private subnet
resource "aws_route_table_association" "devops_priv_subnet_asso" {
  count          = length(var.private_subnet_cidr)
  subnet_id      = aws_subnet.devops_private_subnet[count.index].id
  route_table_id = aws_route_table.devops_private_RT.id
}
