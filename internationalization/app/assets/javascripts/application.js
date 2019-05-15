
//= require rails-ujs 
//= require jquery 
//= require activestorage 
//= require turbolinks 
//= require_tree . 

function addition() {
  let userLang = navigator.language || navigator.userLanguage;
  let num1 = $('input[name="numberA"]').val();
  let num2 = $('input[name="numberB"]').val();
  if (num1.match(/\d/i) && num2.match(/\d/i)) {
    $('input[name="solution"]').val(parseInt(num1) + parseInt(num2))
  }
  else {
    if (userLang == 'es-ES') {
      alert('Error!: Ingrese números para realizar la sumatoria');
    }
    else {
      alert('Error!: You must type numbers to make the addition')
    }
    clean();
  }
}
function repetition() {
  let userLang = navigator.language || navigator.userLanguage;
  let name = $('input[name="name"]').val();
  if (name != '') {
    let arryNames = [];
    for (let i = 0; i < 5; i++) {
      arryNames.push(name);
    }
    $('textarea[name="repetition"]').val(arryNames);
  }
  else {
    if (userLang == 'es-ES') {
      alert('Error!: Ingrese su nombre para imprimirlo 5 veces.');
    }
    else {
      alert('Error!: Type your name so it can be printed 5 times.')
    }
    clean();
  }
}
function clean() {
  $('input[name="numberA"]').val('');
  $('input[name="numberB"]').val('');
  $('input[name="solution"]').val('');
  $('input[name="name"]').val('');
  $('textarea[name="repetition"]').val('');
  $('#numberA').focus();
}