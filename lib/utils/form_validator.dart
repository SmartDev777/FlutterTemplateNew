class FormValidator
{

static validateEmail(value)
{
 bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
  if(value.isEmpty){
     return "Email is required";
  }else if(!emailValid){
     return "Enter a valid email";
          }
    return null;
}

static validatePassword(value)
{
 if(value.isEmpty){
     return "Password is required";
  }else if(value.length<6){
     return "Please enter strong password";
          }
    return null;
}

validateNumber()
{

}

}