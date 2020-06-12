function isPrimeNumber(digit){
 if (typeof(digit) == 'number'){
     let isPrime = isPrimeResult(digit);
    }
    else if (typeof(digit) == 'object'){
      if (digit.length == 0){
        console.log('Некорректный ввод');
      }
      else{
        for(let i = 0; i < digit.length; i++){
          let num = digit[i];
          let isPrime = isPrimeResult(num);
      }
    } 
  }   
    else{
      console.log('Некорректный ввод')
    }
  }
  
  function isPrimeDigit(digit){
    for (let i = 2; i < digit; i++){
    isPrime = true;
    if ((digit % i) == 0){
      isPrime = false;
      break;
    }
   }   
   if (digit < 2){
      isPrime = false;
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

  function isPrimeResult(digit) {
      isPrime = true;
      isPrime = isPrimeDigit (digit);
      isPrimePrint(isPrime, digit);
      return isPrime;
}
