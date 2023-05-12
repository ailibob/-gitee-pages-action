!/bin/bash

echo "remove old doc dir"
rm -rf apis/*

echo "generate new api docs"
javadoc -d ./apis -encoding utf-8 -charset utf-8 -private -sourcepath /Users/sevenplus/workspace/cloud-connector-sdk/cloud-connector-sdk-client/src/main/java -subpackages com

touch ./apis/CNAME

echo "commit change"
git add .
git commit -m "new version"

echo "push to remote repository"
git push origin master
