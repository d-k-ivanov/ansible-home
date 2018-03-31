## Ansible for home
This is an Ansible configuration for HOME infrastructure management 

### Abreviations:
- **a** 						- ansible
- **ap**						- ansible-playbook
- **av**						- ansible-vault 
- **ANSIBLE_HOME**	- Folder with Ansible clone (ansible-home in this case)

### Download:
```bash
git clone https://github.com/keepbot/ansible-home.git
```

### Install environment:
- You need to generate your own rsa private key or initialization script does it for you **in silient mode**
```bash
ssh-keygen -t rsa -b 4096
```
- You need to run initialization script which creates your own environment to work with Ansible
```bash
cd $ANSIBLE_HOME
./setup
```

- Dependencies:
** python2 - main interpreteur
** sshpass - to pprovice root password

- Anible installation: *Ubuntu*
```bash
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
- Anible installation: *CentOS*
```bash
# install the epel-release RPM if needed on CentOS, RHEL, or Scientific Linux
sudo yum install ansible
```
- Anible installation: *ArchLinux*
```bash
# install the epel-release RPM if needed on CentOS, RHEL, or Scientific Linux
sudo pacman -S ansible
```
- Other cases: [Ansible Official Guide](http://docs.ansible.com/ansible/intro_installation.html)

### Run single module:
```bash
a-hosts <server or group> -m <module_name> <any_other_options>
```

### Run playbook:
```bash
./ap-hosts <options>
```

### Edit encrypted vault file
```bash
./av-edit <path_to_file>
```

### Users initialisation (only with root password)
```bash
./init_users
```

### Some useful commands
```bash
# Ping all host using SSH password to authenticate
./a-hosts all -m ping -k
# Get All possible host defined variables
./a-hosts all -m setup
```

