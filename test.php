<?php
header('Surrogate-Key: test');
echo date('m/d/Y h:i:s a', time()) . "<br />";
if (!isset($_GET["x"])) {
  for ($x = 1; $x <= 1000; $x++) {
      echo "<a href=\"/test.php?x=$x\">$x</a>\n";
  }
}
?>
