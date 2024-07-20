# Инструкции за стартиране и тестване на API

## Инсталиране на зависимости и стартиране на сървъра

1. Стартирайте инсталацията на зависимости:
    ```bash
    bundle install
    ```

2. Извършете миграциите на базата данни:
    ```bash
    rails db:migrate
    ```

3. Стартирайте Rails сървъра:
    ```bash
    rails server
    ```

## Тестване на `/register` ендпойнт

Можете да тествате `/register` ендпойнта по следния начин:

### С помощта на `curl`:
```bash
curl -X POST http://localhost:3000/api/v1/register \
     -H "Content-Type: application/json" \
     -d "{\"user\": {\"email\": \"user@abv.bg\", \"password\": \"yourpassword\"}}"


###Или използвайки Postman, изпратете следния JSON:
{
    "user": {
        "email": "user@abv.bg",
        "password": "yourpassword"
    }
}

Ако всичко е правилно конфигурирано, резултатът трябва да бъде:

{
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0fQ.9qMxwbErqJdMmL5ELTH8ONLAjFMf6kwNBvXDCUFW4kI"
}
