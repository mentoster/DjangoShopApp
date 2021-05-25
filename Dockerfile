FROM python:3.8.2

ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/services/djangoapp/src

# COPY Pipfile Pipfile.lock /opt/services/djangoapp/src/
COPY requirements.txt /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src
# RUN pip install pipenv && pipenv install --system
RUN pip install -r requirements.txt

COPY . /opt/services/djangoapp/src

RUN cd frobshop && python manage.py collectstatic --no-input

EXPOSE 8000
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "frobshop", "frobshop.wsgi:application"]
