# Data-Java Maven Repo #


```
<repositories>
    <repository>
        <id>slackhappy-mvn-repo</id>
        <url>https://raw.github.com/slackhappy/repo/mvn-repo/</url>
        <snapshots>
            <enabled>true</enabled>
            <updatePolicy>always</updatePolicy>
        </snapshots>
    </repository>
</repositories>
```

## add a jar:

```
cd $REPO

git checkout mvn-repo

# go to your project, publish
cd $PROJECT
$DATA_JAVA/mvn-deploy.sh

# commit the changes
cd $DATA_JAVA
git add .
git push origin mvn-repo
```

## example

```
cd ~/extsrc/redislabs.gh/spark-redis
~/extsrc/slackhappy.gh/repo/mvn-deploy.sh -DskipTests
cd ~/extsrc/slackhappy.gh/repo
git add .
git push origin mvn-repo
```
