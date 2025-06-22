<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content=":3">
    <meta name="description" content="Bardzo dobra profesjonalna strona TYLKO DLA MNIE">
    <link rel="stylesheet" href="search.css">
    <title>FanFictistics</title> 
    <!-- Jak zalogowany to zrobić że jest to FF, a jak nie to zrobić nazwę "Jakiś projekt". -->
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

                $query = "SELECT image, image_name, title, author FROM books order by id desc"; 
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
        <form action="#" method="post">
            <label>Tytuł 
                <input type="text" name="title" id="title" required>
            </label>
            <label>Autor
                 <input type="text" name="author" id="author" required>
                </label>
            <label>Data 
                <input type="date" name="data" id="data">
            </label>
            <label>Fandom 
                <select>
                    <option value="Fandom1">Fandom1</option>
                    <option value="Fandom2">Fandom2</option>
                    <option value="Fandom3">Fandom3</option>
                    <option value="Fandom4">Fandom4</option>
                    <option value="Fandom5">Fandom5</option>
                </select>
            </label>
            <label>Ship 
                <select>
                    <option value="Ship1">Ship1</option>
                    <option value="Ship2">Ship2</option>
                    <option value="Ship3">Ship3</option>
                    <option value="Ship4">Ship4</option>
                    <option value="Ship5">Ship5</option>
                </select>
            </label>
            <label>Gwiazdki 
                <span>
                    <input type="checkbox" name="star1" id="star1"> 
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                    <input type="checkbox" name="star1" id="star1">
                </span>
            </label>
            <label>Przeżycia 
                <textarea name="opis-moj" id="opis-moj" cols="30" rows="10"></textarea>
            </label>
            <label>Opis od autora 
                <textarea name="opis-autora" id="opis-autora" cols="30" rows="10"></textarea>
            </label>
            <label>Okładka
                <input type="file" name="zdjecie" id="zdjecie">
            </label>
            <label>Język 
                <select>
                    <option value="pl">pl</option>
                    <option value="ang">ang</option>
                </select>
            </label>
            <label>Platforma  
                <select>
                    <option value="Platforma1">Platforma1</option>
                    <option value="Platforma2">Platforma2</option>
                </select>
            </label>
            
            <input type="submit" value="Wyślij">
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
        <form action="#" method="post">
            <label>Treść
                <textarea name="notatki" id="notatki" cols="30" rows="10"></textarea>
            </label>
            <input type="submit" value="Wyślij">
        </form>
    </section>

</main>



<footer>
    <p>aaa</p>
</footer>


    <script src="script.js"></script>
</body>
</html>