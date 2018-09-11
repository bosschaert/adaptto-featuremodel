# adaptto-featuremodel

## First
Clone and mvn clean install the following repo: https://github.com/apache/sling-org-apache-sling-feature-launcher

## Then 

rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/configuration \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/webconsole \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/http \
  -v

java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar

rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/configuration \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/webconsole \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/http \
  -V org.apache.sling:org.apache.sling.adaptto.featuremodel.example.http.port=4711 \
  -v

rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/webconsole.http \
  -v


rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/webconsole.http \
  -f mvn:org.apache.sling/org.apache.sling.adaptto.featuremodel.example/0.0.1/slingfeature/gogo \
  -v
