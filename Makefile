IMAGE := alpine/fio
APP:="scripts/usernetes-containerd.sh"

deploy-cakephp:
	bash scripts/deploy-cakephp.sh

provision-bash-jenkins-ubuntu:
	bash scripts/provision-bash-jenkins-ubuntu.sh

deploy-boxes:
	bash scripts/deploy-boxes.sh

deploy-libvirt:
	bash scripts/deploy-libvirt.sh

deploy-vagrant:
	bash scripts/deploy-vagrant.sh

deploy-packer:
	bash scripts/deploy-packer.sh

deploy-terraform:
	bash scripts/deploy-terraform.sh
	
push-image:
	docker push $(IMAGE)

.PHONY: deploy-libvirt deploy-vagrant deploy-packer deploy-terraform push-image
