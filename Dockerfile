FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/jinyeongyang/pragmatic.git

WORKDIR /home/progmatic

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=*x8w)3)5w0!51_f4&iqf99z5$6ztg#ch0pqqo6n772snz)42v7" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0:8000"]
