FROM python:3.9-slim

ARG APP_ROOT_DIR_NAME=app

WORKDIR /${APP_ROOT_DIR_NAME}

COPY ./${APP_ROOT_DIR_NAME}/requirements.txt .
RUN pip install -r requirements.txt

COPY ./${APP_ROOT_DIR_NAME} .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
