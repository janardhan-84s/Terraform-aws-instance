
variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of the EC2 instance"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
    description = "Instance size"

# enforcing standards through modules(i.e. the values should be only three that we are
# specified only in condition, untill unless if somebody tries toii give another value
# it doesn't take that)
    validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Valid values for instance_type are: t3.micro, t3.small, t3.medium"
    } 
}

# mandatory to provide
variable "sg_ids" {
    type = list
}

variable "tags" {
    type = map
}



