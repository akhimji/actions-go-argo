TAG=$(echo $GITHUB_SHA | head -c7) 
sed -i 's|<IMAGE-DJ>|r00tsh3ll/actionsgo-dadjoke:'${TAG}'|' $GITHUB_WORKSPACE/deployment/deployment.yaml 
sed -i 's|<IMAGE-BEER>|r00tsh3ll/actionsgo-randombeer:'${TAG}'|' $GITHUB_WORKSPACE/deployment/deployment.yaml 
sed -i 's|<IMAGE-UI>|r00tsh3ll/actionsgo-dadjoke:'${TAG}'|' $GITHUB_WORKSPACE/deployment/deployment.yaml 
sed -i 's|<IMAGE-SIMPSONS>|r00tsh3ll/actionsgo-simpons:'${TAG}'|' $GITHUB_WORKSPACE/deployment/deployment.yaml