while read p; do TAG=$(echo $GITHUB_SHA | head -c7) && sed -i 's|<IMAGE>|r00tsh3ll/actionsgo-'$p':'${TAG}'|' $GITHUB_WORKSPACE/$p/deployment.yml ; done < $GITHUB_WORKSPACE/microservices.txt
rm $GITHUB_WORKSPACE/deployment/deployment.yaml
while read p; do cat $GITHUB_WORKSPACE/$p/deployment.yml >> $GITHUB_WORKSPACE/deployment/deployment.yaml; done < $GITHUB_WORKSPACE/microservices.txt