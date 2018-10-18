# example-featuremodel

This page contains instructions on how to build and run the feature model example.

## First
Clone and mvn clean install the following repo: https://github.com/apache/sling-org-apache-sling-feature-launcher

## Then 
First build the feature model project.

```
mvn clean install
```

Launch the aggregate feature `webconsole.http`:

```
rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingfeature/webconsole.http
```

Launch a combination feature of the aggregate `webconsole.http` combined with the gogo feature. 
Also provide an override for the `http.port` variable: 

```
rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingfeature/webconsole.http \
  -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingfeature/gogo \
  -V http.port=9090
 ```
 