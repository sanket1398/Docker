FROM python:latest

COPY .  .

RUN python -m pip install --upgrade pip 
RUN pip install django
RUN pip install django-admin
RUN python manage.py migrate

EXPOSE 1234

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:1234"]
