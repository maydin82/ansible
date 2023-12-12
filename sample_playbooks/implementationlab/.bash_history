ssh-keygen 
ls -l .ssh/id_rsa
ls -l .ssh/
exit
cat /etc/ansible/ansible.cfg |grep inv
cat /etc/ansible/hosts 
ansible all --list-hosts
ssh appdb1.3725.internal
ansible all -a id
ssh support1.3725.internal
ansible all -a id -b
ansible all -m ping
cat /etc/ansible/hosts 
pwd
mkdir ansible_implementation
cd ansible_implementation/
vi ansible.cfg
cat << EOF > ansible.cfg
[defaults]
inventory = /home/devops/ansible_implementation/hosts
host_key_checking = false
EOF

cat ansible.cfg 
cat << EOF > hosts
frontend1.3725.internal
app1.3725.internal
appdb1.3725.internal
app2.3725.internal
support1.3725.internal
EOF

cat hosts 
hostname
ansible all -m ping
ansible all -a id
ansible all -a id -b
ansible all -m command -a "cat /etc/motd"
ansible-doc copy
cat hosts
ansible app1.3725.internal -m copy -a "content='Managed by Ansible' dest=/etc/motd"
ansible app1.3725.internal -m copy -a "content='Managed by Ansible' dest=/etc/motd" -b
ansible all -m command -a "cat /etc/motd"
cd ..
pwd
git clone https://github.com/prakhar1985/ansible_implementation_grading.git
ll
cd ansible_implementation_grading/
ll
export GUID=`hostname | awk -F"." '{print $2}'`
ansible-playbook lab-2-grade.yml -e GUID=${GUID}
ansible all -m copy -a "content='Managed by Ansible' dest=/etc/motd" -b
ll
cd ..
ll
cd ansible_implementation
ansible all -m copy -a "content='Managed by Ansible' dest=/etc/motd" -b
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-2-grade.yml -e GUID=${GUID}
cd ..
cd ansible_implementation
ll
vi hosts 
ansible all --list-hosts
vi hosts 
ansible all --list-hosts
vi connectiviy.yml
mv connectiviy.yml check_webservers.yml
ls -lrt
ansible-playbook --syntax-check check_webservers.yml 
vi check_webservers.yml 
ansible-playbook --syntax-check check_webservers.yml 
vi check_webservers.yml 
ansible-playbook --syntax-check check_webservers.yml 
vi check_webservers.yml 
ansible-playbook --syntax-check check_webservers.yml 
cat check_webservers.yml 
vi check_webservers.yml 
ansible-playbook --syntax-check check_webservers.yml 
vi check_webservers.yml 
ansible-playbook -C check_webservers.yml 
ansible-playbook  check_webservers.yml 
vi hosts
ls -lrt
vi install
ansible-doc yum
vi install
mv install  install.yml
vi install.yml 
ansible-playbook --syntax-check install.yml 
ansible-playbook install.yml 
curl http://app1.3725.internal
vi install.yml 
curl http://app1.3725.internal
ansible-playbook install.yml 
curl http://app1.3725.internal
curl http://app2.3725.internal
cd ..
cd ansible_implementation_grading/
ll
ansible-playbook lab-3.1-grade.yml 
ansible-playbook lab-3.1-grade.yml -e GUID=3725
cd ..
cd ansible_implementation
vi install.yml 
ansible-playbook install.yml 
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-3.1-grade.yml -e GUID=3725
cd ..
cd ansible_implementation
ll
vi install.yml 
ansible-playbook install.yml 
cd ..
cd ansible_implementation_grading/
ll
ansible-playbook lab-3.1-grade.yml -e GUID=3725
cd ..
cd ansible_implementation
ll
mv install.yml deploy_apache.yml
ansible db -m setup
ansible-doc setup"
ansible-doc setup -a 
ansible db -m setup -a "filter=ansible_user.*"
ansible db -m setup -a "filter=ansible_user*"
ansible db -m setup -a "filter=ansible_user"
vi custom_facts
vi setup_facts.yml
ansible-playbook --syntax-check setup_facts.yml 
cat setup_facts.yml 
mv custom_facts custom_fact
ls -lrt
ansible-playbook -C setup_facts.yml 
ansible-playbook setup_facts.yml 
ls -lrt
vi setup_facts.
vi setup_facts.yml 
ls -lrt
cat setup_facts.
cat setup_facts.yml 
mv custom_fact custom.fact 
ansible-playbook setup_facts.yml 
ansible -m setup -a 'filter=ansible_local'
ansible webservers -m setup -a 'filter=ansible_local'
cat setup_facts.yml 
vi setup_facts_httpd.yml
ansible-playbook setup_facts_httpd.yml 
cd ..
ll
cd ansible_implementation_grading/
ll
ansible-playbook lab-3.2-grade.yml  -e GUID=3725
ls -lrt
cd ansible_implementation_grading/
ls -lrt
ansible-playbook lab-3.2-cleanup.yml -e GUID=3725
cd ..
ll
cd ansible_implementation
ll
vi variable_test.yml
ansible-playbook --syntax-check variable_test.yml 
ansible-playbook variable_test.yml 
vi variable_test.yml
ansible-playbook variable_test.yml 
vi webserver_smoketest.yml
ansible-playbook webserver_smoketest.yml 
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-4.1-grade.yml -e GUID=3725
ansible-playbook lab-4.1-cleanup.yml -e GUID=3725
ls -lrt
cd ..
ll
cd ansible_implementation
ls -lrt
rm 1
ls -lrt
mkdir tasks
cd tasks/
ll
vi environment.yml
cd ..
ll
mkdir vars
cd vars/
ll
vi variables.yml
cd ..
ls -rlt
rm *.retry
ls -lt
ls -lrt
vi main_playbook.yml
cat main_playbook.yml 
ansible-playbook --syntax-check main_playbook.yml 
ansible-playbook main_playbook.yml 
vi main_playbook.yml 
ansible-playbook main_playbook.yml 
vi main_playbook.yml 
ansible-playbook main_playbook.yml 
curl http://app1.3725.internal
cat main_playbook.
ls -lrt
cd tasks/
ll
cat environment.yml 
cd ..
cd vars/
ll
cat variables.yml 
cd ..
cat main_playbook.
cat main_playbook.yml 
cat tasks/environment.yml
cd ..
cd ansible_implementation_grading/
ll
ansible-playbook lab-4.2-grade.yml -e GUID=3725
cd ..
cd ansible_implementation
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-4.2-cleanup.yml -e GUID=3725
exit
ls -lrt
cd ansible_implementation
ls -rlt
mkdir roles
ansible-galaxy init roles/app-tier
ls -rlt
cd roles/
ll
ls -rlt
cd app-tier/
ll
cd handlers/
ll
cd ..
ll
cd tasks/
ll
cat << EOF > main.yml 
---
- name: Install firewalld
yum:
  name: firewalld
  state: latest
- name: Start firewalld service
  service:
   EOF


EOF

vi main.yml 
cd ..
cd vars/
ll
vi main.yml 
cat main.yml 
cd ..
cd .
cd ..
cd .
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-5.1-setup.yml 
cd -
ll
cd ansible_implementation
ll
cp ~/roles-setup-files/index.j2 roles/app-tier/templates/
cp ~/roles-setup-files/vhost.conf.j2 roles/app-tier/templates/
ls -lrt
cd roles/
ll
cd app-tier/
ll
cat tasks/main.yml 
cd ..
ansible-galaxy init roles/db-tier
cd roles/db-tier/
ll
cd tasks/
cd ..
cp ~/roles-setup-files/userdb.backup roles/db-tier/files/
cd ..
cp ~/roles-setup-files/userdb.backup roles/db-tier/files/
ll
cd roles/
l
cd db-tier/
ll
cd tasks/
ll
vi main.yml 
cd ..
cd vars/
vi main.yml 
ls -l rt
cd ..
ansible-galaxy init roles/lb-tier
cd roles/
cd lb-tier/
ll
cd tasks/
vi main.yml 
cd ..
cd handlers/
ll
vi main.yml 
cd ..
cd vars/
vi main.yml 
cd ..
vi webapp-main-roles.yml
grep -iR permen
grep -iR permen *
ansible-playbook webapp-main-roles.yml 
vi /home/devops/ansible_implementation/roles/lb-tier/tasks/main.yml
ansible-playbook webapp-main-roles.yml 
cd roles/db-tier/
vi tasks/main.yml 
cd ..
cd db-tier/
cd vars/
cat main.yml 
cd ..
ansible-playbook webapp-main-roles.yml 
cd ..
ansible-playbook webapp-main-roles.yml 
ssh appdb1.3725.internal
vi tasks/main.yml 
vi roles/db-tier/tasks/main.yml 
ansible-playbook webapp-main-roles.yml 
ansible-doc appdb1.3725.internal
ansible-doc mysql_user
ssh appdb1.3725.internal
ansible-playbook webapp-main-roles.yml 
cat roles/db-tier/vars/main.yml 
ssh appdb1.3725.internal
ansible-playbook webapp-main-roles.yml 
cp ~/roles-setup-files/haproxy.j2 roles/lb-tier/templates/
ansible-playbook webapp-main-roles.yml 
ansible-doc copy
vi roles/db-tier/tasks/main.yml 
cat roles/db-tier/tasks/main.yml 
ansible-doc mysql_user
vi roles/db-tier/tasks/main.yml 
ssh appdb1.3725.internal
ansible-playbook webapp-main-roles.yml 
ssh appdb1.3725.internal
ls -lrt
exit
