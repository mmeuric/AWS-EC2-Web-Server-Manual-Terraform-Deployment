#!/bin/bash
# Mise à jour du système
yum update -y

# Installation d'Apache (httpd)
yum install -y httpd

# Activation et démarrage du service
systemctl enable httpd
systemctl start httpd

# Création d'une page d'accueil simple
cat << 'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome to my Terraform EC2 Web Server</title>
  <style>
    body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; background-color: #f4f4f4; }
    h1 { color: #2d79c7; }
    p { color: #444; }
    .card {
      background-color: #fff;
      padding: 20px;
      margin: 0 auto;
      max-width: 600px;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.15);
    }
    code {
      background: #eee;
      padding: 2px 4px;
      border-radius: 4px;
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>🚀 Terraform EC2 Web Server</h1>
    <p>Cette instance a été déployée automatiquement avec <strong>Terraform</strong> sur <strong>AWS EC2</strong>.</p>
    <p>AMI : Amazon Linux 2023</p>
    <p>Serveur web : Apache (httpd)</p>
    <p>Utilisateur SSH : <code>ec2-user</code></p>
  </div>
</body>
</html>
EOF
