FROM composer:latest AS dependencies

COPY composer.* ./
RUN composer install

FROM bitnami/wordpress:6 AS wordpress

COPY --from=dependencies --chown=1001:root /app/wp-content /opt/bitnami/wordpress/wp-content