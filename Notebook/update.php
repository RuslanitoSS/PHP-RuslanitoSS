<?php
$sql = 'SELECT `id`, `firstname`, LEFT(`name`, 1) name, LEFT(`lastname`,1) lastname FROM `friends`';
$res = mysqli_query($connect, $sql);
if (mysqli_errno($connect))
    echo mysqli_error($connect);
?>
<ul>
    <?php while ($row = mysqli_fetch_assoc($res)): ?>
        <li>
            <a
                href="index.php?p=update&id=<?= $row['id']; ?>"><?= $row['firstname'] . ' ' . $row['name'] . '.' . $row['lastname'] . '.<br>'; ?></a>
        </li>
    <?php endwhile; ?>
</ul>


<?php if (isset($_GET['id']))
    require ('form.php'); ?>