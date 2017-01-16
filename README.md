# vagrant-mysql-model

This is an example of how create virtual machines using vagrant and automatically download, install and configure Ubuntu and MySQL as to manage users and run SQL scripts.

To do the trick, I'm using [Ansible](https://www.ansible.com/) making the job much easier to do. 

Before running the project, make sure that you have [Vagrant](https://www.vagrantup.com/) [Ansible](https://www.ansible.com/) installed and configured to run in your *terminal* or *command prompt*. 

To run the project just clone or download the repository anywhere in your machine, open the terminal/prompt and go to that folder and run the following command:

    vagrant up

This command will look after the Vagrantfile and build the VM as it is told there. It will take some time to finish, because the VM is created for the first time. The Ubuntu will be downloaded, installed and upgrated, as MySQL. The second time and forth, the time to bring the instance up, will be much faster.

All done, you can test if the instance is working well. You can use MySQL Workbench to test the access trying to connect with:

**Hostname:** localhost
**Port:** 3306
**Username:** root
**Password:** r007p4ssw0rd

Or, you can access the instance using SSH at the same folder that you had run the *up* command:

    vagrant ssh

With that, you will connect the instance and can use the following command to access MySQL:

With that, you will connect the instance and can use the following command to access the MySQL console:

    mysql -uroot -pr007p4ssw0rd vagrantdb

At the MySQL console, you can test if the *users* table was created and has any rows:

    select * from users;

The output should be:

    +-------------------+----------+---------+
    | email             | password | enabled |
    +-------------------+----------+---------+
    | jane.doe@mail.com | 123456   |       1 |
    | john.doe@mail.com | 123456   |       1 |
    +-------------------+----------+---------+

Pretty easy, huh? :)

This is just a model. You can edit and use it as you like.

> Written with [StackEdit](https://stackedit.io/).









