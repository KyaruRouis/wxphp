# 使用官方 PHP 5.6 镜像.
# https://hub.docker.com/_/php
FROM php:5.6-apache

# 将本地代码复制到容器内
COPY services/ /var/www/html/

# Apache 配置文件内使用 8080 端口
RUN sed -i 's/80/8080/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

# 将 PHP 配置为开发环境
# 如果您需要配置为生产环境，可以运行以下命令
# RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
# 参考：https://hub.docker.com/_/php#configuration
RUN docker-php-ext-install mysqli
copy php_custom.ini $PHP_INI_DIR/
RUN mv "$PHP_INI_DIR/php_custom.ini" "$PHP_INI_DIR/php.ini"


