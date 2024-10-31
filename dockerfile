# Используем официальный образ Python
FROM python:3.9

# Устанавливаем зависимости
RUN pip install --upgrade pip
RUN pip install django psycopg2-binary

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта в контейнер
COPY . /app/

# Запускаем миграции и сервер
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
