docker run -d -p 5001:5001 -e SHOP_PRODUCTS_API_PORT=5001 jcorioland/shop-products-api:win2k16tp5

docker run -d -p 5002:5002 -e SHOP_RATINGS_API_PORT=5002 jcorioland/shop-ratings-api:win2k16tp5

docker run -d -p 5003:5003 -e SHOP_RECOMMANDTIONS_API_PORT=5003 jcorioland/shop-recommandations-api:win2k16tp5

docker run -d -p 80:5004 -e SHOP_FRONT_PORT=5004 -e SHOP_PRODUCTS_API_URL=http://win2k16docker.westeurope.cloudapp.azure.com:5001 -e SHOP_RATINGS_API_URL=http://win2k16docker.westeurope.cloudapp.azure.com:5002 -e SHOP_RECOMMANDATIONS_API_URL=http://win2k16docker.westeurope.cloudapp.azure.com:5003 jcorioland/shop-front:win2k16tp5