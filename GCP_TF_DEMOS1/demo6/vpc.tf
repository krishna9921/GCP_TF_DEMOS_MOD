provider "google" {
    region = "asia-southeast1"
    credentials = "key.json"
    project = "cloudsqldeepdive"
}

# Create NON DEFAULT VPC

resource "google_compute_network" "vpc-main" {
    name = "vpc-main"
    auto_create_subnetworks = "false"
    
}

# Creating 3 Public Subnet
resource "google_compute_subnetwork" "vpc-main-public1" {
    name = "vpc-main-public1"
    ip_cidr_range = "192.168.1.0/24"
    region = "asia-southeast1"
    network = google_compute_network.vpc-main.id    
}

resource "google_compute_subnetwork" "vpc-main-public2" {
    name = "vpc-main-public2"
    ip_cidr_range = "192.168.2.0/24"
    region = "asia-southeast1"
    network = google_compute_network.vpc-main.id
}

resource "google_compute_subnetwork" "vpc-main-public3" {
    name = "vpc-main-public3"
    ip_cidr_range = "192.168.3.0/24"
    region = "asia-southeast1"
    network = google_compute_network.vpc-main.id
}

# Creating 3 Private Subnet
resource "google_compute_subnetwork" "vpc-main-private1" {
    name = "vpc-main-private1"
    ip_cidr_range = "10.1.0.0/16"
    region = "asia-southeast1"
    network = google_compute_network.vpc-main.id
    private_ip_google_access = "true"
}

resource "google_compute_subnetwork" "vpc-main-private2" {
    name = "vpc-main-private2"
    ip_cidr_range = "10.2.0.0/16"
    region = "asia-southeast1"
    network = google_compute_network.vpc-main.id
    private_ip_google_access = "true"
}
resource "google_compute_subnetwork" "vpc-main-private3" {
    name = "vpc-main-private3"
    ip_cidr_range = "10.3.0.0/16"
    region = "asia-southeast1"
    network = google_compute_network.vpc-main.id
    private_ip_google_access = "true"
}


# Creating Route Table 
resource "google_compute_route" "main_public" {
    name = "igw-route"    
    dest_range = "0.0.0.0/0"
    network = google_compute_network.vpc-main.name
    next_hop_gateway = "default-internet-gateway"       
        
}
/*
# Creating 3 ROUTE Assosciated Public Subnets
resource "aws_route_table_association" "public-main-1" {
    subnet_id = google_compute_subnetwork.vpc-main-public1.id
    route_table_id = aws_route_table.main-public.id
}

resource "aws_route_table_association" "public-main-2" {
    subnet_id = google_compute_subnetwork.vpc-main-public2.id
    route_table_id = aws_route_table.main-public.id
}


resource "aws_route_table_association" "public-main-3" {
    subnet_id = google_compute_subnetwork.vpc-main-public3.id
    route_table_id = aws_route_table.main-public.id
}
  */  






