# sudo as root
sudo echo ""

# Install curl if missing
sudo apt-get update
sudo apt install -y curl unzip

# Install AZ CLI
sudo curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install terraform
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

# Install terraform-docs
wget -O /tmp/terraform-docs.tgz https://github.com/terraform-docs/terraform-docs/releases/download/v0.16.0/terraform-docs-v0.16.0-linux-amd64.tar.gz
sudo tar xzvf /tmp/terraform-docs.tgz --directory /usr/local/bin terraform-docs

# Install terragrunt
sudo wget -O /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.31.8/terragrunt_linux_amd64
sudo chmod 755 /usr/local/bin/terragrunt

# Install rover
	# curl -sSL -o /tmp/rover-linux-amd64.zip https://github.com/im2nguyen/rover/releases/download/v0.1.6/rover_0.1.6_linux_amd64.zip
	# unzip /tmp/rover-linux-amd64.zip -d /tmp
	# sudo mv /tmp/rover_v0.1.6 /usr/local/bin/rover
	# sudo chmod +x /usr/local/bin/rover

# Install kubelogin
	curl -sSL -o /tmp/kubelogin-linux-amd64.zip https://github.com/Azure/kubelogin/releases/download/v0.0.10/kubelogin-linux-amd64.zip
	unzip /tmp/kubelogin-linux-amd64.zip -d /tmp
	sudo mv /tmp/bin/linux_amd64/kubelogin /usr/local/bin/kubelogin
	sudo chmod +x /usr/local/bin/kubelogin

# Install kubectl
#    kubectlver=$(curl -L -s https://dl.k8s.io/release/stable.txt)
	sudo curl -sSL -o /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	sudo chmod +x /usr/local/bin/kubectl

# Install Helm
	sudo curl -s https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash -

# Install kubens
	sudo curl -sSL -o /usr/local/bin/kubens https://github.com/ahmetb/kubectx/releases/download/v0.9.4/kubens
	sudo chmod +x /usr/local/bin/kubens

# Install yq
sudo wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
sudo chmod a+x /usr/local/bin/yq
