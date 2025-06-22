<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content=":3">
    <meta name="description" content="Bardzo dobra profesjonalna strona TYLKO DLA MNIE">
    <link rel="stylesheet" href="style.css">
    <title>FanFictistics</title> 
    <!-- Jak zalogowany to zrobić że jest to FF, a jak nie to zrobić nazwę "Jakiś projekt". -->
    <script>
    if(window.history.replaceState){
        window.history.replaceState(null, null, window.location.href);
    }

    </script>
</head>
<body>
<header>
    <span>Lofciam to</span>
    <nav>
        <ul>
            <div>
                <li><a href="https://onedrive.live.com/view.aspx?resid=16A63BB7D0493C7B!139&ithint=file%2cxlsx&authkey=!ABwRsnquwvJ4E-A" target="_blank">Excel</a></li>
                <li><a href="search.php">Przeglądaj</a></li>                
            </div>
            <li><a href="index.php"><h1>Fictistics</h1></a></li>
            <div>
                <li><a href="stats.php">Statystyki</a></li>
                <li><a href="logowanie.php">Logowanie</a></li>
            </div>
        </ul>
    </nav>

    <div id="baner">
        <div>
            <h2>
                I read fiction <br>
                So I can escape from <br>
                <span>REALITY</span>
            </h2>
            <a href="search.php" class="guzik">Delulu side</a>
        </div>
    </div>
</header>

<main>
    <section class="ksiazki">
        <h3>Ostatnio dodane</h3>
        <div class="ksiazki-content">
                <?php
                $conn = mysqli_connect("localhost", "root", "", "fictistics");
                if (!$conn) {
                    die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
                }

                $query = "SELECT image, image_name, title, author FROM books order by id desc limit 4"; 
                $result = $conn->query($query);

                while ($row = $result->fetch_assoc()) {
                    echo '<div class="ff">
                            <img src="'. htmlspecialchars($row['image']).'" alt="'. htmlspecialchars($row['image_name']).'">
                            <p class="title">'. htmlspecialchars($row['title']).'</p>
                            <p class="author">'. htmlspecialchars($row['author']).'</p>
                        </div>';
                }

                $conn->close();
                ?>
            
        </div>
    </section>

    <section id="stats">
        <h3>Statystyki</h3>
        <div>
            <div class="ministats">
                <h4>176</h4>
                <span>Przeczytanych</span>
            </div>
            <div class="ministats">
                <h4>190</h4>
                <span>Czytanych</span>
            </div>
            <div class="ministats">
                <h4>11111</h4>
                <span>dni od pierwszego ff</span>
            </div>
            <a href="stats.html" class="guzik">Więcej</a>
        </div>
    </section>

    <section id="dodawanie">
        <h3>Dodawanko</h3>
        <form name="dodawanie" method="post" enctype="multipart/form-data">
            <div>
                <label>Tytuł 
                    <input type="text" name="title" id="title">
                </label>
                <label>Autor
                    <input type="text" name="author" id="author">
                </label>
                <label>Data 
                    <input type="date" name="data" id="data">
                </label>
                <label>Fandom:
                    <select name="fandom" id="fandom">
                        <option value="">Wybierz</option>
                        <?php
                        $conn = mysqli_connect("localhost", "root", "", "fictistics");
                        if (!$conn) {
                            die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
                        }

                        $query = "SELECT id, name FROM fandom order by name asc"; 
                        $result = $conn->query($query);

                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="' . $row['id'] . '">' . htmlspecialchars($row['name']) . '</option>';
                        }

                        $conn->close();
                        ?>
                    </select>
                </label>

                <label>Ship 
                    <select name="ship" id="ship">
                         <?php
                        $conn = mysqli_connect("localhost", "root", "", "fictistics");
                        if (!$conn) {
                            die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
                        }

                        $query = "SELECT id, name , fandom_id FROM ship order by name asc"; 
                        $result = $conn->query($query);

                        while ($row = $result->fetch_assoc()) {
                            echo '<option data-fandom="'. $row['fandom_id']. '" value="' . $row['id'] . '">' . htmlspecialchars($row['name']) . '</option>';
                        }

                        $conn->close();
                        ?>
                    </select>
                </label>
                <label>Ilość rozdziałów
                    <input type="number" name="chapters" id="chapters">
                </label>
                <label>Gwiazdki 
                    <div class="stars">
                        <input type="radio" name="stars" id="star10" value="10"><label for="star10">★</label>
                        <input type="radio" name="stars" id="star9" value="9"><label for="star9">★</label>
                        <input type="radio" name="stars" id="star8" value="8"><label for="star8">★</label>
                        <input type="radio" name="stars" id="star7" value="7"><label for="star7">★</label>
                        <input type="radio" name="stars" id="star6" value="6"><label for="star6">★</label>
                        <input type="radio" name="stars" id="star5" value="5"><label for="star5">★</label>
                        <input type="radio" name="stars" id="star4" value="4"><label for="star4">★</label>
                        <input type="radio" name="stars" id="star3" value="3"><label for="star3">★</label>
                        <input type="radio" name="stars" id="star2" value="2"><label for="star2">★</label>
                        <input type="radio" name="stars" id="star1" value="1"><label for="star1">★</label>
                    </div>
                </label>
            </div>
            
            <div>
                <label>Przeżycia 
                    <textarea name="opis_moj" id="opis-moj" cols="30" rows="10"></textarea>
                </label>
                <label>Opis od autora 
                    <textarea name="opis_autora" id="opis-autora" cols="30" rows="10"></textarea>
                </label>
                <label>Okładka
                    <input type="file" name="zdjecie[]"> 
                </label>
                <label>Język 
                    <select name="lang">
                        <option value="O">Wybierz</option>
                        <option value="1">Polski</option>
                        <option value="2">Angielski</option>
                    </select>
                </label>
                <label>Platforma  
                    <select name="platform">
                        <option value="O">Wybierz</option>
                        <option value="1">AO3</option>
                        <option value="2">Wattpad</option>
                        <option value="3">Blog</option>
                        <option value="4">inne</option>
                    </select>
                </label>
                <label>Status  
                    <select name="status">
                        <option value="O">Wybierz</option>
                        <option value="1">Zakończone</option>
                        <option value="2">Czytane</option>
                        <option value="3">Planowane</option>
                    </select>
                </label>
                <label>Link 
                    <input type="text" name="link" id="link">
                </label>
                <!-- <label>Kategoria  
                        <input type="checkbox" name="category" id="star10" value="10"><label for="star10">aa</label>
                        <input type="checkbox" name="category" id="star9" value="9"><label for="star9">bb</label>
                        <input type="checkbox" name="category" id="star8" value="8"><label for="star8">cc</label>
                </label> -->
                <input type="submit" value="Wyślij" name="dodawanie">
            </div>


        </form>
    </section>

    <section class="ksiazki">
        <h3>Chcesz przeczytać</h3>
        <div class="ksiazki-content">
            <div class="ff">
                <img src="assets/test2.jpg" alt="testowe">
                <p class="title">Blah blah blah blah</p>
                <p class="author">Autor</p>
            </div>
            <div class="ff">
                <img src="assets/test2.jpg" alt="testowe">
                <p class="title">Blah blah blah blah</p>
                <p class="author">Autor</p>
            </div>
            <div class="ff">
                <img src="assets/test2.jpg" alt="testowe">
                <p class="title">Blah blah blah blah</p>
                <p class="author">Autor</p>
            </div>
            <div class="ff">
                <img src="assets/test2.jpg" alt="testowe">
                <p class="title">Blah blah blah blah</p>
                <p class="author">Autor</p>
            </div>
        </div>
    </section>

    <section id="kontakt">
        <h3>Notatki</h3>
        <form name="notatki" method="post">
            <label>Treść
                <textarea name="tresc" id="notatki" cols="30" rows="10"></textarea>
            </label>
            <input type="submit" value="Wyślij" name="notatki">
        </form>
    </section>

</main>



<footer>
    <p>aaa</p>
</footer>
    <script src="script.js">
    </script>
<script>
    const fandomSelect = document.getElementById("fandom");
    const shipSelect = document.getElementById("ship");

    function filterShipsByFandom() {
        const selectedFandom = fandomSelect.value;

        for (let option of shipSelect.options) {
            const optionFandom = option.dataset.fandom;
            if (!optionFandom) {
                option.hidden = true;
                continue;
            }

            option.hidden = optionFandom !== selectedFandom;
        }

        const firstVisible = Array.from(shipSelect.options).find(opt => !opt.hidden);
        if (firstVisible) {
            shipSelect.value = firstVisible.value;
        } else {
            shipSelect.value = ""; 
        }
    }

    fandomSelect.addEventListener("change", filterShipsByFandom);
    window.addEventListener("DOMContentLoaded", filterShipsByFandom);



</script>


<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$user = 'root';
$password = '';
$db = 'fictistics';

$conn = mysqli_connect($host, $user, $password, $db);

if (!$conn) {
    die("Błąd połączenia: " . mysqli_connect_error());
}

function reArrayFiles(&$file_post) {
    $file_ary = [];
    $file_count = count($file_post['name']);
    $file_keys = array_keys($file_post);

    for ($i = 0; $i < $file_count; $i++) {
        foreach ($file_keys as $key) {
            $file_ary[$i][$key] = $file_post[$key][$i];
        }
    }

    return $file_ary;
}

$phpFileUploadErrors = array(
    0 => 'Brak błędu, plik przesłany pomyślnie.',
    1 => 'Plik przekracza upload_max_filesize w php.ini.',
    2 => 'Plik przekracza MAX_FILE_SIZE z formularza HTML.',
    3 => 'Plik został tylko częściowo przesłany.',
    4 => 'Nie przesłano żadnego pliku.',
    6 => 'Brakuje folderu tymczasowego.',
    7 => 'Nie udało się zapisać pliku na dysku.',
    8 => 'Rozszerzenie PHP zatrzymało przesyłanie pliku.',
);

if(isset($_POST['dodawanie'])){
    // Pobierz dane z formularza
    $title = $_POST['title'];
    $author = $_POST['author'];
    $date = $_POST['data'] ?: null;
    $fandom = $_POST['fandom'];
    $ship = !empty($_POST['ship']) ? $_POST['ship'] : null;
    $chapters = $_POST['chapters'];
    $stars = $_POST['stars'] !== "0" ? $_POST['stars'] : null;
    $opis_moj = !empty($_POST['opis_moj']) ? $_POST['opis_moj'] : null;
    $opis_autora = !empty($_POST['opis_autora']) ? $_POST['opis_autora'] : null;
    $language = $_POST['lang'];
    $platform = $_POST['platform']; 
    $status = $_POST['status'];
    $link = $_POST['link'];

    // Obsługa pliku
    $file_array = reArrayFiles($_FILES['zdjecie']);

    if (empty($_FILES['zdjecie']['name'][0])) {
        $name = null;
        $img_dir = null;

        $stmt = mysqli_prepare($conn, "INSERT INTO books VALUES (null, ?, ?, ?, ?, ?, 1, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        mysqli_stmt_bind_param($stmt, "sssssisissssssss", 
            $title, $author, $date, $fandom, $ship, $chapters, $status, $stars,
            $opis_moj, $opis_autora, $name, $img_dir, $language, $platform, $link
        );

        if (!mysqli_stmt_execute($stmt)) {
            echo "Błąd zapytania: " . mysqli_stmt_error($stmt);
        }

        mysqli_stmt_close($stmt);
    } 
    else {
        for ($i = 0; $i < count($file_array); $i++) {
            if ($file_array[$i]['error']) {
                echo "<div class='alert alert-danger'>{$file_array[$i]['name']} - {$phpFileUploadErrors[$file_array[$i]['error']]}</div>";
            } else {
                $extensions = array('jpg', 'png', 'gif', 'jpeg');
                $file_ext = explode('.', $file_array[$i]['name']);
                $name = $file_ext[0];
                $file_ext = end($file_ext);

                if (!in_array(strtolower($file_ext), $extensions)) {
                    echo "<div class='alert alert-danger'>{$file_array[$i]['name']} - Niedozwolone rozszerzenie!</div>";
                } else {
                    $img_dir = 'assets/covers/' . basename($file_array[$i]['name']);
                    move_uploaded_file($file_array[$i]['tmp_name'], $img_dir);

                    $stmt = mysqli_prepare($conn, "INSERT INTO books VALUES (null, ?, ?, ?, ?, ?, null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                    mysqli_stmt_bind_param($stmt, "sssssiissssssss", 
    $title, $author, $date, $fandom, $ship, $chapters, $status, $stars,
    $opis_moj, $opis_autora, $name, $img_dir, $language, $platform, $link
                    );

                    if (!mysqli_stmt_execute($stmt)) {
                        echo "Błąd zapytania: " . mysqli_stmt_error($stmt);
                    }

                    mysqli_stmt_close($stmt);
                }
            }
        }
    }   
}

function pre_r($array){
    echo '<pre>';
    print_r($array);
    echo '</pre>';
}

if(isset($_POST['notatki'])){
    $notatka = $_POST['tresc'];

    $stmt = mysqli_prepare($conn, "INSERT INTO notes (id, note) VALUES (null, ?)");
    mysqli_stmt_bind_param($stmt, "s", $notatka);

    if (!mysqli_stmt_execute($stmt)) {
        echo "Błąd zapytania: " . mysqli_stmt_error($stmt);
    }

    mysqli_stmt_close($stmt);
}

mysqli_close($conn);
?>


</body>
</html>