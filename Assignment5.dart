import 'dart:io';

// ----------------------------------variables (initialization)
var restart;
var facility;
var childFacility1;
var childFacility2;
var childFacility3;
var childFacility4;
var childFacility5;

// ----------------------------------main function to ask converter type (first step)

showOptions() {
  print("select any number of the below options");
  for (var i = 1; i <= facility.length; i++) {
    print("${i}. ${facility['$i']}");
  }
  print("\npress 'E' if want to exit\n");
  String? parent = stdin.readLineSync();
  switch (parent) {
    case '1':
      LengthConversion();
      break;
    case '2':
      temperatureConversion();
      break;
    case '3':
      areaConversion();
      break;
    case '4':
      weightConversion();
      break;
    case '5':
      timeConversion();
      break;
    case 'e':
      exit(0);
    case 'E':
      exit(0);
    default:
      print("\ninvalid input, please try again\n");
      restart = true;
  }
}

// ----------------------------------inner functions (3rd step)------------------------

// ----------------------------------length converter inner functions (a)
meterToKm() {
  print("\nEnter your number in meters");
  String? meterStr = stdin.readLineSync();
  int meter = int.parse(meterStr!);
  print("${meter} meter is equal to ${meter / 1000} kilometer");
}

kmToMeter() {
  print("\nEnter your number in kilometers");
  String? kmStr = stdin.readLineSync();
  int km = int.parse(kmStr!);
  print("${km} kilometer is equal to ${km * 1000} meter");
}

feetToInches() {
  print("\nEnter your number in feet");
  String? feetStr = stdin.readLineSync();
  int feet = int.parse(feetStr!);
  print("${feet} feet is equal to ${feet * 12} inches");
}

inchesToFeet() {
  print("\nEnter your number in inches");
  String? inchesStr = stdin.readLineSync();
  int inches = int.parse(inchesStr!);
  print("${inches} inches is equal to ${inches / 12} feets");
}

centToMeter() {
  print("\nEnter your number in centimeters");
  String? centStr = stdin.readLineSync();
  int cent = int.parse(centStr!);
  print("${cent} centimeter is equal to ${cent / 100} meter");
}

meterToCent() {
  print("\nEnter your number in meters");
  String? meter2Str = stdin.readLineSync();
  int meter2 = int.parse(meter2Str!);
  print("${meter2} meter is equal to ${meter2 * 100} centimeter\n");
}

// ----------------------------------temperature converter inner functions (b)
FtoC() {
  print("\nEnter your temperature in fahrenheit");
  String? fahrenheitStr = stdin.readLineSync();
  int fahrenheit = int.parse(fahrenheitStr!);
  print(
      "${fahrenheit} fahrenheit is equal to ${(fahrenheit - 32) * (5 / 9)} celcius.\n");
}

CtoF() {
  print("\nEnter your temperature in celcius");
  String? celciusStr = stdin.readLineSync();
  int celcius = int.parse(celciusStr!);
  print(
      "${celcius} celcius is equal to ${((celcius * (5 / 9)) + 32)} fahrenheit.\n");
}

// ----------------------------------area converter inner functions (c)
milesToYards() {
  print("\nEnter your number in miles");
  String? milesStr = stdin.readLineSync();
  int miles = int.parse(milesStr!);
  print("${miles} miles is equal to ${miles * 1760} yards");
}

yardsToMiles() {
  print("\nEnter your number in yards");
  String? yardsStr = stdin.readLineSync();
  int yards = int.parse(yardsStr!);
  print("${yards} yards is equal to ${yards / 1760} yards");
}

yardsToFeet() {
  print("\nEnter your number in yards");
  String? yardsStr = stdin.readLineSync();
  int yards = int.parse(yardsStr!);
  print("${yards} yards is equal to ${yards * 3} feet");
}

feetToYards() {
  print("\nEnter your number in feet");
  String? feetStr = stdin.readLineSync();
  int feet = int.parse(feetStr!);
  print("${feet} feet is equal to ${feet / 3} yards");
}

// ----------------------------------weight converter inner functions (d)
KgTog() {
  print("\nEnter your number in kilograms");
  String? kgStr = stdin.readLineSync();
  int kg = int.parse(kgStr!);
  print("${kg} kg is equal to ${kg * 1000} grams");
}

gToKg() {
  print("\nEnter your number in grams");
  String? gStr = stdin.readLineSync();
  int g = int.parse(gStr!);
  print("${g} g is equal to ${g / 1000} kg");
}

pToKg() {
  print("\nEnter your number in pouond");
  String? pStr = stdin.readLineSync();
  int p = int.parse(pStr!);
  print("${p} pound is equal to ${p / 2.20462} kg");
}

kgToTons() {
  print("\nEnter your number in kilograms");
  String? kgStr = stdin.readLineSync();
  int kg = int.parse(kgStr!);
  print("${kg} kg is equal to ${kg / 907.185} tons");
}

tonsToKg() {
  print("\nEnter your number in tons");
  String? tonsStr = stdin.readLineSync();
  int tons = int.parse(tonsStr!);
  print("${tons} tons is equal to ${tons * 907.185} tons");
}

// ----------------------------------time converter inner functions (e)
sToM() {
  print("\nEnter your number in seconds");
  String? secondStr = stdin.readLineSync();
  int second = int.parse(secondStr!);
  print("${second} second is equal to ${second / 60} min");
}

mToS() {
  print("\nEnter your number in minutes");
  String? minuteStr = stdin.readLineSync();
  int minute = int.parse(minuteStr!);
  print("${minute} minute is equal to ${minute * 60} sec");
}

mToH() {
  print("\nEnter your number in minutes");
  String? minuteStr = stdin.readLineSync();
  int minute = int.parse(minuteStr!);
  print("${minute} minute is equal to ${minute / 60} hours");
}

sToH() {
  print("\nEnter your number in seconds");
  String? secondStr = stdin.readLineSync();
  int second = int.parse(secondStr!);
  print("${second} second is equal to ${(second / 60) / 60} hours");
}

msTom() {
  print("\nEnter your number in miliseconds");
  String? secondStr = stdin.readLineSync();
  int second = int.parse(secondStr!);
  print("${second} second is equal to ${(second / 1000) / 60} min");
}

msToH() {
  print("\nEnter your number in miliseconds");
  String? secondStr = stdin.readLineSync();
  int second = int.parse(secondStr!);
  print("${second} second is equal to ${((second / 1000) / 60) / 60} hours");
}

// ----------------------------------Converter functions (2nd step)---------------------
// ----------------------------------length converter function

LengthConversion() {
  print("\nselect any number of the below options\n -------------------------");
  childFacility1 = {
    '1': 'Meter to kilometers',
    '2': 'Kilometer to Meters',
    '3': 'feet to Inches',
    '4': 'Inches to Feet',
    '5': 'Centimeter to Meter',
    '6': 'Meter to Centimeter'
  };

  for (var i = 1; i <= childFacility1.length; i++) {
    print("${i}. ${childFacility1['$i']}");
  }

  String? child1 = stdin.readLineSync();
  switch (child1) {
    case '1':
      meterToKm();
      break;
    case '2':
      kmToMeter();
      break;
    case '3':
      feetToInches();
      break;
    case '4':
      inchesToFeet();
      break;
    case '5':
      centToMeter();
      break;
    case '6':
      meterToCent();
      break;
    default:
      print("\ninvalid input, please try again\n");
      LengthConversion();
  }
  print(
      "write 'L' and to use this converter again and write 'A' to see all converters and 'E' to exit");
  var again = stdin.readLineSync();
  if ((again == "L") || (again == "l")) {
    LengthConversion();
  } else if ((again == "A") || (again == "a")) {
    showOptions();
  } else {
    exit(0);
  }
}

// ----------------------------------temperature converter function

temperatureConversion() {
  print("\nselect any number of the below options\n -------------------------");
  childFacility2 = {'1': 'Fahrenheit to Celcius', '2': 'Celcius to Fahrenheit'};

  for (var i = 1; i <= childFacility2.length; i++) {
    print("${i}. ${childFacility2['$i']}");
  }

  String? child2 = stdin.readLineSync();
  switch (child2) {
    case '1':
      FtoC();
      break;
    case '2':
      CtoF();
      break;
    default:
      print("\ninvalid input, please try again\n");
      temperatureConversion();
  }
  print(
      "write 'T' and to use this converter again and write 'A' to see all converters and 'E' to exit");
  var again = stdin.readLineSync();
  if ((again == "T") || (again == "t")) {
    LengthConversion();
  } else if ((again == "A") || (again == "a")) {
    showOptions();
  } else {
    exit(0);
  }
}

// ----------------------------------area converter function

areaConversion() {
  print("\nselect any number of the below options\n -------------------------");
  childFacility3 = {
    '1': 'Square Miles to Square yards',
    '2': 'Square Yards to Square Miles',
    '3': 'Square Yards to Square Feet',
    '4': 'Square Feet to Square Yards',
  };

  for (var i = 1; i <= childFacility3.length; i++) {
    print("${i}. ${childFacility3['$i']}");
  }

  String? child3 = stdin.readLineSync();
  switch (child3) {
    case '1':
      milesToYards();
      break;
    case '2':
      yardsToMiles();
      break;
    case '3':
      yardsToFeet();
      break;
    case '4':
      feetToYards();
      break;
    default:
      print("\ninvalid input, please try again\n");
      areaConversion();
  }
  print(
      "write 'L' and to use this converter again and write 'A' to see all converters and 'E' to exit");
  var again = stdin.readLineSync();
  if ((again == "L") || (again == "l")) {
    areaConversion();
  } else if ((again == "A") || (again == "a")) {
    showOptions();
  } else {
    exit(0);
  }
}

// ----------------------------------weight converter function
weightConversion() {
  print("\nselect any number of the below options\n -------------------------");
  childFacility4 = {
    '1': 'Kg to Grams',
    '2': 'Grams to Kg',
    '3': 'Pounds to Kg',
    '4': 'Kg to Tons',
    '5': 'Tons to Kg'
  };

  for (var i = 1; i <= childFacility4.length; i++) {
    print("${i}. ${childFacility4['$i']}");
  }

  String? child1 = stdin.readLineSync();
  switch (child1) {
    case '1':
      KgTog();
      break;
    case '2':
      gToKg();
      break;
    case '3':
      pToKg();
      break;
    case '4':
      kgToTons();
      break;
    case '5':
      tonsToKg();
      break;
    default:
      print("\ninvalid input, please try again\n");
      weightConversion();
  }
  print(
      "write 'W' and to use this converter again and write 'A' to see all converters and 'E' to exit");
  var again = stdin.readLineSync();
  if ((again == "W") || (again == "w")) {
    weightConversion();
  } else if ((again == "A") || (again == "a")) {
    showOptions();
  } else {
    exit(0);
  }
}

// ----------------------------------time converter function
timeConversion() {
  print("\nselect any number of the below options\n -------------------------");
  childFacility4 = {
    '1': 'Seconds to Minutes',
    '2': 'Minutes to Seconds',
    '3': 'Minutes to Hours',
    '4': 'Seconds to Hours',
    '5': 'Milliseconds to Minutes',
    '6': 'Milliseconds to Hours'
  };

  for (var i = 1; i <= childFacility4.length; i++) {
    print("${i}. ${childFacility4['$i']}");
  }

  String? child1 = stdin.readLineSync();
  switch (child1) {
    case '1':
      sToM();
      break;
    case '2':
      msToH();
      break;
    case '3':
      mToH();
      break;
    case '4':
      sToH();
      break;
    case '5':
      msTom();
      break;
    case '6':
      msToH();
      break;
    default:
      print("\ninvalid input, please try again\n");
      weightConversion();
  }
  print(
      "write 'W' and to use this converter again and write 'A' to see all converters and 'E' to exit");
  var again = stdin.readLineSync();
  if ((again == "W") || (again == "w")) {
    weightConversion();
  } else if ((again == "A") || (again == "a")) {
    showOptions();
  } else {
    exit(0);
  }
}

// ------------------------------ main function ------------------------------

void main() {
  restart = false;
  facility = {
    '1': 'Length Conversion',
    '2': 'Temperature conversion',
    '3': 'Area Conversion',
    '4': 'Weight Conversion',
    '5': 'Time conversion'
  };

  do {
    showOptions();
  } while (restart);
}
