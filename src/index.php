<html lang="en">
  <head>
    <title>Japanese cars</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
  </head>
  <body class=center>
    <h1>Japanese cars</h1>
    <table>
      <tr>
        <th>Brend</th>
        <th>Model</th>
        <th>Years</th>
      </tr>
      	<?php
				$mysqli = new mysqli("database", "user", "password", "mybase1");
				$result = $mysqli->query("SELECT * FROM cars"); 
	foreach ($result as $row) {
      echo "
      <tr>
        <td>{$row['brend']}</td>
        <td>{$row['model']}</td>
        <td>{$row['years']}</td>
      </tr>
      "; } ?>
    </table>
    <?php
			phpinfo();
		?>
  </body>
</html>
