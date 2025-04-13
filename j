echo "1. updating..."
sudo apt update

echo "2.installinf openjdk-21..."
sudo apt install -y opendk-21-jdk

echo "3. adding jenkins package to apt list"
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "4. updating apt and installing jenkins..."
sudo apt-get update
sudo apt-get install jenkins
