FROM openjdk:11-jre
COPY build/libs/starter-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java", "-jar", "app.war"]

ENV JASYPT_ENCRYPTOR_PASSWORD="mil"
# DB 접근 정보를 환경 변수로 설정
ENV DB_HOST="ajoufinance.iptime.org"
ENV DB_USER="Ajou"
ENV DB_PASSWORD="D2B4@GmpI3r*IqS0"
ENV DB_NAME="linka"
ENV JWT_SECRET="ENC(ZDLPHyvd1oCQRuos3ITfyhXrM8SmFiFiXCrYj0y3jSIAafMLCSW5RfCAT1xhrq/73tWvWyEIDNT6TVkaDKDI2nc30GUTA1fjnPDjCwelhQAANthObehUXQx7nb21q7gNo1gvKIkQo+4x5LQfJOm5zg==)"
ENV JWT_EXPIRATION="86400000"
