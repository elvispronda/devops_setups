#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN
sudo apt update && sudo apt upgrade -y
sudo apt install git  openjdk-8-jdk maven -y


#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo apt update && sudo apt upgrade -y
wget -O - https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null


#STEP-3: DOWNLOAD JAVA11 AND JENKINS
sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-11-jdk -y
sudo apt install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
sudo systemctl enable --now jenkins
sudo systemctl status jenkins
#This command allows jenkins service to stay on even when the server is off
chconfig jenkins on 
