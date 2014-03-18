Exportando configuração de conexão para o arquivo "~/.ssh/config".

```
  vagrant ssh-config --host vbox.precise32.local >> /home/ivan/.ssh/config
```

Conectando-se:

```
  ssh vbox.precise32.local 
  Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)

  * Documentation:  https://help.ubuntu.com/
  Welcome to your Vagrant-built virtual machine.
  Last login: Thu Oct 17 00:19:24 2013 from 10.0.2.2
  vagrant@precise32:~$ ls
  install.sh  postinstall.sh
  vagrant@precise32:~$
```
