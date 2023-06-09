#
# provider variables: region, names, OAI ami
# Make sure to modify generic tag name to avoid overlaps (use for vpc/subnet)
#
variable "file_provisioners_5GC" {
  type = list(object({
    source      = string
    destination = string
  }))
  default = [
    {
      source      = "file1.txt"
      destination = "/home/ubuntu/file1.txt"
    },
    {
      source      = "file2.txt"
      destination = "/home/ubuntu/file2.txt"
    },
    {
      source      = "file3.txt"
      destination = "/home/ubuntu/file3.txt"
    }
  ]
}

variable "vpc_tag_name" {
  description = "Generic VPC Tag Name used for vpc, subnet, igw"
  default = "rr-oai-2-nodes"
}
variable "provider_region" {
 description = "Provider region"
 default = "us-east-1"
}
variable "server_instance_type" {
  description = "Server instance type"
  default = "t2.xlarge"
}
variable "server1_tag_name" {
  description = "Server tag name"
  default = "oai-2-nodes-5GC"
}
variable "server2_tag_name" {
  description = "Server tag name"
  default = "oai-2-nodes-RAN"
}
variable "ami_id" {
  description = "OAI-ready-to-use Ubuntu jammy image with minikube, OAI images, helm and charts"
  default = "ami-046ea9eab78bf5424"
}
#
# Credentials for ssh access to EC2 instances
#
variable "private_key_file" {
  description = "Private key file location for ssh access"
  default = "~/.ssh/rr-key-2023-2.pem"
}
variable "key_name" {
  description = "EC2 Key name"
  default = "rr-key-2023-2"
}

#
# Script for OAI deployment
#

variable "oai_deployment_file" {
  description = "Local script to deploy OAI"
  default = "deploy-single-node.sh"
}