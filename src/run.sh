#!/bin/bash

# Création du service de produits
docker service create --replicas 3 --name products-service -p 5001:5001 -e SHOP_PRODUCTS_API_PORT=5001 jcorioland/shop-products-api:20160928.1

# Création du service de rating
docker service create --replicas 3 --name ratings-service -p 5002:5002 -e SHOP_RATINGS_API_PORT=5002 jcorioland/shop-ratings-api:20160928.1

# Création du service de produits
docker service create --replicas 3 --name recommandations-service -p 5003:5003 -e SHOP_RECOMMANDTIONS_API_PORT=5003 jcorioland/shop-recommandations-api:20160928.1

# Création du service de produits
docker service create --replicas 3 --name shop -p 80:5004 -e SHOP_FRONT_PORT=5004 -e SHOP_PRODUCTS_API_URL=http://docker112.northeurope.cloudapp.azure.com:5001 -e SHOP_RATINGS_API_URL=http://docker112.northeurope.cloudapp.azure.com:5002 -e SHOP_RECOMMANDATIONS_API_URL=http://docker112.northeurope.cloudapp.azure.com:5003 jcorioland/shop-front:20160928.1