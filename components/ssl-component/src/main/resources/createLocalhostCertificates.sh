# if CN is "localhost" thee services should be on thee same machine
rm *.jks
rm *.cer

keytool -genkey -alias keyalias -keyalg RSA -keystore sso-auth-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore eureka-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore bookmark-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore contact-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore passport-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore zipkin-dashboard-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore gateway-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"
keytool -genkey -alias keyalias -keyalg RSA -keystore resource-gateway-service-identity.jks -deststoretype JKS -validity 1825 -keypass jkspass -storepass jkspass -dname "CN=localhost, OU=N/A, O=N/A, L=Bucharest, ST=Romania, C=RO correct?"

keytool -export -alias keyalias -keystore sso-auth-service-identity.jks -file sso-auth-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore eureka-service-identity.jks -file eureka-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore bookmark-service-identity.jks -file bookmark-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore contact-service-identity.jks -file contact-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore passport-service-identity.jks -file passport-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore zipkin-dashboard-service-identity.jks -file zipkin-dashboard-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore gateway-service-identity.jks -file gateway-service.cer -storepass jkspass
keytool -export -alias keyalias -keystore resource-gateway-service-identity.jks -file resource-gateway-service.cer -storepass jkspass

keytool -importcert -keystore truststore.jks -alias sso-auth-service -storepass jkspass -file sso-auth-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias eureka-service -storepass jkspass -file eureka-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias bookmark-service -storepass jkspass -file bookmark-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias contact-service -storepass jkspass -file contact-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias passport-service -storepass jkspass -file passport-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias zipkin-dashboard-service -storepass jkspass -file zipkin-dashboard-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias gateway-service -storepass jkspass -file gateway-service.cer -noprompt
keytool -importcert -keystore truststore.jks -alias resource-gateway-service -storepass jkspass -file resource-gateway-service.cer -noprompt
