<?php
session_start();

/* if (!isset($_POST['iter'])) {
    ;
} */
$_SESSION['iter'] = 1;
if (isset($_POST['eval']) && $_POST['iter'] == $_SESSION['iter']) {
    eval('$res=' . $_POST['eval'] . ';');
    $_SESSION['history'][] = $_POST['eval'] . '=' . $res;
    $_SESSION['iter']++;
}   
;
?>

<form name="main" method="POST" target="index.php"> 
    <aside>
        <input type="text" name="eval" placeholder="Введите выражение" required>
        <button class="form-btn" type="submit" name="calculate">Вычислить</button>
        <button class="form-btn" type="submit" name="destroy">Очистить кэш</button>
        <input type="hidden" name="iter" value="<?php echo $_SESSION['iter']; ?>">
    </aside>
</form>

<?php
if (isset($_SESSION['history'])) {
    foreach($_SESSION['history'] as $elem) {
        echo $elem . "<br>";
    };
};
  
?>