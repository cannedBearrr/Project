<?php if (!isset($email)) { exit(); } ?>
<!DOCTYPE html>
<html>
<head></head>

<body>
<h1>Fill out details </h1><h5><?php echo $email; ?></h5>
<?php echo "<form action=\"/$submitaddr\" method=\"post\">" ?>
<label for="name">Name:</label><br>
<input type="text" id="name" name="name"><br>
<br>
<label for="stink">Is Henry stinky?</label><br>
<input type="radio" id="stinky" name="stink" value="Yes">
<label for="stinky">Yes</label><br>
<input type="radio" id="stinkn" name="stink" value="No">
<label for="stinkn">No</label><br>
<br>
<input type="submit" value="Submit">
</form>


</body>

</html>
