resource "aws_vpc" "custom_vpc" {
    cidr_block = "var.cidr_block"

    tags = {
        Name = "Custom VPC"
    }
}

resource "aws_subnet" "public_subnet" {
    vpc_id = "aws_vpc.custom_vpc.id
    cidr_block = "10.0.1.0/24"

    tage = {
        Name = "Public subnet"
    }
}

resource "aws_subnet" "private_subnet" {
    vpc_id = "aws_vpc.custom_vpc.id
    cidr_block = "10.0.2.0/24"

    tage = {
        Name = "Private subnet"
    }
}

resource "aws_internet_gateway" "ig" {
    vpc_id = "aws_vpc.custom_vpc.id

    tags = {
        Name = "Internet Gateway"
    }

}

resource "aws_route_table" "public_route" {
    vpc_id = aws_vpc.custom_vpc.id
     
     route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "aws_internet_gateway.ig.id
     }

     route {
        cidr_block = "::/0"
        gateway_id = "aws_internet_gateway.ig.id"
     }
}

resource "aws_route_table_association" "rt_asso" {
    subnet_id = "aws_subnet.public_subnet.id
    route_table_id = "aws_route_table.public_route.id
}
