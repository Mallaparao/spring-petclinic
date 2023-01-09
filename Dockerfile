FROM ubuntu:20.04
RUN apt update && \
       apt install openjdk-11-jdk -y && \
       apt install git -y && \
       apt install maven -y && \
       git clone https://github.com/Mallaparao/spring-petclinic.git
RUN cd spring-petclinic && \
        mvn clean package