copy .env.example .env
composer install
php artisan key:generate
php artisan config:cache
php artisan migrate