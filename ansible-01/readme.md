# Ansible 101


## Playbooks

## packages: apt

write

* loadbalancer.yml
* databases.yml

ansible-playbook loadbalancer.yml
ansible-playbook database.yml

error

### packages: become

add become: true 

ansible-playbook loadbalancer.yml
ansible-playbook database.yml

works

### packages: with_items

存储和循环处理一组对象

编写 webserver.yml

ansible-playbook webserver.yml

{{item}}

weith_items
  - 
  - 

jinjia 的循环启用了，直接在 name 后面用 [a, b, c,] 即可

### services: services

增加新 task

    - name: ensuser nginx started
      service: name=nginx state=started enabled=yes

运行

ansible-playbook loadbalancer.yml

    - name: ensure mysql started
      service: 
        name: mysql 
        state: started 
        enabled: yes

### support playbook 1 stack restart

编写一个 stack restart playbook

### 服务变更依赖重启生效

编写 webserver 的 handler 模块 和 nitify 的调用点

### 部署 Demo 应用

修改 webserver.yml 增加 复制文件和目录的 task

      - name: setup python virtualenv
        pip:
          requirements: /var/www/demo/requirements.txt
          virtualenv: /var/www/demo/.venv
        # 添加中国的 pip 镜像 才能安装成功
          extra_args: -i https://pypi.tuna.tsinghua.edu.cn/simple
        notify: restart apache2

### 进一步配置相关文件

讲解 file 模块文件用法

解释 apache2 的 avabilite folder enabled folder ，创建符号链接

