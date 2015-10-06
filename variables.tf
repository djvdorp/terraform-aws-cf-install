variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}
variable "aws_region" {
  default = "us-west-2"
}
variable "install_docker_services" {
  default = "false"
}

variable "cf1_az" {
    default = {
        us-east-1 = "us-east-1c"
        us-west-1 = "us-west-1c"
        us-west-2 = "us-west-2a"
        ap-northeast-1 = "ap-northeast-1a"
        ap-southeast-1 = "ap-southeast-1a"
        ap-southeast-2 = "ap-southeast-2a"
        eu-west-1 = "eu-west-1a"
        sa-east-1 = "sa-east-1a"
    }
}

variable "cf2_az" {
    default = {
        us-east-1 = "us-east-1e"
        us-west-1 = "us-west-1b"
        us-west-2 = "us-west-2b"
        ap-northeast-1 = "ap-northeast-1b"
        ap-southeast-1 = "ap-southeast-1b"
        ap-southeast-2 = "ap-southeast-2b"
        eu-west-1 = "eu-west-1b"
        sa-east-1 = "sa-east-1b"
    }
}

variable "network" {
  default = "10.10"
}

variable "debug" {
  default = "false"
}

variable "cf_admin_pass" {
  default = "c1oudc0wc1oudc0w"
}

variable "cf_domain" {
  default = "XIP"
}

variable "cf_run_subdomain" {
  default = "run"
}

variable "cf_apps_subdomain" {
  default = "apps"
}

variable "cf_boshworkspace_version" {
  default = "v1.1.15"
}

variable "cf_release_version" {
  default = "210"
}

variable "cf_size" {
  default = "tiny"
}

variable "aws_centos_ami" {
    default = {
        us-east-1 = "ami-00a11e68"
        us-west-1 = "ami-ba3c3bff"
        us-west-2 = "ami-3425be04"
        ap-northeast-1 = "ami-9392dc92"
        ap-southeast-1 = "ami-dcbeed8e"
        ap-southeast-2 = "ami-89e88db3"
        eu-west-1 = "ami-af6faad8"
        sa-east-1 = "ami-73ee416e"
    }
}

variable "aws_ubuntu_ami" {
    default = {
        us-east-1 = "ami-9eaa1cf6"
        us-west-1 = "ami-076e6542"
        us-west-2 = "ami-3d50120d"
        ap-northeast-1 = "ami-e74b60e6"
        ap-southeast-1 = "ami-d6e7c084"
        ap-southeast-2 = "ami-1711732d"
        eu-west-1 = "ami-f0b11187"
        sa-east-1 = "ami-69d26774"
    }
}

variable "deployment_size" {
  default = "small"
}

variable backbone_z1_count {
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z1_count {
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z1_count {
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable health_z1_count {
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z1_count {
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "3"
    }
}

variable backbone_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable health_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "3"
    }
}

variable "private_cf_domains" {
    default = ""
}

variable additional_cf_sg_allow_1 { default = "" }
variable additional_cf_sg_allow_2 { default = "" }
variable additional_cf_sg_allow_3 { default = "" }
variable additional_cf_sg_allow_4 { default = "" }
variable additional_cf_sg_allow_5 { default = "" }

variable install_logsearch {
    default = "false"
}

variable "backbone_resource_pool"        { default = "large" }
variable "data_resource_pool"            { default = "large" }
variable "public_haproxy_resource_pool"  { default = "small" }
variable "private_haproxy_resource_pool" { default = "small" }
variable "api_resource_pool"             { default = "medium" }
variable "services_resource_pool"        { default = "medium" }
variable "health_resource_pool"          { default = "medium" }
variable "runner_resource_pool"          { default = "runner" }
