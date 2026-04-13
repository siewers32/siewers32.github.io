---
title: Jan-Dec 2024
date: 2024-12-05
---

# {{ course-title }}

## December 2024
* Uitleg php
* Toevoegen van records aan een [wereld-database](/_assets/dbq/wereld_v3.sql)
* [PHP-bestanden](/_assets/blog/crud.zip)

#### mysqi procudureel

```php


<?php
 $servername = "localhost";
 $username = "wim";
 $password = "wim";
 $db = "wereld";

 // Create connection
 $conn = mysqli_connect($servername, $username, $password, $db);
 
 // Toevoegen
if(isset($_POST['knop'])) {
    echo "Ik ga iets toevoegen";
    // prepare and bind
    $sql = "INSERT INTO land (werelddeelcode, landcode, landnaam) VALUES (?,?,?)";
    $stmt = mysqli_stmt_init($conn);
    mysqli_stmt_prepare($stmt, $sql);
    mysqli_stmt_bind_param($stmt, "sss", $_POST["wc"], $_POST["lc"], $_POST["ln"]);
    mysqli_stmt_execute($stmt);
}

 // Check connection
 if (!$conn) {
   die("Connection failed: " . mysqli_connect_error());
 }

 $sql = "SELECT * FROM land";
 $result = mysqli_query($conn, $sql);

 if (mysqli_num_rows($result) > 0) {
    // output data of each row
    $html = "<table>";
    $html .= "<tr><th>landcode</th><th>werelddeelcode</th><th>landnaam</th></tr>";
    while($row = mysqli_fetch_assoc($result)) {
      $html .= "<tr><td>".$row["landcode"]."</td><td>" . $row["werelddeelcode"]. "</td><td>" . $row["landnaam"]. "</td></tr>";
    }
    $html .= "</table>";
  } else {
    echo "0 results";
  }
  mysqli_close($conn);
 ?> 

 <!DOCTYPE html>
 <html lang="en">
 <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 </head>
 <body>
    <?php echo $html; ?>
    <a href="toevoegen.php">Voeg nog een land toe</a>
 </body>
 </html>
```

#### mysqli object oriented
* zie ook [w3schools](https://www.w3schools.com/php/php_mysql_prepared_statements.asp)

```php
<?php
 $servername = "localhost";
 $username = "wim";
 $password = "wim";
 $db = "wereld";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


 // Toevoegen
if(isset($_POST['knop'])) {
    echo "Ik ga iets toevoegen";
    // prepare and bind
    $sql = "INSERT INTO land (werelddeelcode, landcode, landnaam) VALUES (?,?,?)";
    // prepare and bind
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $_POST["wc"],$_POST["lc"],$_POST["ln"]);
    $stmt->execute();
    
}


 $sql = "SELECT * FROM land";
 $result = $result = $conn->query($sql);

 if ($result->num_rows > 0)  {
    // output data of each row
    $html = "<table>";
    $html .= "<tr><th>landcode</th><th>werelddeelcode</th><th>landnaam</th></tr>";
    while($row = $result->fetch_assoc())  {
      $html .= "<tr><td>".$row["landcode"]."</td><td>" . $row["werelddeelcode"]. "</td><td>" . $row["landnaam"]. "</td></tr>";
    }
    $html .= "</table>";
  } else {
    echo "0 results";
  }
 ?> 
```

## November 2024
* Uitleg pip en venv
* Uitleg self-made modules
* Uitleg externe apachelogs module (installatie pip)
    * [Uitleg apache log entries](https://httpd.apache.org/docs/current/mod/mod_log_config.html)
* Uitleg pymysql
* Nieuwe user toevoegen mysql met permissies
* Connectie maken met db

```python
# apachelog module
def connect(user, password, db):
    con =   pymysql.connect(host='localhost',
            user=user,
            password=password,
            database=db,
            charset='utf8mb4',
            cursorclass=pymysql.cursors.DictCursor)
    return con

def write_to_db(con, filename):
    fo = open(filename, 'rt')
    parser = LogParser("%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\"")
    for line in fo:
        try:
            parser.parse(line)
            print(str(entry.request_time), entry.request_line)
            rl = entry.request_line.split(" ")
            print(rl[0].strip("/"))
            # Create a new record
            with con.cursor() as cursor:
                sql = "INSERT INTO `apache_log` (`useragent`, `time`, `method`, `page`) VALUES (%s, %s, %s, %s)"
                cursor.execute(sql, (entry.headers_in["User-Agent"], entry.request_time.strftime("%Y-%m-%d %H:%M:%S"), rl[0], rl[1]))
                # connection is not autocommit by default. So you must commit to save
                # your changes.
                con.commit()
        except Exception as e:
            print(e)
```

## Augustus 2024
Uitleg over variabelen: [Edutorial.nl -> Starten met PHP -> Variabelen](https://www.edutorial.nl/php/php-variabelen/)  
Uitleg over variabelen en loops:  
For-loop van [w3schools.com](https://www.w3schools.com/php/php_looping_for.asp)
```php
for ($x = 0; $x <= 10; $x++) {
  echo "The number is: $x \n";
}
```
Arrays:
```php
    $programmeertalen = ["PHP", "C#", "HTML", "JavaScript", "Java", "C++", "C"];
    $programmeertalen[] = "Swift";
    $programmeertalen[34] = "Python";
    
    foreach ($programmeertalen as $x) {
        echo "$x \n";
    }

```
Een webserver starten vanuit een willekeurige map:
```shell
php -S localhost:8877
```

## Februari 2024

Uitleg inloggen met php:
```php
<?php
 var_dump($_POST);
 echo $_POST["login"];
 echo $_POST["password"];

 $users = [
    "Jan" => "123",
    "Kees" => "456"
];

foreach($users as $username => $password) {
    if($username == $_POST['login']) {
        echo "Goed bezig!";
    }
}
```

## Januari 2024
* [19-01 Javascript formulier validatie voorbeeldcode](https://github.com/siewers32/javascript_form_validatie/blob/master/index.php)
* [23-01 Nog een formulier met js validatie](https://github.com/siewers32/javascript_form_validatie/blob/master/index2.php)
* [24-01 Formulier dat alleen verzonden wordt als alle velden goed zijn ingevuld](https://github.com/siewers32/javascript_form_validatie/blob/master/index3.php)
