output "public_ip" {
  description = "Adresse IP publique de l'instance EC2"
  value       = aws_instance.web.public_ip
}

output "public_dns" {
  description = "Nom DNS public de l'instance EC2"
  value       = aws_instance.web.public_dns
}

output "ssh_command" {
  description = "Commande SSH pour se connecter à l'instance"
  value       = "ssh -i PATH_TO_YOUR_KEY.pem ec2-user@${aws_instance.web.public_dns}"
}

output "http_url" {
  description = "URL HTTP pour accéder au serveur web"
  value       = "http://${aws_instance.web.public_dns}"
}
