VM = quantal64

all: status

status:
	@vagrant status

destroy:
	@vagrant destroy

halt:
	@vagrant halt

reload:
	@vagrant reload

up:
	@vagrant up --provider=lxc

list:
	@vagrant box list

remove:
	@vagrant box remove $(VM)

lsplugin:
	@vagrant plugin list

clean: destroy
shutdown: halt

watch:
	@watch sudo lxc-list

clean-all:
	@sudo lxc-list| grep 64_| xargs -n1 -i{} echo sudo lxc-destroy -n "{}"

config:
	vagrant ssh-config --host lxc.$(VM).local > ~/.ssh/config 

ssh:
	@echo vagrant ssh
	@ssh -i ~/.vagrant.d/insecure_private_key vagrant@$$(vagrant ssh-config --host lxc.$(VM).local| sed -rn '/((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])/{s/.*HostName //p}')
