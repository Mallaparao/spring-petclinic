FROM ubuntu:22.04
RUN apt update && \
       apt install openjdk-17-jdk -y && \
       apt install git -y && \
       apt install maven -y && \
       git clone https://github.com/Mallaparao/spring-petclinic.git
RUN cd spring-petclinic && \
        mvn package


# jar: /spring-petclinic/target/spring-petclinic-3.0.0-SNAPSHOT.jar

FROM opendjk:17
ADD target/spring-petclinic-3.0.0-SNAPSHOT.jar /spring-petclinic
EXPOSE 8080
CMD [ "java", "-jar", "/spring-petclinic-3.0.0-SNAPSHOT.jar"]
