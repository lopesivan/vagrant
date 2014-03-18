vagrant box add precise32 ~/precise32.box

vagrant init precise32

vagrant up

vagrant ssh

vagrant destroy
vagrant box remove precise32

ssh -p 2222 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1

vagrant provision

vagrant plugin install vagrant-vbox-snapshot

vagrant package --output petrobras/precise.box --base precise32
vagrant package --output developer/precise.box --base precise32
vagrant package --output facemidia/precise.box --base precise32
