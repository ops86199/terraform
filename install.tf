# 1. Update packages
sudo apt update && sudo apt upgrade -y

# 2. Install required dependencies
sudo apt install -y gnupg software-properties-common curl

# 3. Add HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# 4. Add the official HashiCorp Linux repo
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

# 5. Update again and install terraform
sudo apt update
sudo apt install terraform -y

# 6. Verify installation
terraform -version
