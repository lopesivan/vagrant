BOX = ~/precise32.box
VM = precise32
cookbooks = lopesivan/chef
OUT = backup

all: status

new:
	@vagrant box add $(VM) $(BOX)

status:
	@vagrant status

provision:
	@vagrant reload --provision

destroy:
	@vagrant destroy --force

halt:
	@vagrant halt

reload:
	@vagrant reload

suspend:
	@vagrant suspend

up:
	@echo Copia a imagem para o virtualizador.
	@vagrant up

list:
	@vagrant box list

remove:
	@vagrant box remove $(VM)

clean: destroy
shutdown: halt

get-environment:
	@git clone https://github.com/$(cookbooks) recipes

recipes: get-environment

vms:
	@VBoxManage list vms

vms-delete:
	@VBoxManage unregistervm $(VM) --delete 

export:
	@mkdir -p $(OUT)
	@vagrant package
	@mv package.box $(OUT)/$(VM).box
	@cp Vagrantfile Makefile provision.sh $(OUT)/
	@sed 's/precise32/p&/g' -i $(OUT)/Vagrantfile $(OUT)/Makefile $(OUT)/provision.sh
	@tar cvzf $(VM)_$(shell date +"%d_%b_%Y_%H_%M_%S").tgz $(OUT)/
	@rm -rf $(OUT)

config:
	vagrant ssh-config --host vbox.$(VM).local > ~/.ssh/config 

ssh:
	@ssh -p 2222 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_key vagrant@$$(vagrant ssh-config --host vbox.$(VM).local| sed -rn '/((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])/{s/.*HostName //p}')
