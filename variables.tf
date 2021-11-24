variable "region" {
  description = "Region permitida en AWS"
}

variable "vpc1_id" {
  description = "ID de la VPC del lab"
}

variable "internet_gateway_id" {
  description = "ID del IGW del lab"
}

variable "subnet1_zone_1a" {
  description = "Zone 1a - Subnet 1"
}

variable "ami_id" {
  description = "ID de la AMI par la instancia EC2" 
  type = string
}

variable "key1" {
  description = "nombre de la clave publica registrada en AWS para el acceso a la instancia"
  type = string
}

variable "instance_type" {
  description = "Tipo de instancia utilizada para laboratorio"
  type = string
}

#Se eliminaron las variables innecesarias