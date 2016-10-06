param([string]$dockerLogin,[string]$dockerPassword)

echo "Build dotnetcore image"
docker build -t jcorioland/dotnetcore:win2k16tp5 src\DotnetDocker

echo "Build products-api image"
docker build -t jcorioland/shop-products-api:win2k16tp5 src\ProductsApi

echo "Build ratings-api image"
docker build -t jcorioland/shop-ratings-api:win2k16tp5 src\RatingsApi

echo "Build recommandations-api image"
docker build -t jcorioland/shop-recommandations-api:win2k16tp5 src\RecommandationsApi

echo "Build front image"
docker build -t jcorioland/shop-front:win2k16tp5 src\ShopFront

echo "Login to Docker Hub"
docker login -u $dockerLogin -p $dockerPassword

echo "Push images to Docker Hub"
docker push jcorioland/dotnetcore:win2k16tp5
docker push jcorioland/shop-products-api:win2k16tp5
docker push jcorioland/shop-ratings-api:win2k16tp5
docker push jcorioland/shop-recommandations-api:win2k16tp5
docker push jcorioland/shop-front:win2k16tp5

echo "Build / Push completed"
