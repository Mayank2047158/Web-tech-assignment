const name = document.getElementById('name')
const phone = document.getElementById('phone')
const pass = document.getElementById('password')
const age = document.getElementById('age')
const uname = document.getElementById('uname')
const submit = document.getElementById('submit')
const errorElement = document.getElementById('error')

form.addEventListener('submit', (e) =>{
    let message = []
    if (name.value === '' || name.value == null ) {
        alert("Name is required");
    }
    if(phone.value.length < 10) {
        alert("Phone should be 10 digits");
    }
    if(pass.value.length <= 8) {
        alert("Password must be longer than 8 characters");
    }
    if(pass.value.length >= 20) {
        alert("Password must be less than 20 characters");
    }
    if(pass.value === 'password') {
        alert("Password cannot be password");
    }
    if(Math.sign(age.value) < 0 ) {
        alert("Age should not be Negative");
    }
    if (regexp.test(uname.value))
    {
      console.log("String's first character is uppercase");
    } 
    else
    {
      console.log("String's first character is not uppercase");
    }
    
})