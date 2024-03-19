# Используем образ PHP 8.3
FROM php:8.3-apache

# Устанавливаем дополнительные зависимости
RUN apt-get update && \
  apt-get install -y \
  libzip-dev \
  unzip \
  curl \
  git \
  && rm -rf /var/lib/apt/lists/* 

# Устанавливаем расширения PHP
RUN docker-php-ext-install pdo_mysql zip mysqli

# Копируем файлы веб-приложения в директорию Apache
COPY ./src /var/www/html

# Настраиваем виртуальный хост Apache
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Включаем модуль rewrite для Apache
RUN a2enmod rewrite

# Устанавливаем phpMyAdmin с помощью curl
WORKDIR /var/www/html
RUN curl -o phpMyAdmin.zip -SL https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.zip && \
  unzip phpMyAdmin.zip && \
  mv phpMyAdmin-5.1.0-all-languages phpmyadmin && \
  rm phpMyAdmin.zip

# Удаляем временные файлы и кэш
RUN apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Открываем порты для MySQL и phpMyAdmin
EXPOSE 80 3306

# Команда для запуска Apache
CMD ["apache2-foreground"]
