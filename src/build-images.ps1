param([string]$dockerLogin,[string]$dockerPassword)

echo "Build dotnetcore image"
docker build -t jcorioland/dotnetcore:latest src\DotnetDocker

echo "Build products-api image"
docker build -t jcorioland/shop-products-api:latest src\ProductsApi

echo "Build ratings-api image"
docker build -t jcorioland/shop-ratings-api:latest src\RatingsApi

echo "Build recommandations-api image"
docker build -t jcorioland/shop-recommandations-api:latest src\RecommandationsApi

echo "Build front image"
docker build -t jcorioland/shop-front:latest src\ShopFront

echo "Login to Docker Hub"
docker login -u $dockerLogin -p $dockerPassword

echo "Push images to Docker Hub"
docker push jcorioland/dotnetcore:latest
docker push jcorioland/shop-products-api:latest
docker push jcorioland/shop-ratings-api:latest
docker push jcorioland/shop-recommandations-api:latest
docker push jcorioland/shop-front:latest

echo "Build / Push completed"
