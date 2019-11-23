FROM    centos:7 
RUN     yum install java -y 
COPY    target/spring-boot-web-0.0.1-SNAPSHOT.jar /spring-boot-web-0.0.1-SNAPSHOT.jar 
CMD     java -jar /spring-boot-web-0.0.1-SNAPSHOT.jar 