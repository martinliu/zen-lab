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