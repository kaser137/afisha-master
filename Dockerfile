FROM python:3.10-slim

RUN mkdir "afisha"

WORKDIR /afisha

COPY ./requirements.txt /afisha

RUN pip install -r /afisha/requirements.txt

COPY . /afisha

EXPOSE 5000

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]

