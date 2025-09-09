document.getElementById('togglePassword1').addEventListener('click', function () {
    const passwordField = document.getElementById('password');
    const icon = document.getElementById('togglePassword1');
    // Toggle password visibility
    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        icon.src = 'eye-open.png';
    } else {
        passwordField.type = 'password';
        icon.src = 'eye-close.png';
    }
});

document.getElementById('togglePassword2').addEventListener('click', function () {
    const confirmPasswordField = document.getElementById('confirmPassword');
    const icon = document.getElementById('togglePassword2');
    // Toggle confirm password visibility
    if (confirmPasswordField.type === 'password') {
        confirmPasswordField.type = 'text';
        icon.src = 'eye-open.png';
    } else {
        confirmPasswordField.type = 'password';
        icon.src = 'eye-close.png';
    }
});

function checkPassword() { 
	let password = document.getElementById("password").value;
	let cnfrmPassword = document.getElementById("cnfrm-password").value;
	let message = document.getElementById("message");
	console.log(" Password:", password, '\n', "Confirm Password:",cnfrmPassword);
	
	if(password.length != 0){
		if (password = cnfrmPassword) {
			message.textContent = "Wow, Passwords match";
			message.style.backgroundColor = "#1dcd59";
		}
		else{
			message.textContent = "Sorry, Password don't match";
			message.style.backgroundColor = "#ff4d4d";
		}
	}
	else{
	alert("Password can't be empty!");
	message.textContent = "";
	}
}