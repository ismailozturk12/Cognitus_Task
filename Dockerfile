FROM python:3.7.6-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
CMD ["python", "cognitus_django/manage.py", "runserver", "0.0.0.0:8000"]
