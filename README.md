# terraform
Samples

Install instructions

To install, follow next steps:

1. Download latest terraform binary for your platform

  wget https://releases.hashicorp.com/terraform/0.9.1/terraform_0.9.1_darwin_amd64.zip

2. After downloading Terraform, unzip the package into a directory where Terraform will be installed

  unzip terraform_0.9.1_darwin_amd64.zip

3. Create terraform directory in /usr/bin location

  sudo mkdir /usr/bin/terraform

4. Move terraform package to /usr/bin/terraform

  sudo mv Downloads/terraform /usr/bin/terraform/

5. Add next export PATH=$PATH:/usr/bin/terraform line to ~/.bash_profile 

  5.1 vi ~/.bash_profile
  5.2 "export PATH=$PATH:/usr/bin/terraform"

6. Reload ~/.bash_profile 

  source ~/.bash_profile

7. You also may want to symlink to binaries:

  sudo ln -s /usr/bin/terraform/terraform terraform

References:
 * https://www.terraform.io/intro/getting-started/install.html
 * https://stackoverflow.com/questions/14637979/how-to-permanently-set-path-on-linux
