# If we want public ip as output
output "public-ip-address" {
    value = aws_instance.example.public_ip
}
