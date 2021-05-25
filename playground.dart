// import 'dart:io';     // dart i/o library

void main(){

  //   Hello World Program
  print('My Dart Program');

  //   String concatenation
  var f_name = 'Tanya';      // 'var' can take any data type
  String l_name = 'Stark';
  print(f_name + ' '+ l_name);

  // I/O with dart
  // stdout.writeln('Enter your favourite food: ');
  // var food = stdin.readLineSync();
  // print('My Favourite Food is $food');

  // Data Types in Dart
    
    // ( values determined at compile time )
    // 1. int
    // 2. double
    // 3. String
    // 4. boolean
    // 5. var ------ once assigned to one data type, cannot change during runtime
/* ------------------------------------------------------------------------------------- */
    // ( values are determined during runtime )
    // 6. dynamic ------------ data types can be reassigned throughout the program

    int candies  = 30;
    print('I have $candies candies.');

    double amount = 320.450;
    print ('I owe \$$amount to you for pencils');

    amount = 34.89;
    print ('I owe \$$amount to you for candies');

    String favouritePlace = 'Beach';
    print('I like to go on $favouritePlace every weekend.');

    bool round = true;
    print('Earth is round - $round');

    var guest = 5;
    print('There are $guest in the living room');

    // This block will not run because the initial value of guest is assigned to integer data type
    // So the guest gets the integer data type
    // guest = 'John Doe';
    // print('$guest is our guest for today.');

    dynamic coin = 5;
    print('Lend me $coin coins of 5 Rupees');
    // Values of data type can be reassigned
    coin = 'Rupees';
    print('I have 15 5 $coin coins.');

  // Type conversion
    // string -> int
    var oneInt = int.parse('1');
    assert( oneInt == 1 );

    // string -> double
    var onePtOneDouble = double.parse('1.1');
    assert( onePtOneDouble == 1.1 );
    
    // int -> string
    var oneStr = 1.toString();
    assert( oneStr == '1' );

    // double -> string
    var piStr = 3.14159.toStringAsFixed(2);
    assert( piStr == '3.14' );

    // double -> int
    var piInt = 3.84159.toInt();
    print(piInt);

    // int -> double
    var threeDouble = 3.toDouble();
    print(threeDouble);

    const a = 1;
    print(a);
    // a = 5;    // shows error on reassigning the const value

    showOutput(square(2.5));
    showOutput(cube(5.5));
    
    // Higher Order Function (e.g. forEach())
    var list = ['apple', 'banana', 'orange', 'grapes'];
    // print('======= With Named Function ========');
    list.forEach(showOutput);

    // Annonymus Function
    // print('======= With Annonymus Function ========');
    list.forEach((fruit) { print(fruit); });

    showOutput(sumPC(10,5));    // Positional
    showOutput(sumN(n1:20, n2:10));    // Named
    showOutput(sumN(n2:20, n1:30));
    showOutput(sumN(n1:10));    // n1 and n2 are optional parameters
    showOutput(sumPN(6, num2: 4));
    // showOutput(sumPN(num2: 4));    // gives error
    showOutput(sumPN(5));
    showOutput(sumPO(6));
    showOutput(sumPO(5,20));
}
  // Functions
    // Named Function
    dynamic square(var num){
      return num*num;
    }

    void showOutput( var msg ){
      print("The message is $msg");
    }

    // Arrow Function
    dynamic cube(var num) => num*num*num;

  // Types of parameters in function
    // Positional Parameters - compulsory parameters
    dynamic sumPC(var num1, var num2) => num1+num2;

    // Named Parameters (default 0)
    dynamic sumN({var n1=0, var n2=1}) => n1+n2;

    // Positional and Named
    dynamic sumPN(var num1, {var num2=1})=> num1+num2;
    // dynamic sumAll( var num1,{var num3 = 2}, [var num2 = 1]) => num1+num2+num3;    // shows error
    // dynamic sumAll( [var num2 = 1], {var num3 = 2} ) => num2+num3;    // shows error

    // Positional Parameters - optional
    dynamic sumPO( var num1 , [var num2 = 1] )=> num1+num2;