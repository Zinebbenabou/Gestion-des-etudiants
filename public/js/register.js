
// ? register
let mybody = document.querySelector("body")
let firstName = document.querySelector("#inputFirstName")
let lastName = document.querySelector("#inputLastName")
let email = document.querySelector("#inputEmail")
let password = document.querySelector("#inputPassword")
let confirmPassword = document.querySelector("#inputPasswordConfirm")
let submit = document.querySelector(".submit")

let dataRegister=[]



submit.addEventListener("click",()=>{
    let userProfil ={
        firstName : firstName.value, 
        lastName :lastName.value,
        email : email.value,
        password :password.value ,
        confirmPassword : confirmPassword.value
    }
    if (password.value !== confirmPassword.value) {
        alert("Passwords do not match");
        return;
    }

    if (dataRegister.find(element => element.email === email)) {
        alert("this email already exist")
    } else if (dataRegister.find(element => element.lastName === lastName)) {
        alert ("this last name already exist")
    } else {
        dataRegister.push(userProfil)
        alert("Your account has been successfully created")
        console.log(dataRegister);
        window.location.href = "../pages/login.html"
        
    }
})
//& login 
let passwordL= document.querySelector(".password")
let emailL= document.querySelector(".email")
let signinButton= document.querySelector(".submit")


signinButton.addEventListener("click", 
    authenticationUser()
)
const authenticationUser =(emailUser, passwordUser)=>{
    let emailValue = email.value
    let passwordValue = password.value
    let emailCheck = dataRegister.find(element => element.emailUser === emailValue)
    let passwordCheck = dataRegister.find(element => element.passwordUser === passwordValue)
    if (emailCheck && passwordCheck) {
        alert("Log in succesfully")
    } else {
        alert("this mail or password")
    }

}




