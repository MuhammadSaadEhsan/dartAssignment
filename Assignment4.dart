// ignore_for_file: unused_local_variable
import 'dart:io';

void main() {
// Q1. Write a program that takes a list
// of numbers as input and prints the even numbers in the list using a for loop.

// Example:
// Input:
// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output:
// 2 4 6 8 10

  print("\nSolution of Q.1 :\n");

  print("The even numbers are :");
  var list1 = [1, 2, 3, 4, 5, 6, 7, 8, 35, 74, 98, 101];
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] % 2 == 0) {
      stdout.write("${list1[i]}, \n");
    }
  }

// Q2.  Write a program that prints the Fibonacci sequence up to a given number using a for loop.

// Example:
// Input:
// 10
// Output:
// 0 1 1 2 3 5 8
  print("\nSolution of Q.2 :\n");

  int input = 10;
  List<int> fibonacci = [0, 1];

  print("The Fibonacci sequence up to $input is :");
  for (var i = 0; i < fibonacci.length; i++) {
    print(fibonacci[i]);
    var newFibonacci = (fibonacci[i] + fibonacci[i + 1]);
    if (newFibonacci > input) {
      print(fibonacci[i + 1]);
      break;
    }
    fibonacci.add(fibonacci[i] + fibonacci[i + 1]);
  }

//   Q3.  Implement a code that checks whether a given number is prime or not.

// Example:
// Input:
// 17
// Output:
// 17 is a prime number.

  print("\nSolution of Q.3 :\n");

  int given = 11;
  bool isPrime = true;

  for (var i = 2; i < given; i++) {
    isPrime = (given % i != 0);
    if (!isPrime) {
      print("$given is not a prime number");
      break;
    }
  }
  if (isPrime) {
    print("$given is a prime number");
  }

//   Q4.  Implement a code that finds the
// largest element in a list using a for loop.

// Example:
// Input:
// [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output:
// Largest element: 9
  print("\nSolution of Q.4 :\n");

  var max = 0;
  var myList = [3, 9, 1, 6, 4, 2, 8, 5, 7];

  for (var i = 0; i < myList.length; i++) {
    if (myList[i] > max) {
      max = myList[i];
    }
  }
  print("Largest number : $max");

// Q5.  Write a program that prints the
// multiplication table of a given number using a for loop.

// Example: Input: 5
// Output:
// 5 x 1 = 5
// 5 x 2 = 10
// 5 x 3 = 15
// ...
// 5 x 10 = 50
  print("\nSolution of Q.5 :\n");

  int tableNumber = 4;
  int tableRange = 10;

  for (int i = 0; i < tableRange; i++) {
    print("$tableNumber X ${i + 1} = ${tableNumber * (i + 1)}");
  }

// Q6. Implement a function that checks if a given string is a palindrome.

// Example:
// Input:
// "radar"
// Output:
// "radar" is a palindrome.
  print("\nSolution of Q.6 :\n");

  bool palindrome = true;
  String input1 = "damad";
  if ((input1.length / 2) % 2 != 0) {
    // when length of string is odd
    var iteration = input1.length ~/ 2;
    for (var i = 0; i < iteration; i++) {
      if (input1[i] != input1[input1.length - 1 - i]) {
        palindrome = false;
      }
    }
  } else {
    // when length of string is even
    var iteration = input1.length / 2;
    for (var i = 0; i < iteration; i++) {
      if (input1[i] != input1[input1.length - 1 - i]) {
        palindrome = false;
      }
    }
  }
  if (palindrome) {
    print("$input1 is a palindrome");
  } else {
    print("$input1 is not a palindrome");
  }

// Q7.  Write a program to make such a pattern like a right angle triangle with a number which will repeat a number in a row. The pattern like :

//  1
//  22
//  333
//  4444
  print("\nSolution of Q.7 :\n");

  int input2 = 4;
  for (var i = 0; i < input2; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write(i + 1);
    }
    print("");
  }

// Q8.  Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition.
  print("\nSolution of Q.8 :\n");

  var myList1 = [3, 22, 18, 88, 9, 1, 6, 4, 2, 8, 5, 7];
  print("The numbers greater than 5 are :\n");
  for (var i = 0; i < myList1.length; i++) {
    if (myList1[i] > 5) {
      stdout.write("${myList1[i]}, ");
    }
  }

// Q9.   Write a program that counts the number of vowels in a given string using a for loop and if-else condition.
  print("\n \nSolution of Q.9 :\n");

  String input3 = "Muhammad Saad Ehsan";
  int vowels = 0;
  var vowelList = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];

  for (var i = 0; i < input3.length; i++) {
    if (vowelList.contains(input3[i])) {
      vowels += 1;
    }
  }
  print("The total vowels in $input3 is :  $vowels");

// Q10. Implement a code that finds the maximum and minimum elements in a list using a for loop and if-else condition.
  print("\nSolution of Q.10 :\n");

  var myList2 = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  var maximum = myList2[0];
  var min = myList2[0];

  for (var i = 0; i < myList2.length; i++) {
    if (myList2[i] > max) {
      max = myList2[i];
    }
    if (myList2[i] < min) {
      min = myList2[i];
    }
  }
  print("The maximum number is : $max");
  print("The minimum number is : $min");

// Q11. Write a program that calculates the
// sum of the squares of all odd numbers in a given list using a for loop and
// if-else condition.
  print("\nSolution of Q.11 :\n");

  var newList = [1, 2, 3, 5, 6, 8, 9];
  var sum = 0;
  for (var i = 0; i < newList.length; i++) {
    if (newList[i] % 2 != 0) {
      sum += (newList[i]) * (newList[i]);
    }
  }
  print("The sum of square of all odd numbers is : $sum");

// Q12. Write a program that takes a list of student details as input, where each student is represented by a map containing their name, marks, section, and roll number. The program should determine the grade of each student based on their average score (assuming maximum marks for each subject is 100) and print the student's name along with their grade.
  print("\nSolution of Q.12 :\n");

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];
  for (var i = 0; i < studentDetails.length; i++) {
    int newSum = 0;
    var grade;
    var name = studentDetails[i]['name'];
    List<int> gradelist = studentDetails[i]['marks'];
    for (int j = 0; j < gradelist.length; j++) {
      newSum += gradelist[j];
    }
    var percentage = (newSum / (100 * gradelist.length)) * 100;
    if (percentage >= 80) {
      grade = 'A+';
    } else if (percentage >= 70) {
      grade = 'A';
    } else if (percentage >= 60) {
      grade = 'B';
    } else if (percentage >= 60) {
      grade = 'C';
    }

    print(
        "Result of student # ${i + 1}\nName : $name\nObtained Marks : $newSum\nTotal Marks : ${100 * gradelist.length}\nPercentage : $percentage\nGrade : $grade\n");
  }

// Q13.Implement a code that finds the average of all the negative numbers in a list using a for loop and if-else condition.
  print("\nSolution of Q.13 :\n");

  var newList2 = [-1, -3, -5, -7, -9];
  var sum1 = 0;
  for (var i = 0; i < newList2.length; i++) {
    sum1 += newList2[i];
  }
  var avg = sum1 / newList2.length;
  print("the average of all given negative values are : $avg");

// Q14. “SELF TEST” Write a program that
// asks the user for their email and password. You are given a list of predefined
// user credentials (email and password combinations). If the entered email and
// password match any of the credentials in the list, print "User login successful."
// Otherwise, keep asking for the email and password until the correct credentials
// are provided.
  print("\nSolution of Q.14 :\n");

  bool success = false;
  var savedEmails = [
    {"saad20@gmail.com": "newpassword12"},
    {"sajid20@gmail.com": "12345"},
    {"ahmed19@gmail.com": "strongCode"}
  ];
  var try1 = {"sajid20@gmail.com": "12345"};
  for (var i = 0; i < savedEmails.length; i++) {
    if ((savedEmails[i].keys.first == (try1).keys.first)&&(savedEmails[i].values.first == (try1).values.first)) {
      print("Log in successfully");
      success = true;
      break;
    }
  }
  if (!success) {
    print("Incorrect password or email address");
  }
}
