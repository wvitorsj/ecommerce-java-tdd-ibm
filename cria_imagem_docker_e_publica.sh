#./test.sh
./build.sh

echo "Digite a tag para publicação"
read TAG

git tag $TAG
git push --tags

docker build -t wvitorsj/ecommerce-ibm:$TAG .
docker push wvitorsj/ecommerce-ibm:$TAG