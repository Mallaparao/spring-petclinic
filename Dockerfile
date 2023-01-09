FROM ubuntu:20.04
RUN apt update && git clone https://github.com/Mallaparao/spring-petclinic.git
RUN cd spring-petclinic && mvn clean package