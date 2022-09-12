./test.sh

echo "Digite a tag para publicação"
read TAG

git tag $TAG
git push --tags

docker build -t wvitorsj/ecommerce-treinamento-ibm:$TAG .
docker push wvitorsj/ecommerce-treinamento-ibm:$TAG