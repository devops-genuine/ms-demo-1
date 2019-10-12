mkdir src/test/resources
cp server.truststore.jks src/test/resources/

java -jar -Dspring.profiles.active=develop target/ms-demo-0.0.1-SNAPSHOT.jar \
  -Djavax.net.ssl.trustStore=server.truststore.jks \
  -Djavax.net.ssl.trustStorePassword=changeit