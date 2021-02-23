<p align="center">
  <a href="" rel="noopener">
 <img height=200px src="https://i.artfile.ru/2000x1436_1128714_[www.ArtFile.ru].jpg" alt="Project logo"></a>
</p>

<h3 align="center">Магазин - Django shop</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![python](https://img.shields.io/badge/python-3.8.3-green)](https://www.python.org/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> Магазин электроники проект студентов
    <br>
</p>

## 📝 Меню

- [О проекте](#about)
- [Старт](#getting_started)
- [Развертывание](#deployment)
- [Использование](#usage)
- [TODO](TODO.md)
- [Authors](#authors)

## 🧐 О проекте  <a name = "about"></a>

[![ShopPlan](https://github.com/mentoster/Django-shop/blob/master/GitHubStuff/Images/ShopPlan.png?raw=true)]()

## 🏁 Старт <a name = "getting_started"></a>

Здесь вы сможете получить инструкции для запуска проекта на своем локальном устройстве. Смотрите [Развертывание](#deployment), чтобы узнать, как развернуть проект в системе.


### Установка

У вас должен быть установлены [Docker][] и  [Docker-Compose][].

## 🚀 Развертывание  <a name = "deployment"></a>

### Build
`docker-compose build` or `make build`.

### Migrate databases
`docker-compose run --rm djangoapp hello/manage.py migrate` or `make migrate`.

### Collect static files
`docker-compose run --rm djangoapp hello/manage.py collectstatic --no-input'` or `make collectstatic`.

### Run
`docker-compose up` or `make run`.

### Tests
- `make checksafety`
- `make checkstyle`
- `make test`
- `make coverage`

## ⛏️ Использовано <a name = "usage"></a>

- [Django](https://www.django.com/) - web framework
- [Oscar](https://github.com/django-oscar/django-oscar) - shop module
- [Solr](https://lucene.apache.org/solr/) -  is an open-source enterprise-search platform
- [Docker](https://www.docker.com/) - container
- [nginx ](https://nginx.org/ru/)- web and proxy server
- wsgi - Web Server Gateway Interface

## ✍️ Авторы <a name = "authors"></a>

- [@mentoster](https://github.com/mentoster) - Идея & основная работа
- [@MyAngelSerena](https://github.com/MyAngelSerena) - основная работа
- [@AlexClaw2303](https://github.com/AlexClaw2303) - основная работа

See also the list of [contributors](https://github.com/kylelobo/The-Documentation-Compendium/contributors) who participated in this project.
