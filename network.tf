#################################################################################################
########################## PRIVATE SUBNETS FOR THE WRDS VPC #####################################
#################################################################################################

#APP SUBNETS 
data "aws_subnet" "wrds-App-Private-1" {
    vpc_id                          = var.eks_vpc_id
    id                       = var.wrds_subnet_private1

    # tags                                     = {
    #   "Name"                                 = "wrds-App-Priv-1"
    #   "Kubernetes.io/cluster/eks"            = "shared" #so that eks cluster can discover it and use to create private elb in this subnet
    #   "kubernetes.io/role/internal-elb"      = 1 #eks uses this to create service type load balancers
    # }
}

data "aws_subnet" "wrds-App-Private-2" {
    vpc_id                          = var.eks_vpc_id
    id                       = var.wrds_subnet_private2

    # tags                                     = {
    #   "Name"                                 = "wrds-App-Priv-2"
    #   "Kubernetes.io/cluster/eks"            = "shared" #so that eks cluster can discover it and use to create private elb in this subnet
    #   "kubernetes.io/role/internal-elb"      = 1 #eks uses this to create service type load balancers
    # }
}

data "aws_subnet" "wrds-App-public-1" {
    vpc_id                          = var.eks_vpc_id
    id                       = var.wrds_subnet_public1

    # tags                            = {
    #   "Name"                        = "wrds-App-Pub-1"
    #   "Kubernetes.io/cluster/eks"   = "shared" #so that eks cluster can discover it and use to create public elb in this subnet
    #   "kubernetes.io/role/elb"      = 1 #eks uses this to create service type load balancers
    # }
}

data "aws_subnet" "wrds-App-public-2" {
    vpc_id                          = var.eks_vpc_id
    id                       = var.wrds_subnet_public2

    # tags                            = {
    # #   "Name"                        = "wrds-App-Pub-2"
    #   "Kubernetes.io/cluster/eks"   = "shared" #so that eks cluster can discover it and use to create public elb in this subnet
    #   "kubernetes.io/role/elb"      = 1 #eks uses this to create service type load balancers
    # }
}