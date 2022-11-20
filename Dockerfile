FROM composer:latest AS dependencies

COPY composer.* ./
RUN --mount=type=secret,id=composer_auth,dst=/app/auth.json \
    mkdir -p wp-content \
    && composer install

FROM bitnami/wordpress:6 AS wordpress

COPY --from=dependencies --chown=1001:root /app/wp-content /opt/bitnami/wordpress/wp-content
COPY --chown=1001:root ./plugins.d /opt/bitnami/wordpress/wp-content/plugins
COPY --chown=1001:root ./themes.d /opt/bitnami/wordpress/wp-content/themes