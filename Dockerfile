FROM python:3.6
ENV PYTHONUNBUFFERED=1 DOCKERRUNTIME=1
RUN mkdir /code
COPY . /code/
WORKDIR /code/
RUN pip install -i https://pypi.doubanio.com/simple/ -r requirements.txt && \
    echo "yes" | python manage.py collectstatic && \
    rm -f database.cnf && \
    rm -rf celerybeat*
CMD bash /code/startup.sh
