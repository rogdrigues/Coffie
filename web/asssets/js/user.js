var inputPasswordElement = document.querySelector(".table__input[type='password']");
var inputElements = document.querySelectorAll(".table__input");
var submitElement = document.querySelector(".table__input-submit");
//Check if user enter user enter anything to account and password input
function checkInputUser() {
    var inputElementAccount = inputElements[0].value;
    var inputElementPassword = inputElements[1].value;

    if (inputElementAccount.length > 0 && inputElementAccount !== "") {
        if (inputElementPassword.length > 0 && inputElementPassword !== "") {
            submitElement.disabled = false;
        } else {
            submitElement.disabled = true;
        }
    } else {
        submitElement.disabled = true;
    }
}


//User select gender then show checked in class
function onCheckBoxRadio(label) {
    var inputElement = label.previousElementSibling;
    var radioCheckBox = label.lastElementChild;
    var radioCheckBoxCurrent = document.querySelector(".radio.checked");

    if (!inputElement.checked) {
        radioCheckBox.classList.add("checked");
        if (radioCheckBoxCurrent !== null) {
            radioCheckBoxCurrent.classList.remove("checked");
        }
    }
}


//Check if user enter all information in info after sign in 
var inputInfoElements = document.querySelectorAll(".js-table__input");
var submitInfoElement = document.querySelector(".js__input-submit");

function checkUserSignIn() {
    var inputElementNickName = inputInfoElements[0].value;
    var inputElementPhone = inputInfoElements[1].value;
    
    if (inputElementNickName.length > 0 && inputElementNickName !== "" && inputElementPhone.length > 0 && inputElementPhone !== "") {
        if (checkBoxEvent) {
            submitInfoElement.disabled = false;
        } else {
            submitInfoElement.disabled = true;
        }
    } else {
        submitInfoElement.disabled = true;
    }
}

function checkBoxEvent() {
    return true;
}

document.querySelectorAll(".table__radio-group input[type=radio]").forEach((input) => {
    input.addEventListener('change', checkBoxEvent);
})


//Show password
var tablePasswordElement = document.querySelector(".table__password-icon-svg");
function showPassword() {
    if (inputPasswordElement.type === "password") {
        inputPasswordElement.type = "text";
    } else {
        inputPasswordElement.type = "password";
    }
}
if (tablePasswordElement !== null) {
    tablePasswordElement.addEventListener("click", showPassword);
}

function validate_form() {

    const recaptcha_box_checked = (grecaptcha.getResponse()) ? true : false;

    if (recaptcha_box_checked) { 
        return true;
    }
    else {
        alert("You must check the captcha before you can continue!");
        return false;
    }
}