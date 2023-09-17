// ignore_for_file: unused_local_variable
void main() {
// Q.1: Create a list of names and print all names using list.
  print("\nSolution of Q.1:\n");

  var MyList = [
    "Saad",
    "Hammad",
    "Taha",
    "Sajid",
    "Sabeel",
    "Ehsan",
    "Imtiaz",
    "Osama"
  ];
  print("My list names are: $MyList");

// Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  print("\nSolution of Q.2:\n");

  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);

// Q.3: Create a list of Days and remove one by one from the end of list.
  print("\nSolution of Q.3:\n");

  var Days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  var length = Days.length;
  print("The total days in a week are : $Days");
  for (var i = 0; i < length; i++) {
    Days.removeLast();
    print("remaining days are $Days");
  }
// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
  print("\nSolution of Q.4:\n");

  List<int> numList = [45, 33, 2, 1, 89, 901, 34, 777];
  numList.sort();
  print("The given list is : ${numList}");
  print("The smallest number in a list is : ${numList[0]}");
  print("The greatest number in a list is : ${numList[numList.length - 1]}");

// Q.5 remove all false values from below list by using removeWhere or retainWhere property.
// List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
  print("\nSolution of Q.5:\n");

  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom'
  ];
  print("The given list is : ${usersEligibility}");
  usersEligibility.retainWhere((element) => element == "eligible");
  print("After removing : $usersEligibility");

// Q.6: Given a list of integers, write a dart code that returns the maximum value from the list.
  print("\nSolution of Q.6:\n");

  List<int> newList = [41, 133, 223, 14, 894, 901, 344, 777];
  numList.sort();
  print("The given list is : ${newList}");
  print("The maximum value in a list is : ${numList[numList.length - 1]}");

// Q.7: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
  print("\nSolution of Q.7:\n");

  var ourList = [
    "Saad",
    "Hammad",
    "Saad",
    "Taha",
    "Sajid",
    "Sabeel",
    "Imtiaz",
    "Ehsan",
    "Ehsan",
    "Imtiaz",
    "Osama",
    "Sajid"
  ];
  var newourList = ourList;
  print("The given list is : ${ourList}");

  for (var j = 0; j < ourList.length; j++) {
    for (var i = j + 1; i < ourList.length; i++) {
      if (ourList[j] == ourList[i]) {
        newourList.removeAt(i);
      }
    }
  }
  print("The new list without duplicate is : $newourList");

// Q.8: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
  print("\nSolution of Q.8:\n");

  var names = [
    "Saad",
    "Hammad",
    "Taha",
    "Sajid",
    "Sabeel",
    "Ehsan",
    "Imtiaz",
    "Osama"
  ];
  int n = 4;
  var newNames = names.getRange(0, n);
  print("The given list is : ${names}");
  print("The first $n numbers of given list are : $newNames");

  // Q.9: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.
  print("\nSolution of Q.9:\n");

  names = [
    "Saad",
    "Hammad",
    "Taha",
    "Sajid",
    "Sabeel",
    "Ehsan",
    "Imtiaz",
    "Osama"
  ];
  var reverseNames = names.reversed;
  print("The given list is : ${names}");
  print("The reverse list is : $reverseNames");

// Q.10: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.
  print("\nSolution of Q.10:\n");

  var numberList = [9, 2, 3, 5, 7, 9, 13, 3, 7];
  print("The given list is : ${numberList}");
  var newNumList = numberList;
  var Temp = [];

  for (var j = 0; j < newNumList.length; j++) {
    for (var i = j + 1; i < newNumList.length; i++) {
      if (newNumList[j] == newNumList[i]) {
        Temp.add(newNumList[i]);
      }
    }
  }
  newNumList.removeWhere((element) => Temp.contains(element));
  print("The unique elements are : $newNumList");

// Q.11: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.
  print("\nSolution of Q.11:\n");

  numberList = [9, 2, 3, 5, 7, 9, 13];
  print("The given list is : ${numberList}");
  var newnumbers = numberList;
  newnumbers.sort();
  print("The sorted list is :  $newnumbers");

// Q.12: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.
  print("\nSolution of Q.12:\n");

  var negList = [2, -3, 4, -4, 6, -7, 8];
  var nonNegList = negList.where((element) => element > 0);
  print("The given list is : ${negList}");
  print("The updated (positive numbers) list is : ${nonNegList}");

// Q.13: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.
  print("\nSolution of Q.13:\n");

  numberList = [9, 2, 6, 12, 18, 3, 5, 7, 9, 13];
  var evenlist = numberList.where((element) => element % 2 == 0);

  print("The given list is : ${numberList}");
  print("The Even number list is : ${evenlist}");

// Q.14: Create 3 different list of Strings, int & bool, then replace middle element from list1, third last from list2, 2nd, 3rd & 4th element from list3 using replaceRange() method.
  print("\nSolution of Q.14:\n");

  List<String> stringlist = ["A", "B", "C", "D"];
  List<int> intlist = [1, 2, 4, 6, 8, 10];
  List<bool> boollist = [true, false, false, true, false, true];
  stringlist.replaceRange(
      stringlist.length ~/ 2, stringlist.length ~/ 2 + 1, ["GOB"]);
  intlist.replaceRange(intlist.length - 3, intlist.length - 2, [10]);
  boollist.replaceRange(1, 4, [false]);
  print(stringlist);
  print(boollist);
  print(intlist);

//   SELF LEARNING TASK:
// Q.15: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.
  print("\nSolution of Q.15:\n");

  List<int> numbers2 = [8, 7, 5, 7, 2];
  List<int> squaredNumbers = numbers2.map((int number) => number * number).toList();
  print("Original numbers : $numbers2");
  print("Squared numbers : $squaredNumbers");
  
}