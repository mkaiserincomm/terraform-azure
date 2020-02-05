variable av_zone {
  description = "A list of availability zones to use. Make sure they're valid for this location." 
}

variable "net-name" {
  description = "The name to be associated with the network"  
}

variable "cluster-name" {
  description = "The domain name for the cluster (in front of the cluster-base-domain)."  
}

variable "cluster-base-domain" {
  description = "A base domain name you own. Helpful if it's managed by a zone file in Azure."  
}

variable "username" {
  
}

variable "password" {
  
}

variable "re-license" {
  description = "License Key for non-trial licensing"  
  default     = null
}

variable "node-size" {
  description = "The Size of the VM to run for nodes."
  default     = "Standard_DS4_v2"
}

variable "subnet-count" {
  description = "The number of subnets to spin up"
  default     = 2
}

variable "node-count" {
  description = "The number of nodes to spin up"
  default     = 3
}

variable "ssh-user" {
  description = "The SSH User"
  default     = "redislabs"
}

variable "ssh-key" {
  description = "The SSH Public Key path"
  default     = "~/.ssh/id_rsa_azure.pub"
}

# Use this to determine what version of the software gets installed
variable "re-download-url" {
  description = "The download link for the redis enterprise software"
  default     = null
}

# TODO: Make this take a list or a map of db and properties?
variable "demodb-name" {
  default = null
  description = "The name of a demo database to create after cluster setup."
}

variable "cost_center" {
    type = string
}

variable "business_unit" {
    type = string	
}

variable "owner" {
    type = string
}

variable "platform_application" {
    type = string
}

variable "compliance_data_profile" {
    type = string	
}

variable "data_sovereignty_location" {
    type = string	
}

variable "environment" {
    type = string	
}

locals {
  tags = {
		cost-center = "${var.cost_center}"
		business-unit = "${var.business_unit}"
		owner = "${var.owner}"
		environment = "${var.environment}"
		platform-application = "${var.platform_application}"
		compliance-data-profile = "${var.compliance_data_profile}"
		data-sovereignty-location = "${var.data_sovereignty_location}"
	}
}