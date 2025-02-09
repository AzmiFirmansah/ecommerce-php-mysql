# E-commerce Platform with PHP and MySQL

## Description

This repository contains a simple e-commerce website built as a school project using PHP and MySQL. The platform demonstrates essential features of an online store, including product management, category management, and secure admin login. The project is designed to provide a foundational understanding of web application development.

## Key Features

- **Product Management**: Add, edit, and delete products.
- **Category Management**: Organize products for easy navigation.
- **User Authentication**: Secure login for admins only.

## Installation Instructions

1. **Download or Clone the Repository**.
   - Clone the repository using:
     ```bash
     git clone https://github.com/AzmiFirmansah/ecommerce-php-mysql.git
     ```
   - Alternatively, download the repository as a ZIP file.
2. **Set Up Database**:
   - Import `ecommerce.sql` into your MySQL database.
3. **Configure Database**:
   - Edit `db.php` with your database credentials:
     ```php
     $host = 'localhost';
     $user = 'root';
     $pass = 'yourpassword';
     $db = 'ecommerce';
     ```
4. **Run the Application**:
   - Deploy the files to a local or online PHP server (e.g., XAMPP or LAMP).
   - Access the application in your browser via `http://localhost/ecommerce-php-mysql/`.

## System Requirements

- **PHP**: Version 7.4 or higher
- **MySQL**: Version 5.7 or higher
- **Web Server**: Apache or any server supporting PHP
- **Browser**: Modern browsers (e.g., Chrome, Firefox, Edge)

## Usage Guide

- **Admin Login**: Username: `admin`, Password: `admin`.
- Use the dashboard to manage products and categories.

