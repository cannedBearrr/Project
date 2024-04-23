<?php

$output = shell_exec("echo \"rm form.$newform.php #\" | at now + 30 minutes 2>&1");
echo "<pre>$output</pre>";

