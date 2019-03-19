FROM ubuntu:18.04
#RUN apt-get update && apt-get install -y tree && apt-get install wget -y && apt-get install gnupg -y
#RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
#RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
#RUN apt-get update
#RUN apt-get install jenkins -y
#RUN apt-get install jenkins
#RUN touch /tmp/1.txt
#RUN touch /tmp/2.txt
#RUN touch /tmp/3.txt
#RUN touch /tmp/4.txt


RUN apt update
RUN apt install wget -y
RUN apt install nano -y
RUN apt install net-tools -y
RUN apt install software-properties-common -y
RUN apt-add-repository ppa:ansible/ansible
RUN apt update
RUN apt install ansible -y
RUN wget http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.2.4-x64.bin
RUN chmod +x atlassian-jira-6.2.4-x64.bin
RUN ./atlassian-jira-6.2.4-x64.bin
RUN /opt/atlassian/jira/bin/start-jira.sh

