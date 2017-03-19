# ansible-sempahore Vagrant demo

 This is Vagrant testing playground for [Ansible Semaphore][1] 
 
It contains one machine with Ansible semaphore named `semaphore` and 
two machines `node1` and `node2` to play with. 
 
## How to use:

 * Checkout `git clone --recursive https://github.com/VerosK/vagrant-ansible-semaphore semaphore-poc`
 * Enter the `semaphore-poc` directory

 * Start machines by `vagrant up`
 * Open http://192.168.49.40/ 
 * Login as: *admin* with password: *admin*
 * Start [testing playbook][2] 
  
The playbook used contains only ping command [playbook containing only ping][3]
   
[1]: https://github.com/ansible-semaphore/semaphore
[2]: http://192.168.49.40/project/1/templates
[3]: https://github.com/hub-404/hello-ansible
