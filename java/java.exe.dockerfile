ARG java_version=17
FROM edc-java-${java_version}

ARG id=1
COPY App-${id}.java App.java
RUN java -version
CMD ["java", "App.java"]