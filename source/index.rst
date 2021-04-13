.. raw:: html

   <p align="center">


.. raw:: html

   </p>

   <h3 align="center">

Магазин - Django shop

.. raw:: html

   </h3>

   <div align="center">

|Status| |python|

.. raw:: html

   </div>

--------------

.. raw:: html

   <p align="center">

Магазин электроники проект студентов

.. raw:: html

   </p>

📝 Меню
------

-  `О проекте <#about>`__
-  `Старт <#getting_started>`__
-  `Развертывание <#deployment>`__
-  `Использование <#usage>`__
-  `TODO <TODO.md>`__
-  `Authors <#authors>`__

🧐 О проекте
------------

|ShopPlan|

🏁 Старт
--------

Здесь вы сможете получить инструкции для запуска проекта на своем
локальном устройстве. Смотрите `Развертывание <#deployment>`__, чтобы
узнать, как развернуть проект в системе.

Установка
~~~~~~~~~

У вас должен быть установлены *Docker* и *Docker-Compose*, *make*

🚀 Развертывание
----------------

Build
~~~~~

``docker-compose build`` or ``make build``.

Migrate databases
~~~~~~~~~~~~~~~~~

``docker-compose run --rm djangoapp frobshop/manage.py migrate`` or
``make migrate``.

Collect static files
~~~~~~~~~~~~~~~~~~~~

``docker-compose run --rm djangoapp frobshop/manage.py collectstatic --no-input'``
or ``make collectstatic``.

Run
~~~

``docker-compose up`` or ``make run``.

Tests
~~~~~

-  ``make checksafety``
-  ``make checkstyle``
-  ``make test``
-  ``make coverage``

⛏️ Использовано
----------------

-  `Django <https://www.django.com/>`__ - web framework
-  `Oscar <https://github.com/django-oscar/django-oscar>`__ - shop
   module
-  `Solr <https://lucene.apache.org/solr/>`__ - is an open-source
   enterprise-search platform
-  `Docker <https://www.docker.com/>`__ - container
-  `nginx <https://nginx.org/ru/>`__- web and proxy server
-  wsgi - Web Server Gateway Interface

✍️ Авторы
----------

-  [@mentoster](https://github.com/mentoster) - Идея & основная работа
-  [@MyAngelSerena](https://github.com/MyAngelSerena) - основная работа
-  [@AlexClaw2303](https://github.com/AlexClaw2303) - основная работа

See also the list of
`contributors <https://github.com/kylelobo/The-Documentation-Compendium/contributors>`__
who participated in this project.

.. |Status| image:: https://img.shields.io/badge/status-active-success.svg
   :target:
.. |python| image:: https://img.shields.io/badge/python-3.8.3-green
   :target: https://www.python.org/
.. |ShopPlan| image:: https://github.com/mentoster/Django-shop/blob/master/GitHubStuff/Images/ShopPlan.png?raw=true
   :target:
