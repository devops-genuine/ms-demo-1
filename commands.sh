keytool -import -alias teiid -file ~/vault-ca.crt -storetype JKS -keystore server.truststore.jks
mkdir -p src/main/resources
rm -rf src/main/resources/server.truststore.jks
cp server.truststore.jks src/main/resources/

java -jar -Dspring.profiles.active=develop target/ms-demo-0.0.1-SNAPSHOT.jar

# java -jar -Dspring.profiles.active=develop target/ms-demo-0.0.1-SNAPSHOT.jar \
#   -Djavax.net.ssl.trustStore=server.truststore.jks \
#   -Djavax.net.ssl.trustStorePassword=changeit
