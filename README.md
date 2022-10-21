# EZ WordPress

## Add dependency
```
composer require wpackagist-plugin/woocommerce
```

## Build and Run
```
docker compose up -d --force-recreate --build
```

## Logs
```
docker compose logs -f
```

## Commit
```
git commit -am "My new thing"
git push
```

## Clean
```
docker compose down --volumes --remove-orphans --rmi all
rm -rf ./persist.d
```