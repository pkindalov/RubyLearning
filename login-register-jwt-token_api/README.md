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
curl -X POST http://localhost:3000/api/v1/register -H "Content-Type: application/json" -d "{\"user\": {\"email\": \"user@abv.bg\", \"password\": \"yourpassword\"}}"
```


###Или използвайки Postman, изпратете следния JSON:
```bash
{
    "user": {
        "email": "user@abv.bg",
        "password": "yourpassword"
    }
}
```

Ако всичко е правилно конфигурирано, резултатът трябва да бъде:
```bash
{
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0fQ.9qMxwbErqJdMmL5ELTH8ONLAjFMf6kwNBvXDCUFW4kI"
}
```

## Тестване на `/login` ендпойнт

Можете да тествате `/login` ендпойнта по следния начин:

```bash
curl -X POST http://localhost:3000/api/v1/login -d "email=user@abv.bg&password=yourpassword"
```

```bash
{
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozfQ.QGfu9-ZDXb6dR-YLhwIn9QuA-wDcot52wI1RoON-kbk"
}
```
