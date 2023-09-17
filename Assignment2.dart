void main(){

// Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
// ie: if both values are equal then it's square otherwise rectangle.

print("\nSolution of Q.1:\n");

int lenght = 34;
int breadth = 35;

if(lenght == breadth){
  print("Square");
}
else{
  print("Rectangle");
}

// Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.

print("\nSolution of Q.2:\n");

int age1 = 18;
int age2 = 111;

if(age1 > age2){
  print("Oldest is age-1 of age $age1\nAnd youngest is age-2 of age $age2");
}
else{
  print("Oldest is age-1 of age $age2\nAnd youngest is age-2 of age $age1");
}

// Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?

print("\nSolution of Q.3:\n");

int classHeld = 16;
int classAttend = 10;

num percentage = (classAttend / classHeld)*100;

if(percentage >= 75){
  print("The percentage of class attended is $percentage therefore,");
  print("Student is allowed to sit in exam");
}
else{
  print("The percentage of class attended is $percentage therefore,");
  print("Student is not allowed to sit in exam");
}

// Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
// If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
// i.e: Use % ( modulus ) operator.

print("\nSolution of Q.4:\n");

int year = 2024; // year

if ((year % 2 == 0) && (year % 20 == 0) && (year % 50 == 0) && (year % 100 == 0)){
  print("end of century year");
  if ((year % 400 == 0)){
    print("Leap year");
  }
  else{
    print("This year is not a leap year");
  }
}
else{
  if(year % 4 == 0){
    print("Leap year");
  }
  else{
    print("This year is not a leap year");
  }
}

// Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot

print("\nSolution of Q.5:\n");

num temperature= 42;

if(temperature < 0){
  print("freezing weather");
}
else if(temperature >= 0 && temperature < 10){
  print("very cold weather");
}
else if(temperature >= 10 && temperature < 20){
  print("cold weather");
}
else if(temperature >= 20 && temperature <30){
  print("normal in temp");
}
else if(temperature >= 30 && temperature <40){
  print("its hot");
}
else{
  print("its very hot");
}

// Q.6: Write a program to check whether an alphabet is a vowel or consonant.

print("\nSolution of Q.6:\n");

String alphabet = "i";

if(alphabet == "a" || alphabet == "e" || alphabet == "i" || alphabet == "o" || alphabet == "u"){
  print("$alphabet is a vowel");
}
else{
  print("$alphabet is a consonant");
}

// Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

print("\nSolution of Q.7:\n");

int ID = 1001;
String name = "James";
int units = 800;
double chargePerUnit;

if(units <= 199){
  chargePerUnit = 1.20; 
}
else if(units > 199 && units < 400){
  chargePerUnit = 1.50;
}
else if(units > 399 && units < 600){
  chargePerUnit = 1.80;
}
else{
  chargePerUnit = 2.00;
}

double billAmount = chargePerUnit * units;

print("**************  Electricity Bill  ****************\n");
print("Custoer ID number is : $ID");
print("Custoer name is : $name");
print("Units Consumed : $units units");
print("Charges : Rs.$chargePerUnit per unit");
print("Net Bill is : Rs.$billAmount");

}