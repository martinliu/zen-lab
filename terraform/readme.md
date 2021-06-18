# Terraform Labs

## 1. Allinone

这是整合的可工作测试案例。

* 虚拟化环境是esxi + vcenter 组成的
* vcenter 里有一个 CentOS7 的模板
* 使用 vSphere provider，
* centos7 模板创建一个虚拟机
* vcenter 的登录信息保存在了 secret.tfvars 文件中

Terraform [的安装步骤见官方文档](https://learn.hashicorp.com/terraform)。

```sh
terraform init
terraform validate
terraform plan -var-file="secret.tfvars"
terraform apply  -var-file="secret.tfvars"
terraform destroy --force -var-file="secret.tfvars"
```

密码保存在一个密码变量文件`secret.tfvars` 中，这个文件会在 `.gitignore`  给排除掉以免密码外泄。

## terraform-vsphere-clone

功能描述：

* main.tf 文件中定义了调用 vsphere provider，通过 vcenter 调用 esxi host 克隆模板的方式创建虚拟机
* 创建了两种不同 cpu 和 内存 配置的虚拟机
* 可以指定每种虚拟机个数
* 执行结果能够输出虚拟机的 ip 地址

* 参考集成测试[参考示例](https://github.com/Azure/terraform/blob/master/samples/integration-testing/src/azure-pipeline.yaml)，编写集成测试。
