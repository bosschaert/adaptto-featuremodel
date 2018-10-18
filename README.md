# example-featuremodel

This page contains instructions on how to build and run the feature model example.

## First
Clone and `mvn clean install` the following repo: https://github.com/apache/sling-org-apache-sling-feature-launcher

## Then 
Build the feature model project.

```
mvn clean install
```

Launch the aggregate feature `webconsole.http`:

```
rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingfeature/webconsole.http
```

Now you can connect to the launched feature webconsole via http://localhost:8080/system/console

Launch a combination feature of the aggregate `webconsole.http` combined with the gogo feature. 
Also provide an override for the `http.port` variable: 

```
rm -rf launcher && \
java -jar ~/.m2/repository/org/apache/sling/org.apache.sling.feature.launcher/0.1.0-SNAPSHOT/org.apache.sling.feature.launcher-0.1.0-SNAPSHOT.jar \
  -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingfeature/webconsole.http \
  -f mvn:org.apache.sling/org.apache.sling.featuremodel.example/0.0.1/slingfeature/gogo \
  -V http.port=9090
```

Now you can connect to the launched feature webconsole via the overridden port 9090 at
 http://localhost:9090/system/console

You can also interactively work with the launched framework via the gogo commandline console, just hit enter on
the commandline and you'll see:


```
g!
g! inspect cap \* 10
org.apache.felix.http.jetty [10] provides:
------------------------------------------
osgi.wiring.bundle; org.apache.felix.http.jetty 4.0.0
... and so on ...
```
 