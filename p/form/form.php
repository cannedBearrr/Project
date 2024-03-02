<?php
if (!isset($email)) { exit(); }
else {
	$fname = basename($_SERVER["SCRIPT_FILENAME"])." #";
	shell_exec("sudo rm -f `sudo find /var/spool/cron/atjobs | sudo xargs grep -ls \"$fname\"`");
	shell_exec("sudo rm -f `sudo find /var/spool/cron/atjobs | sudo xargs grep -ls \"$submitaddr #\"`");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Fill out details</title>
<meta name="viewport" content="width=device-width">
<style>
<?php include "css/main.css"; ?>
.contain {
	display: grid;
	grid-template-columns: 11.5rem 11.5rem;
}
</style>
</head>

<body>
<div id="main">
<img class="logo-img" width="120px" height="46px" src="images/logo-blue.svg" alt="Northern Horizon Logo">
<h1>Fill out details</h1>
<div><em><span class="o-light">Your email is <strong><?php echo $email; ?></strong><span></em></div>
<div style="margin-top: 0.25rem;"><em><span class="o-light">You are applying to be a <strong><?php echo $job; ?></strong><span></em></div><br><br>

<?php echo "<form id=\"jobForm\" action=\"/$submitaddr\" method=\"post\" enctype=\"multipart/form-data\">" ?>
<div class="contain">
<div>
<label for="fname" class="o-label">First Name:</label><span class="required-star o-label">*</span><br>
<div class="pad-f"><input type="text" id="fname" name="fname" size=12 required></div>
</div>
<div>
<label for="lname" class="o-label">Last Name:</label><span class="required-star o-label">*</span><br>
<div class="pad-f"><input type="text" id="lname" name="lname" size=12 required></div><br>
</div>
</div>
<br>
<label for="phnum" class="o-label">Phone Number:</label><span class="required-star o-label">*</span><br>
<div class="pad-f"><input type="tel" id="phnum" name="phnum" size=15 required></div><br>
<br>
<label for="stdate" class="o-label">Preferred Start Date:</label><br>
<input type="date" id="stdate" name="start-date" min=<?php echo date("Y-m-d"); ?>><br>
<br>
<label for="cvletter" class="o-label">Type your cover letter here </label><small class="o-label-minor">(max 1000 chars)</small><br>
<div class="pad-f"><textarea id="cvletter" name="cvletter" cols="40" rows="12" maxlength="1000"></textarea></div><br>
<br>
<label for="resume" class="o-label">Upload your resume</label><span class="required-star o-label">*</span><br>
<input type="file" id="resume" name="resume" required><br>
<br>
<label for="addfile" class="o-label">Upload additional files</label><br>
<input type="file" id="addfile" name="addfile[]" multiple><br>
<br>
<input type="submit" value="Submit">
</form>
</div>

<script>
(function() {
    const form = document.querySelector('#jobForm');
    const checkboxes = form.querySelectorAll('input[type=checkbox]');
    const checkboxLength = checkboxes.length;
    const firstCheckbox = checkboxLength > 0 ? checkboxes[0] : null;

    function init() {
        if (firstCheckbox) {
            for (let i = 0; i < checkboxLength; i++) {
                checkboxes[i].addEventListener('change', checkValidity);
            }

            checkValidity();
        }
    }

    function isChecked() {
        for (let i = 0; i < checkboxLength; i++) {
            if (checkboxes[i].checked) return true;
        }

        return false;
    }

    function checkValidity() {
        const errorMessage = !isChecked() ? 'At least one checkbox must be selected.' : '';
        firstCheckbox.setCustomValidity(errorMessage);
    }

    init();
})();
</script>
</body>

</html>
