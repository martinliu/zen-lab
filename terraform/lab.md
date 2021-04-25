# Lab

密码保存在一个密码变量文件中。

```sh
terraform int
terraform validate
terraform plan -var-file="secret.tfvars"
terraform apply  -var-file="secret.tfvars"
terraform destroy --force -var-file="secret.tfvars"
```