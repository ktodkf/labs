function isPrimeDigit(digit){
    let isPrime;
    if (typeof(digit) == 'number'){
     combine(isPrime, digit);
    }
    else if (typeof(digit) == 'object'){
      if (digit.length == 0){
        console.log('Некорректный ввод');
      }
      else{
        for(let i = 0; i < digit.length; i++){
          let num = digit[i];
          let isPrime;
          combine(isPrime, num);
        }
      }
    }
    else{
      console.log('Некорректный ввод')
    }
  }
  
  function isPrimeCheck(isPrime, digit){
    for (let i = 2; i < digit; i++){
    isPrime = true;
    if ((digit % i) == 0){
      isPrime = false;
      break;
    }
   }
    return isPrime;
  }
  
  function isPrimePrint(isPrime, digit){
    if (isPrime){
      console.log(digit + ' простое число');
    }
    else{
     console.log(digit + ' непростое число');
    }
  }

  function combine(isPrime, digit) {
    isPrime = true;
    if (digit < 2){
      console.log(digit + ' непростое число');
    } else {
      isPrime = isPrimeCheck(isPrime, digit);
      isPrimePrint(isPrime, digit);
    }
  }
