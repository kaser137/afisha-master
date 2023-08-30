FROM python:3.10-slim

RUN mkdir "dj_doc"

WORKDIR /dj_doc

COPY ./requirements.txt /dj_doc

RUN pip install -r /dj_doc/requirements.txt

COPY . /dj_doc

EXPOSE 4000

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:4000"]

