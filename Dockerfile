FROM    centos:7 
RUN     yum install java -y 
COPY    target/
