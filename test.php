<?php

$server = "mysql:host=localhost";
$db_userName = "root";
$db_pword = "";

try {
    $pdo = new PDO($server, $db_userName, $db_pword);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // CHECK EXISTING DATABASE
    $dbname = "pharmacy";
    $users_table = "users";
    $cart_items_table = "cart_items";
    $products_table = "products";
    $categories_table = "categories";
    $orders_table = "orders";
    $order_details_table = "order_details";
    $payment_details_table = "payment_details";

    // Query to select schema names from the INFORMATION_SCHEMA.SCHEMATA table
    $query = "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = ?;";
    $statement = $pdo->prepare($query);
    $statement->execute([$dbname]);
    $result = $statement->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        $pdo->exec("USE $dbname");

        // CHECK FOR EXISTING TABLES
        //USERS
        $table_check_users = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_users = $pdo->prepare($table_check_users);
        $statement_users->execute([$dbname, $users_table]);
        $result_users = $statement_users->fetch(PDO::FETCH_ASSOC);
        //CART ITEMS
        $table_check_cart_items = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_cart_items = $pdo->prepare($table_check_cart_items);
        $statement_cart_items->execute([$dbname, $cart_items_table]);
        $result_cart_items  = $statement_cart_items->fetch(PDO::FETCH_ASSOC);
        //PRODUCTS
        $table_check_products = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_products = $pdo->prepare($table_check_products);
        $statement_products->execute([$dbname, $products_table]);
        $result_products  = $statement_products->fetch(PDO::FETCH_ASSOC);
        //CATEGORIES
        $table_check_categories = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_categories = $pdo->prepare($table_check_categories);
        $statement_categories->execute([$dbname, $categories_table]);
        $result_categories  = $statement_categories->fetch(PDO::FETCH_ASSOC);
        //ORDERS
        $table_check_orders = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_orders = $pdo->prepare($table_check_orders);
        $statement_orders->execute([$dbname, $orders_table]);
        $result_orders  = $statement_orders->fetch(PDO::FETCH_ASSOC);
        //ORDER DETAILS
        $table_check_order_details = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_order_details = $pdo->prepare($table_check_order_details);
        $statement_order_details->execute([$dbname, $order_details_table]);
        $result_order_details  = $statement_order_details->fetch(PDO::FETCH_ASSOC);
        //PAYMENT DETAILS
        $table_check_payment_details = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = ? AND table_name = ? LIMIT 1";
        $statement_payment_details = $pdo->prepare($table_check_payment_details);
        $statement_payment_details->execute([$dbname, $payment_details_table]);
        $result_payment_details  = $statement_payment_details->fetch(PDO::FETCH_ASSOC);

        if ($result_users) {
            // User table exists, no need to create
        } else {
            // CREATE TABLE FOR users
            echo "<h1>USERS TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $pdo->exec("CREATE TABLE $users_table 
                        (userID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        userName VARCHAR(255) NOT NULL,
                        userPass VARCHAR(255) NOT NULL,
                        userEmail VARCHAR(255) NOT NULL,
                        regDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP);");
        }
        if ($result_categories) {
            // CATEGORIES table exists, no need to create
        } else {
            // CREATE TABLE FOR CATEGORIES
            echo "<h1>CATEGORIES TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $categories = array("Pain Relief", "Respiratory/Allergy", "Eye and Ear Care", "Foot and Leg Care", "Oral Care", "Digestion Care");
            $category_values = "'" . implode("'),('", $categories) . "'";
            $pdo->exec("CREATE TABLE $categories_table (
                category_id INT AUTO_INCREMENT PRIMARY KEY,
                name VARCHAR(100) NOT NULL
            );");
            $pdo->exec("INSERT INTO $categories_table (name) VALUES ($category_values);");
        }
        if ($result_products) {
            // PRODUCTS table exists, no need to create
        } else {
            // CREATE TABLE FOR PRODUCTS
            echo "<h1>USERS TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $pdo->exec("CREATE TABLE $products_table
            (productID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
            productName VARCHAR(255) NOT NULL,
            productDesc TEXT NOT NULL,
            dosage INT(11) NOT NULL,
            dosageForm VARCHAR(255) NOT NULL,
            productPrice DECIMAL(10, 2) NOT NULL,
            productQuantity INT NOT NULL,
            productAddedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            imagePath VARCHAR(255) NOT NULL,
            category_id INT,
            FOREIGN KEY (category_id) REFERENCES categories(category_id)
            );");
        }
        if ($result_cart_items) {
            // CART_ITEMS table exists, no need to create
        } else {
            // CREATE TABLE FOR CART_ITEMS
            echo "<h1>USERS TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $pdo->exec("CREATE TABLE $cart_items_table (
                cart_item_id INT AUTO_INCREMENT PRIMARY KEY,
                userID INT NOT NULL,
                productID INT,
                quantity INT NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (productID) REFERENCES products(productID),
                FOREIGN KEY (userID) REFERENCES users(userID)
            );");
        }

        if ($result_orders) {
            // ORDERS table exists, no need to create
        } else {
            // CREATE TABLE FOR ORDERS
            echo "<h1>USERS TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $pdo->exec("CREATE TABLE $orders_table(
                order_id INT AUTO_INCREMENT PRIMARY KEY,
                userID INT,
                total_amount DECIMAL(10, 2) NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (userID) REFERENCES users(userID)
            );");
        }


        if ($result_payment_details) {
            // payment_details  table exists, no need to create
        } else {
            // CREATE TABLE FOR payment_details 
            echo "<h1>USERS TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $pdo->exec("CREATE TABLE $payment_details_table (
                payment_id INT AUTO_INCREMENT PRIMARY KEY,
                order_id INT,
                payment_method VARCHAR(50) NOT NULL,
                total_amount DECIMAL(10, 2) NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (order_id) REFERENCES orders(order_id)
            );");
        }
        if ($result_order_details) {
            // Order details table already exists, no need to create
        } else {
            // CREATE TABLE FOR ORDER_DETAILS
            echo "<h1>ORDER_DETAILS TABLE NOT FOUND<br></h1>";
            echo "<h1>CREATING ONE NOW, PLEASE REFRESH</h1>";
            $pdo->exec("CREATE TABLE $order_details_table (
                order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
                order_id INT,
                productID INT,
                quantity INT NOT NULL,
                price DECIMAL(10, 2) NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY (order_id) REFERENCES orders(order_id),
                FOREIGN KEY (productID) REFERENCES products(productID)
            );");
        }
    } else {
        echo "<h1>DATABASE DOES NOT EXIST!</h1>";
        echo "<h1>CREATING ONE RIGHT NOW, PLEASE REFRESH THE PAGE</h1>";
        $pdo->exec("CREATE DATABASE $dbname");
    }
} catch (PDOException $e) {
    echo "<h1>Connection failed: </h1>" . $e->getMessage();
}
