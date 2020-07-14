mvn clean install
rm -rf launcher && java -agentlib:jdwp=transport=dt_socket,address=*:7777,server=y,suspend=y -Dorg.apache.sling.feature.apiregions.regions=* -cp ./org.apache.sling.feature.extension.apiregions-1.1.4.jar:./org.apache.sling.feature.launcher-1.1.2.jar org.apache.sling.feature.launcher.impl.Main -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingosgifeature/example-runtime   -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingosgifeature/gogo   -V http.port=9090

