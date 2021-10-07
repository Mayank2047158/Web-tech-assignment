const name = document.getElementById('name')
const pass = document.getElementById('password')
const form = document.getElementById('form')
const phone = document.getElementById('phone')
const email = document.getElementById('email')
const date = document.getElementById('date')
const submit = document.getElementById('submit')
var date_regex = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/;
const errorElement = document.getElementById('error')

form.addEventListener('submit', (e) =>{
    let message = []
    if (name.value === '' || name.value == null ) {
        message.push('Name is required')
    }
    if (phone.value === '' || phone.value == null ) {
        message.push('Please provide us your feedback')
    }
    if(phone.value.length < 10) {
        message.push('Phone must be longer 10 characters')
    }
    if(pass.value.length <= 8) {
        message.push('Password must be longer than 8 characters')
    }
    if(pass.value.length >= 20) {
        message.push('Password must be less than 20 characters')
    }
    if(pass.value === 'password') {
        message.push('Password cannot be password')
    }
    if(message.length > 0) {
        e.preventDefault()
        errorElement.innerText = message.join(' , ')
    }
    if (!(date_regex.test(date))) {
        message.push('Wrong Date, Please enetr again!')
    }
    
    if(submit.checked==false)
         {
         alert("plz check the checkbox field");
         document.getElementbyId("submit").focus();
         return false;
         }
    
})