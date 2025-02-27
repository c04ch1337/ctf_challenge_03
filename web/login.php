<?php
if ($_POST['username'] === 'admin' && $_POST['password'] === 'password123') {
    echo "<p>Flag 1: CTF{weak_credentials}</p>";
} else {
    echo "<form method='post'>
        Username: <input type='text' name='username'><br>
        Password: <input type='password' name='password'><br>
        <input type='submit' value='Login'>
    </form>";
}
?>
