@ECHO OFF

SET SHOP_PRODUCTS_API_PORT=5001
SET SHOP_RATINGS_API_PORT=5002
SET SHOP_RECOMMANDATIONS_API_PORT=5003
SET SHOP_FRONT_PORT=5004
SET SHOP_PRODUCTS_API_URL=http://localhost:5001
SET SHOP_RATINGS_API_URL=http://localhost:5002
SET SHOP_RECOMMANDATIONS_API_URL=http://localhost:5003

ECHO Restoring NuGet packages...
dotnet restore

ECHO Running Products API in a new shell...
START cmd /k "dotnet run -p ProductsApi\project.json"

ECHO Running Ratings API in a new shell...
START cmd /k "dotnet run -p RatingsApi\project.json"

ECHO Running Recommandations API in a new shell...
START cmd /k "dotnet run -p RecommandationsApi\project.json"

ECHO Running Shop Front in a new shell...
START cmd /k "cd ShopFront & dotnet run"

timeout 2 > NUL

ECHO Launching Microsoft Edge
START microsoft-edge:http://localhost:5004/
