sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.rpm"

#"http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jre-8u51-linux-x64.tar.gz"

sudo yum install jdk-8u77-linux-x64.rpm -y 

sudo rpm --import http://packages.confluent.io/rpm/2.0/archive.key

sudo yum install confluent-platform-2.11.7