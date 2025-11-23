variable "region" {
  description = "Région AWS où déployer l'instance"
  type        = string
  default     = "eu-north-1"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nom de la clé SSH déjà créée dans AWS (Key Pair)"
  type        = string
  default     = "First Key"
}

variable "allowed_ssh_cidr" {
  description = "Plage d'IP autorisée à se connecter en SSH"
  type        = string
  default     = "0.0.0.0/0"
}
