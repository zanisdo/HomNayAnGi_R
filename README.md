# HomNayAnGi_R

# Database Diagram
![image](https://user-images.githubusercontent.com/83639265/203920276-432df3c7-0021-423d-b047-6d4fc211b976.png)

# How to run
1. Clone the project
1. Open Terminal in the cloned folder and copy `.env` file
```
cp .env.example .env
```
3. Install dependencies
```
composer install
```
4. Generate key for the project
```
php artisan key:generate
```
5. Create cached config files
```
php artisan config:cache
```
6. Migrate database
```
php artisan migrate
```
7. Run the project
```
php artisan serve
```
