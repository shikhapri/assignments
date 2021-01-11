variable "secret_key" { 
  default = "4+YzRC5MBCszoOXdM6xcWjYkynRZgTrIl1oo3KMf"
}

variable "access_key" {
  default = "AKIA6J6BXQQAWIQMIXGA"
} 

variable "aws_region" {
  default = "ap-south-1"
}

variable "ports" {
  type = list(number)
  default = [22]
}
