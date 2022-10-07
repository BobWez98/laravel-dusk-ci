#!/bin/bash
chmod -R 775 storage
chmod 775 bootstrap/cache
chown -R www-data ./
php artisan key:generate
php artisan storage:link
chmod -R 0755 vendor/laravel/dusk/bin/

chrome-system-check
