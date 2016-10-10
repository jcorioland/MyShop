docker run -d -p 5001:5000 jcorioland/shop-products-api:latest

docker run -d -p 5002:5000 jcorioland/shop-ratings-api:latest

docker run -d -p 5003:5000 jcorioland/shop-recommandations-api:latest

docker run -d -p 80:5000 -e SHOP_PRODUCTS_API_URL=http://localhost:5001 -e SHOP_RATINGS_API_URL=http://localhost:5002 -e SHOP_RECOMMANDATIONS_API_URL=http://localhost:5003 jcorioland/shop-front:latest