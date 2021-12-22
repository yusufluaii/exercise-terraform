output "instance_public_ip" {
    value = module.ec2-instance.public_ip
}

output "instance_id" {
    value = module.ec2-instance.id
}

output "instance_tags" {
    value = module.ec2-instance.tags_all
}

output "instance_private_ip" {
    value = module.ec2-instance.private_ip
}

output "instance_private_dns" {
    value = module.ec2-instance.private_dns
}

output "instance_public_dns" {
    value = module.ec2-instance.public_dns
}

output "instance_state" {
    value = module.ec2-instance.instance_state
}