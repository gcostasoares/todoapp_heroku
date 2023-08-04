FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /todoapp

COPY . .

RUN pip install --upgrade pip
RUN pip install django
RUN pip install djangorestframework


EXPOSE 8000

CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]
