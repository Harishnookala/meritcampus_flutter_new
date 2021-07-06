import 'package:flutter/src/widgets/framework.dart';

import 'api.dart';
import 'models/plangroup.dart';
class Plan_topics {
  static var data = [
    {
      "group_name": "Overview Of Programming With Java",
      "topic_number": "1",
      "group_id": 1,
      "is_topic": false,
      "children": [
        {
          "topic_number": "1.1",
          "is_topic": true,
          "topic_title": "What Is Programming ? Why We Need Programming",
          "topic_id": 161
        },
        {
          "topic_number": "1.2",
          "is_topic": true,
          "topic_title": "How To Learn Programming & Programming Skills",
          "topic_id": 3
        },
        {
          "topic_number": "1.3",
          "is_topic": true,
          "topic_title": "How Can I Be A Good/Excellent Programmer",
          "topic_id": 162
        },
        {
          "topic_number": "1.4.1",
          "is_topic": true,
          "topic_title": "Platform Independence In Java - WORA & WOCA",
          "topic_id": 72
        },
        {
          "topic_number": "1.4.2",
          "is_topic": true,
          "topic_title": "Java And Internet - Creating Java Applet",
          "topic_id": 73
        },
        {
          "topic_number": "1.4.3",
          "is_topic": true,
          "topic_title": "What Is Servlet In Java?",
          "topic_id": 75
        },
        {
          "topic_number": "1.4.4",
          "is_topic": true,
          "topic_title": "Java Bytecode",
          "topic_id": 74
        },
        {
          "topic_number": "1.4.5",
          "is_topic": true,
          "topic_title": "Java Buzzwords",
          "topic_id": 76
        },
        {
          "topic_number": "1.4.6",
          "is_topic": true,
          "topic_title": "JDK JRE JVM JIT - Java Compiler",
          "topic_id": 163
        },
        {
          "topic_number": "1.4.7",
          "is_topic": true,
          "topic_title": "Java Versions And Changes Done In Every Version",
          "topic_id": 77
        },
        {
          "topic_number": "1.4.8",
          "is_topic": true,
          "topic_title": "Java Keywords",
          "topic_id": 55
        }
      ]
    },
    {
      "group_name": "Datatypes",
      "topic_number": "2",
      "group_id": 2,
      "is_topic": false,
      "children": [
        {
          "topic_number": "2.1",
          "is_topic": true,
          "topic_title": "Data Types In Java",
          "topic_id": 12
        },
        {
          "topic_number": "2.2.1",
          "is_topic": true,
          "topic_title": "Primitive Data Types In Java",
          "topic_id": 13
        },
        {
          "topic_number": "2.2.2",
          "is_topic": true,
          "topic_title": "Integer Data Types In Java",
          "topic_id": 15
        },
        {
          "topic_number": "2.2.3",
          "is_topic": true,
          "topic_title": "Floating Point Data Types In Java",
          "topic_id": 16
        },
        {
          "topic_number": "2.2.4",
          "is_topic": true,
          "topic_title": "Java Character",
          "topic_id": 17
        },
        {
          "topic_number": "2.2.5",
          "is_topic": true,
          "topic_title": "Boolean Data Type In Java",
          "topic_id": 18
        },
        {
          "topic_number": "2.2.6.1",
          "is_topic": true,
          "topic_title": "Java Literals",
          "topic_id": 22
        },
        {
          "topic_number": "2.2.6.2",
          "is_topic": true,
          "topic_title": "Integer Literals In Java",
          "topic_id": 23
        },
        {
          "topic_number": "2.2.6.3",
          "is_topic": true,
          "topic_title": "Floating Point Literals In Java",
          "topic_id": 24
        },
        {
          "topic_number": "2.2.6.4",
          "is_topic": true,
          "topic_title": "Character Literals In Java",
          "topic_id": 25
        },
        {
          "topic_number": "2.2.6.5",
          "is_topic": true,
          "topic_title": "String Literal In Java",
          "topic_id": 26
        },
        {
          "topic_number": "2.2.6.6",
          "is_topic": true,
          "topic_title": "Boolean Literals In Java",
          "topic_id": 27
        }
      ]
    },
    {
      "group_name": "Variables",
      "topic_number": "3",
      "group_id": 3,
      "is_topic": false,
      "children": [
        {
          "topic_number": "3.1",
          "is_topic": true,
          "topic_title": "Java Variables",
          "topic_id": 20
        },
        {
          "topic_number": "3.2",
          "is_topic": true,
          "topic_title": "Scope Of Variables In Same Block",
          "topic_id": 65
        },
        {
          "topic_number": "3.3",
          "is_topic": true,
          "topic_title": "Type Conversion In Java",
          "topic_id": 68
        },
        {
          "topic_number": "3.4",
          "is_topic": true,
          "topic_title": "Type Casting In Java",
          "topic_id": 69
        }
      ]
    },
    {
      "group_name": "Operators",
      "topic_number": "4",
      "group_id": 4,
      "is_topic": false,
      "children": [
        {
          "topic_number": "4.1",
          "is_topic": true,
          "topic_title": "Operators In Java",
          "topic_id": 34
        },
        {
          "topic_number": "4.2",
          "is_topic": true,
          "topic_title": "Java Arithmetic Operators",
          "topic_id": 35
        },
        {
          "topic_number": "4.3",
          "is_topic": true,
          "topic_title": "Basic Arithmetic Operators In Java",
          "topic_id": 41
        },
        {
          "topic_number": "4.4",
          "is_topic": true,
          "topic_title": "Increment And Decrement Operators In Java",
          "topic_id": 40
        },
        {
          "topic_number": "4.5",
          "is_topic": true,
          "topic_title": "Modulus Operator In Java",
          "topic_id": 42
        },
        {
          "topic_number": "4.6",
          "is_topic": true,
          "topic_title": "Arithmetic Compound Assignment Operators In Java",
          "topic_id": 43
        },
        {
          "topic_number": "4.7",
          "is_topic": true,
          "topic_title": "Relational Operators In Java",
          "topic_id": 44
        },
        {
          "topic_number": "4.8",
          "is_topic": true,
          "topic_title": "Boolean Logical Operators In Java",
          "topic_id": 45
        },
        {
          "topic_number": "4.9",
          "is_topic": true,
          "topic_title": "Short Circuit Logical Operators In Java",
          "topic_id": 46
        },
        {
          "topic_number": "4.10",
          "is_topic": true,
          "topic_title": "Assignment Operator In Java",
          "topic_id": 47
        },
        {
          "topic_number": "4.11",
          "is_topic": true,
          "topic_title": "Ternary Operator In Java",
          "topic_id": 48
        },
        {
          "topic_number": "4.12",
          "is_topic": true,
          "topic_title": "Java Operator Precedence And Associativity",
          "topic_id": 49
        },
        {
          "topic_number": "4.13",
          "is_topic": true,
          "topic_title": "Temperature Conversion Program In Java",
          "topic_id": 71
        }
      ]
    },
    {
      "group_name": "Control Statements",
      "topic_number": "5",
      "group_id": 5,
      "is_topic": false,
      "children": [
        {
          "topic_number": "5.1",
          "is_topic": true,
          "topic_title": "Control Statements In Java",
          "topic_id": 6
        },
        {
          "topic_number": "5.2.1",
          "is_topic": true,
          "topic_title": "Selection Statements In Java",
          "topic_id": 4
        },
        {
          "topic_number": "5.2.2",
          "is_topic": true,
          "topic_title": "if Condition In Java",
          "topic_id": 58
        },
        {
          "topic_number": "5.2.3",
          "is_topic": true,
          "topic_title": "Nested if Statements In Java",
          "topic_id": 59
        },
        {
          "topic_number": "5.2.4",
          "is_topic": true,
          "topic_title": "if else if ladder In Java",
          "topic_id": 60
        },
        {
          "topic_number": "5.2.5",
          "is_topic": true,
          "topic_title": "switch Statement In Java",
          "topic_id": 61
        },
        {
          "topic_number": "5.2.6",
          "is_topic": true,
          "topic_title": "if else Vs switch Performance In Java",
          "topic_id": 62
        },
        {
          "topic_number": "5.2.7",
          "is_topic": true,
          "topic_title": "Nested switch Statements In Java",
          "topic_id": 63
        },
        {
          "topic_number": "5.2.8",
          "is_topic": true,
          "topic_title": "Fall Through Switch Case Statements In Java",
          "topic_id": 7
        },
        {
          "topic_number": "5.3.1",
          "is_topic": true,
          "topic_title": "Block Of Code In Java",
          "topic_id": 64
        },
        {
          "topic_number": "5.3.2",
          "is_topic": true,
          "topic_title": "Scope Of Variables In Nested/Multiple Blocks",
          "topic_id": 66
        },
        {
          "topic_number": "5.3.3",
          "is_topic": true,
          "topic_title": "Lifetime Of Variable In Java",
          "topic_id": 67
        },
        {
          "topic_number": "5.3.4",
          "is_topic": true,
          "topic_title": "Expressions, Statement, Line & Block In Java",
          "topic_id": 84
        },
        {
          "topic_number": "5.4.1",
          "is_topic": true,
          "topic_title": "Iteration Statements Or Loops In Java",
          "topic_id": 8
        },
        {
          "topic_number": "5.4.2",
          "is_topic": true,
          "topic_title": "while Loop In Java",
          "topic_id": 10
        },
        {
          "topic_number": "5.4.3",
          "is_topic": true,
          "topic_title": "for Loop In Java",
          "topic_id": 9
        },
        {
          "topic_number": "5.4.4",
          "is_topic": true,
          "topic_title": "for Vs while Loop In Java",
          "topic_id": 85
        },
        {
          "topic_number": "5.4.5",
          "is_topic": true,
          "topic_title": "do while Loop In Java",
          "topic_id": 11
        },
        {
          "topic_number": "5.4.6",
          "is_topic": true,
          "topic_title": "Nested Loops in Java",
          "topic_id": 29
        },
        {
          "topic_number": "5.4.7",
          "is_topic": true,
          "topic_title": "Nested While Loop In Java",
          "topic_id": 31
        },
        {
          "topic_number": "5.4.8",
          "is_topic": true,
          "topic_title": "Nested for Loop In Java",
          "topic_id": 30
        },
        {
          "topic_number": "5.4.9",
          "is_topic": true,
          "topic_title": "for Loop Example Program In Java - Sum Of Numbers",
          "topic_id": 70
        },
        {
          "topic_number": "5.4.10",
          "is_topic": true,
          "topic_title": "Factorial Program In Java Using for Loop",
          "topic_id": 39
        },
        {
          "topic_number": "5.4.11",
          "is_topic": true,
          "topic_title": "Factorial Program In Java Using While Loop",
          "topic_id": 38
        },
        {
          "topic_number": "5.5.1",
          "is_topic": true,
          "topic_title": "Jump Statements In Java",
          "topic_id": 50
        },
        {
          "topic_number": "5.5.2",
          "is_topic": true,
          "topic_title": "Using Break In for Loop To Exit",
          "topic_id": 51
        },
        {
          "topic_number": "5.5.3",
          "is_topic": true,
          "topic_title": "Using break in switch case Statement",
          "topic_id": 52
        },
        {
          "topic_number": "5.5.4",
          "is_topic": true,
          "topic_title": "Using Java Break Statements as Java Goto",
          "topic_id": 53
        },
        {
          "topic_number": "5.5.5",
          "is_topic": true,
          "topic_title": "Using break In Nested Loop Java Program",
          "topic_id": 54
        },
        {
          "topic_number": "5.5.6",
          "is_topic": true,
          "topic_title": "Java continue Statement",
          "topic_id": 56
        },
        {
          "topic_number": "5.5.7",
          "is_topic": true,
          "topic_title": "Java return Statement",
          "topic_id": 57
        },
        {
          "topic_number": "5.6",
          "is_topic": true,
          "topic_title": "Java  for loops vs Java while loops vs Java do while loops",
          "topic_id": 336
        }
      ]
    },
    {
      "group_name": "Methods - Importance",
      "topic_number": "6",
      "group_id": 6,
      "is_topic": false,
      "children": [
        {
          "topic_number": "6.1",
          "is_topic": true,
          "topic_title": "Basic Java Methods",
          "topic_id": 80
        },
        {
          "topic_number": "6.2",
          "is_topic": true,
          "topic_title": "Java Methods",
          "topic_id": 81
        },
        {
          "topic_number": "6.3",
          "is_topic": true,
          "topic_title": "Java Methods - Parameter Passing And Scope",
          "topic_id": 134
        },
        {
          "topic_number": "6.4",
          "is_topic": true,
          "topic_title": "Java Program To Find Simple Interest Using Methods",
          "topic_id": 83
        },
        {
          "topic_number": "6.5",
          "is_topic": true,
          "topic_title": "Recursive In Java",
          "topic_id": 82
        }
      ]
    },
    {
      "group_name": "Array - Overview",
      "topic_number": "7",
      "group_id": 7,
      "is_topic": false,
      "children": [
        {
          "topic_number": "7.1",
          "is_topic": true,
          "topic_title": "Java Array",
          "topic_id": 28
        },
        {
          "topic_number": "7.2",
          "is_topic": true,
          "topic_title": "Creation And Declaration Of Array In Java",
          "topic_id": 32
        },
        {
          "topic_number": "7.3",
          "is_topic": true,
          "topic_title": "Arraylist Access Using Index",
          "topic_id": 36
        },
        {
          "topic_number": "7.4",
          "is_topic": true,
          "topic_title": "Java Multidimensional Array",
          "topic_id": 33
        },
        {
          "topic_number": "7.5",
          "is_topic": true,
          "topic_title": "Java Array Initialization",
          "topic_id": 37
        },
        {
          "topic_number": "7.6",
          "is_topic": true,
          "topic_title": "Learn Arrays And Loops",
          "topic_id": 5
        },
        {
          "topic_number": "7.7",
          "is_topic": true,
          "topic_title": "Java Code To Print Student Details Using Arrays",
          "topic_id": 14
        },
        {
          "topic_number": "7.8",
          "is_topic": true,
          "topic_title": "For-each Loop In Core Java Programming",
          "topic_id": 133
        },
        {
          "topic_number": "7.9",
          "is_topic": true,
          "topic_title": "Command Line Arguments In Core Java Programming",
          "topic_id": 144
        }
      ]
    },
    {
      "group_name": "Classes",
      "topic_number": "8",
      "group_id": 8,
      "is_topic": false,
      "children": [
        {
          "topic_number": "8.1",
          "is_topic": true,
          "topic_title": "Java Class",
          "topic_id": 86
        },
        {
          "topic_number": "8.2",
          "is_topic": true,
          "topic_title": "Java Classes and Java Objects",
          "topic_id": 167
        },
        {
          "topic_number": "8.3",
          "is_topic": true,
          "topic_title": "Java Objects References",
          "topic_id": 87
        },
        {
          "topic_number": "8.4",
          "is_topic": true,
          "topic_title": "Member Variable In Java",
          "topic_id": 88
        },
        {
          "topic_number": "8.5",
          "is_topic": true,
          "topic_title": "Class References And Objects In Java",
          "topic_id": 89
        },
        {
          "topic_number": "8.6",
          "is_topic": true,
          "topic_title": "To Print Student Details Using Classes In Java",
          "topic_id": 90
        },
        {
          "topic_number": "8.7",
          "is_topic": true,
          "topic_title": "Create Objects Using Constructors In Java",
          "topic_id": 91
        },
        {
          "topic_number": "8.8",
          "is_topic": true,
          "topic_title": "Class With Multiple Constructors In Java",
          "topic_id": 92
        },
        {
          "topic_number": "8.9",
          "is_topic": true,
          "topic_title": "this Keyword In Java",
          "topic_id": 93
        },
        {
          "topic_number": "8.10",
          "is_topic": true,
          "topic_title": "Behavior Of Java Classes Using Methods",
          "topic_id": 94
        },
        {
          "topic_number": "8.11",
          "is_topic": true,
          "topic_title": "Java Multiple Methods In One Class",
          "topic_id": 95
        },
        {
          "topic_number": "8.12",
          "is_topic": true,
          "topic_title": "Calling A Class From Another Class In Java",
          "topic_id": 96
        },
        {
          "topic_number": "8.13",
          "is_topic": true,
          "topic_title": "Creating A Class For Data Validation",
          "topic_id": 97
        },
        {
          "topic_number": "8.14",
          "is_topic": true,
          "topic_title": "Java Program To Find Rectangle Area & Perimeter Using Classes",
          "topic_id": 98
        },
        {
          "topic_number": "8.15",
          "is_topic": true,
          "topic_title": "Java Program to Find Area of Various Shapes Using  Classes",
          "topic_id": 99
        },
        {
          "topic_number": "8.16",
          "is_topic": true,
          "topic_title": "Java Program To Compare Movies",
          "topic_id": 100
        }
      ]
    },
    {
      "group_name": "Class Inheritance",
      "topic_number": "9",
      "group_id": 9,
      "is_topic": false,
      "children": [
        {
          "topic_number": "9.1",
          "is_topic": true,
          "topic_title": "Java Class Inheritance",
          "topic_id": 101
        },
        {
          "topic_number": "9.2",
          "is_topic": true,
          "topic_title": "Is-A Relationship In Java",
          "topic_id": 102
        },
        {
          "topic_number": "9.3",
          "is_topic": true,
          "topic_title": "Passing Sub Class Object As Super Class Reference",
          "topic_id": 103
        },
        {
          "topic_number": "9.4",
          "is_topic": true,
          "topic_title": "Assigning Sub Class Object To Super Class Reference In Java",
          "topic_id": 104
        },
        {
          "topic_number": "9.5",
          "is_topic": true,
          "topic_title": "Assigning Super Class Reference To A Sub Class Reference In Java",
          "topic_id": 105
        },
        {
          "topic_number": "9.6",
          "is_topic": true,
          "topic_title": "Multilevel Inheritance In Java With Example Program",
          "topic_id": 108
        }
      ]
    },
    {
      "group_name": "Methods Overiding, Overloading",
      "topic_number": "10",
      "group_id": 10,
      "is_topic": false,
      "children": [
        {
          "topic_number": "10.1",
          "is_topic": true,
          "topic_title": "Method Overloading In Java",
          "topic_id": 106
        },
        {
          "topic_number": "10.2",
          "is_topic": true,
          "topic_title": "Is Java Pass by Reference or Pass by Value",
          "topic_id": 107
        },
        {
          "topic_number": "10.3",
          "is_topic": true,
          "topic_title": "Method Overriding In Java",
          "topic_id": 110
        },
        {
          "topic_number": "10.4",
          "is_topic": true,
          "topic_title": "Inheritance Example Program To Remove Duplicate Code",
          "topic_id": 111
        },
        {
          "topic_number": "10.5",
          "is_topic": true,
          "topic_title": "How A Method Can Be Overridden In Different Ways ",
          "topic_id": 112
        },
        {
          "topic_number": "10.6",
          "is_topic": true,
          "topic_title": "Method Overloading Vs Method Overriding",
          "topic_id": 113
        },
        {
          "topic_number": "10.7",
          "is_topic": true,
          "topic_title": "Super Keyword In Java To Call Super Class Constructor",
          "topic_id": 114
        },
        {
          "topic_number": "10.8",
          "is_topic": true,
          "topic_title": "Inheritance And Constructors In Java",
          "topic_id": 115
        },
        {
          "topic_number": "10.9",
          "is_topic": true,
          "topic_title": "Dynamic Method Dispatch - Calling Overridden Methods In Java",
          "topic_id": 116
        },
        {
          "topic_number": "10.10",
          "is_topic": true,
          "topic_title": "Run Time Polymorphism In Java",
          "topic_id": 117
        }
      ]
    },
    {
      "group_name": "Abstract Class And Methods",
      "topic_number": "11",
      "group_id": 12,
      "is_topic": false,
      "children": [
        {
          "topic_number": "11.1",
          "is_topic": true,
          "topic_title": "Java Abstract Class",
          "topic_id": 118
        },
        {
          "topic_number": "11.2",
          "is_topic": true,
          "topic_title": "Abstract Method In Java",
          "topic_id": 119
        },
        {
          "topic_number": "11.3",
          "is_topic": true,
          "topic_title": "Rules For Abstract Methods and Abstract Classes",
          "topic_id": 120
        },
        {
          "topic_number": "11.4",
          "is_topic": true,
          "topic_title": "Creating Array Of Objects In Java",
          "topic_id": 121
        },
        {
          "topic_number": "11.5",
          "is_topic": true,
          "topic_title": "Java Program To Find Largest Area by Comparing Various Shapes",
          "topic_id": 122
        },
        {
          "topic_number": "11.6",
          "is_topic": true,
          "topic_title": "Java Program For Cricket Players Using Class Hierarchy",
          "topic_id": 123
        }
      ]
    },
    {
      "group_name": "Interfaces, Packages and Access Control",
      "topic_number": "12",
      "group_id": 13,
      "is_topic": false,
      "children": [
        {
          "topic_number": "12.1",
          "is_topic": true,
          "topic_title": "Java Interface ",
          "topic_id": 124
        },
        {
          "topic_number": "12.2",
          "is_topic": true,
          "topic_title": "Difference Between Interfaces And Abstract Classes",
          "topic_id": 125
        },
        {
          "topic_number": "12.3",
          "is_topic": true,
          "topic_title": "Future Task Java Program Using Interfaces",
          "topic_id": 126
        },
        {
          "topic_number": "12.4",
          "is_topic": true,
          "topic_title": "Creating Interface In Java With Example Program",
          "topic_id": 127
        },
        {
          "topic_number": "12.5",
          "is_topic": true,
          "topic_title": "Java Package ",
          "topic_id": 128
        },
        {
          "topic_number": "12.6",
          "is_topic": true,
          "topic_title": "How To Compile Classes in Package",
          "topic_id": 129
        },
        {
          "topic_number": "12.7",
          "is_topic": true,
          "topic_title": "Using private Keyword In Java For Access Control ",
          "topic_id": 130
        },
        {
          "topic_number": "12.8",
          "is_topic": true,
          "topic_title": "Access Modifiers In Java",
          "topic_id": 131
        },
        {
          "topic_number": "12.9",
          "is_topic": true,
          "topic_title": "Java Access Modifiers With Example Program",
          "topic_id": 132
        }
      ]
    },
    {
      "group_name": "final, static and others",
      "topic_number": "13",
      "group_id": 14,
      "is_topic": false,
      "children": [
        {
          "topic_number": "13.1",
          "is_topic": true,
          "topic_title": "final Keyword In Java",
          "topic_id": 135
        },
        {
          "topic_number": "13.2",
          "is_topic": true,
          "topic_title": "Static Keyword In Java",
          "topic_id": 136
        },
        {
          "topic_number": "13.3",
          "is_topic": true,
          "topic_title": "Creating Static Methods In Java Using Static Keyword",
          "topic_id": 137
        },
        {
          "topic_number": "13.4",
          "is_topic": true,
          "topic_title": "Singleton Design Pattern In Java",
          "topic_id": 138
        },
        {
          "topic_number": "13.5",
          "is_topic": true,
          "topic_title": "Java Program To Explain Public Static Void Main",
          "topic_id": 139
        },
        {
          "topic_number": "13.6",
          "is_topic": true,
          "topic_title": "Static and Non Static Variables - Static and Non Static Methods",
          "topic_id": 140
        }
      ]
    },
    {
      "group_name": "Object Oriented Concepts - Revisited",
      "topic_number": "14",
      "group_id": 15,
      "is_topic": false,
      "children": [
        {
          "topic_number": "14.1",
          "is_topic": true,
          "topic_title": "Abstraction in Java",
          "topic_id": 148
        },
        {
          "topic_number": "14.2",
          "is_topic": true,
          "topic_title": "Polymorphism In Java",
          "topic_id": 145
        },
        {
          "topic_number": "14.3",
          "is_topic": true,
          "topic_title": "Encapsulation In Java",
          "topic_id": 147
        },
        {
          "topic_number": "14.4",
          "is_topic": true,
          "topic_title": "Inheritance In Java",
          "topic_id": 146
        }
      ]
    },
    {
      "group_name": "Exceptions",
      "topic_number": "15",
      "group_id": 16,
      "is_topic": false,
      "children": [
        {
          "topic_number": "15.1",
          "is_topic": true,
          "topic_title": "Why Java Throws Exceptions",
          "topic_id": 150
        },
        {
          "topic_number": "15.2",
          "is_topic": true,
          "topic_title": "How To Handle An Exception In Java",
          "topic_id": 151
        },
        {
          "topic_number": "15.3",
          "is_topic": true,
          "topic_title": "Exception Handling In Java with Example Program",
          "topic_id": 149
        },
        {
          "topic_number": "15.4",
          "is_topic": true,
          "topic_title": "Try Catch Block In Java ",
          "topic_id": 152
        },
        {
          "topic_number": "15.5",
          "is_topic": true,
          "topic_title": "Java Multiple Catch Block With Example Program",
          "topic_id": 153
        },
        {
          "topic_number": "15.6",
          "is_topic": true,
          "topic_title": "Java Finally Block In Exception Handling",
          "topic_id": 154
        },
        {
          "topic_number": "15.7",
          "is_topic": true,
          "topic_title": "User Defined Exception In Java",
          "topic_id": 155
        },
        {
          "topic_number": "15.8",
          "is_topic": true,
          "topic_title": "Java Throw Keyword - Java Throws Keyword",
          "topic_id": 156
        },
        {
          "topic_number": "15.9",
          "is_topic": true,
          "topic_title": "Difference Between Error and Exception in Java",
          "topic_id": 160
        },
        {
          "topic_number": "15.10",
          "is_topic": true,
          "topic_title": "Checked Exception Vs Unchecked Exception In Java",
          "topic_id": 158
        },
        {
          "topic_number": "15.11",
          "is_topic": true,
          "topic_title": "Java Built In Exceptions  Checked Exceptions, Unchecked Exceptions",
          "topic_id": 159
        },
        {
          "topic_number": "15.12",
          "is_topic": true,
          "topic_title": "Exception Handling  Syntax In Java Programming",
          "topic_id": 157
        }
      ]
    },
    {
      "group_name": "Multithreaded Programming",
      "topic_number": "16",
      "group_id": 24,
      "is_topic": false,
      "children": [
        {
          "topic_number": "16.1",
          "is_topic": true,
          "topic_title": "Thread Concept In Java",
          "topic_id": 355
        },
        {
          "topic_number": "16.2.1",
          "is_topic": true,
          "topic_title": "Creation Of Threads In Java ",
          "topic_id": 357
        },
        {
          "topic_number": "16.2.2",
          "is_topic": true,
          "topic_title": "Java Inter Thread Communication With Example",
          "topic_id": 358
        },
        {
          "topic_number": "16.3.1",
          "is_topic": true,
          "topic_title": "Thread Synchronization In Java Using 'Synchronized'",
          "topic_id": 356
        },
        {
          "topic_number": "16.3.2",
          "is_topic": true,
          "topic_title": "static synchronized In Java",
          "topic_id": 364
        },
        {
          "topic_number": "16.3.3",
          "is_topic": true,
          "topic_title": "Java Synchronized Blocks",
          "topic_id": 363
        },
        {
          "topic_number": "16.4",
          "is_topic": true,
          "topic_title": "Handling Thread DeadLock In Java",
          "topic_id": 360
        },
        {
          "topic_number": "16.5",
          "is_topic": true,
          "topic_title": "Java Thread Group",
          "topic_id": 362
        },
        {
          "topic_number": "16.6",
          "is_topic": true,
          "topic_title": "Modern Ways Of Suspending, Resuming And Stopping Threads In Java",
          "topic_id": 359
        }
      ]
    },
    {
      "group_name": "Generics",
      "topic_number": "17",
      "group_id": 17,
      "is_topic": false,
      "children": [
        {
          "topic_number": "17.1",
          "is_topic": true,
          "topic_title": "Java Generics ",
          "topic_id": 194
        },
        {
          "topic_number": "17.2.1",
          "is_topic": true,
          "topic_title": "How Generics Improve Type Safety In Java",
          "topic_id": 365
        },
        {
          "topic_number": "17.3",
          "is_topic": true,
          "topic_title": "A Generic Class With Two Type Parameters In Java",
          "topic_id": 371
        },
        {
          "topic_number": "17.4",
          "is_topic": true,
          "topic_title": "Java Bounded Type - Bounded Type In Java",
          "topic_id": 366
        },
        {
          "topic_number": "17.5",
          "is_topic": true,
          "topic_title": "Generics Wildcards In Java With Examples",
          "topic_id": 368
        },
        {
          "topic_number": "17.6",
          "is_topic": true,
          "topic_title": "Java Generics In Methods And Constructors",
          "topic_id": 367
        },
        {
          "topic_number": "17.7",
          "is_topic": true,
          "topic_title": "Generic Interface In Java",
          "topic_id": 370
        },
        {
          "topic_number": "17.8",
          "is_topic": true,
          "topic_title": "Java Type Erasure",
          "topic_id": 369
        }
      ]
    },
    {
      "group_name": "Strings",
      "topic_number": "18",
      "group_id": 18,
      "is_topic": false,
      "children": [
        {
          "topic_number": "18.1",
          "is_topic": true,
          "topic_title": "Java String ",
          "topic_id": 164
        },
        {
          "topic_number": "18.2",
          "is_topic": true,
          "topic_title": "Java length() Method | length() Method In Java - Strings",
          "topic_id": 242
        },
        {
          "topic_number": "18.3.1",
          "is_topic": true,
          "topic_title": "Literals In Java",
          "topic_id": 243
        },
        {
          "topic_number": "18.3.2",
          "is_topic": true,
          "topic_title": "Java String concatenation - concat() Method In Java",
          "topic_id": 244
        },
        {
          "topic_number": "18.3.3",
          "is_topic": true,
          "topic_title": "Java String Concatenation with Other Data Types",
          "topic_id": 191
        },
        {
          "topic_number": "18.3.4",
          "is_topic": true,
          "topic_title": "Java String Conversion - toString() Method In Java",
          "topic_id": 245
        },
        {
          "topic_number": "18.4.1",
          "is_topic": true,
          "topic_title": "charAt() Method In Java - Java Character Extraction",
          "topic_id": 246
        },
        {
          "topic_number": "18.4.2",
          "is_topic": true,
          "topic_title": "getChars() Method In Java",
          "topic_id": 247
        },
        {
          "topic_number": "18.4.3",
          "is_topic": true,
          "topic_title": "Java Character Extraction - Java String getBytes() Method",
          "topic_id": 190
        },
        {
          "topic_number": "18.4.4",
          "is_topic": true,
          "topic_title": "Java Character Extraction - toCharArray() Method In Java",
          "topic_id": 225
        },
        {
          "topic_number": "18.5.1",
          "is_topic": true,
          "topic_title": "Java String Comparison Methods - Equals and EqualsIgnoreCase",
          "topic_id": 185
        },
        {
          "topic_number": "18.5.2",
          "is_topic": true,
          "topic_title": "Java regionMatches() Method - String Comparison",
          "topic_id": 227
        },
        {
          "topic_number": "18.5.3",
          "is_topic": true,
          "topic_title": "Java String startsWith() And endsWith() Methods",
          "topic_id": 248
        },
        {
          "topic_number": "18.5.4",
          "is_topic": true,
          "topic_title": "Java equals method vs == Operator",
          "topic_id": 226
        },
        {
          "topic_number": "18.5.5",
          "is_topic": true,
          "topic_title": "Java compareTo() method",
          "topic_id": 249
        },
        {
          "topic_number": "18.6",
          "is_topic": true,
          "topic_title": "Java Searching Strings - Java indexOf, lastIndexOf Methods",
          "topic_id": 188
        },
        {
          "topic_number": "18.7.1",
          "is_topic": true,
          "topic_title": "Java String substring() method - substring In Java",
          "topic_id": 186
        },
        {
          "topic_number": "18.7.2",
          "is_topic": true,
          "topic_title": "concat() method In Java",
          "topic_id": 250
        },
        {
          "topic_number": "18.7.3",
          "is_topic": true,
          "topic_title": "replace() Method In Java",
          "topic_id": 251
        },
        {
          "topic_number": "18.7.4",
          "is_topic": true,
          "topic_title": "Java String trim() Method - trim() Method In Java",
          "topic_id": 228
        },
        {
          "topic_number": "18.8",
          "is_topic": true,
          "topic_title": "Data Conversion Using valueOf In Java",
          "topic_id": 207
        },
        {
          "topic_number": "18.9",
          "is_topic": true,
          "topic_title": "toLowerCase() And toUpperCase() Methods In Java",
          "topic_id": 252
        },
        {
          "topic_number": "18.10",
          "is_topic": true,
          "topic_title": "Additional String Methods in Java",
          "topic_id": 189
        },
        {
          "topic_number": "18.11",
          "is_topic": true,
          "topic_title": "Java String Arrays - String Arrays In Java",
          "topic_id": 337
        },
        {
          "topic_number": "18.12.1",
          "is_topic": true,
          "topic_title": " Java StringBuffer",
          "topic_id": 234
        },
        {
          "topic_number": "18.12.2",
          "is_topic": true,
          "topic_title": "Java StringBuffer ",
          "topic_id": 253
        },
        {
          "topic_number": "18.12.3",
          "is_topic": true,
          "topic_title": "Java StringBuffer length() And capacity() Methods",
          "topic_id": 254
        },
        {
          "topic_number": "18.12.4",
          "is_topic": true,
          "topic_title": "Java StringBuffer ensureCapacity() Method With Example",
          "topic_id": 255
        },
        {
          "topic_number": "18.12.5",
          "is_topic": true,
          "topic_title": "Java setLength() Method In StringBuffer Class",
          "topic_id": 232
        },
        {
          "topic_number": "18.12.6",
          "is_topic": true,
          "topic_title": "Java charAt() And setCharAt() Methods in StringBuffer",
          "topic_id": 230
        },
        {
          "topic_number": "18.12.7",
          "is_topic": true,
          "topic_title": "StringBuffer getChars() Method In Java With Example",
          "topic_id": 256
        },
        {
          "topic_number": "18.12.8",
          "is_topic": true,
          "topic_title": "Java append() Method In StringBuffer",
          "topic_id": 231
        },
        {
          "topic_number": "18.12.9",
          "is_topic": true,
          "topic_title": "Java StringBuffer insert() Method With Example",
          "topic_id": 257
        },
        {
          "topic_number": "18.12.10",
          "is_topic": true,
          "topic_title": "Java StringBuffer, reverse() - Reverse A String In Java",
          "topic_id": 187
        },
        {
          "topic_number": "18.12.11",
          "is_topic": true,
          "topic_title": "Java delete() and deleteCharAt() Methods In StringBuffer",
          "topic_id": 235
        },
        {
          "topic_number": "18.12.12",
          "is_topic": true,
          "topic_title": "Java StringBuffer replace() Method With Example",
          "topic_id": 258
        },
        {
          "topic_number": "18.12.13",
          "is_topic": true,
          "topic_title": "Java substring",
          "topic_id": 229
        },
        {
          "topic_number": "18.12.14",
          "is_topic": true,
          "topic_title": "Additional StringBuffer Methods In Java",
          "topic_id": 233
        },
        {
          "topic_number": "18.13",
          "is_topic": true,
          "topic_title": "StringBuilder Class In Java",
          "topic_id": 259
        },
        {
          "topic_number": "18.14",
          "is_topic": true,
          "topic_title": "Conclusion Of Strings In Java",
          "topic_id": 339
        }
      ]
    },
    {
      "group_name": "Exploring java.lang",
      "topic_number": "19",
      "group_id": 19,
      "is_topic": false,
      "children": [
        {
          "topic_number": "19.1.1",
          "is_topic": true,
          "topic_title": "Java Number Class ",
          "topic_id": 260
        },
        {
          "topic_number": "19.1.2",
          "is_topic": true,
          "topic_title": "Java Double Class And Java Float Class",
          "topic_id": 261
        },
        {
          "topic_number": "19.1.3",
          "is_topic": true,
          "topic_title": "Java isInfinite() And isNaN() Methods In Double Class",
          "topic_id": 262
        },
        {
          "topic_number": "19.1.4",
          "is_topic": true,
          "topic_title": "Creating Objects for Primitive Data Types (Byte, Short)",
          "topic_id": 263
        },
        {
          "topic_number": "19.1.5",
          "is_topic": true,
          "topic_title": "Converting Numbers to and from Strings In Java",
          "topic_id": 264
        },
        {
          "topic_number": "19.1.6",
          "is_topic": true,
          "topic_title": "Java Character Class",
          "topic_id": 265
        },
        {
          "topic_number": "19.1.7",
          "is_topic": true,
          "topic_title": "Character Unicode, Code Point Support In Java",
          "topic_id": 266
        },
        {
          "topic_number": "19.1.8",
          "is_topic": true,
          "topic_title": "Java Boolean Class",
          "topic_id": 267
        },
        {
          "topic_number": "19.2",
          "is_topic": true,
          "topic_title": "Java Void Class",
          "topic_id": 268
        },
        {
          "topic_number": "19.3",
          "is_topic": true,
          "topic_title": "Java Process Class",
          "topic_id": 269
        },
        {
          "topic_number": "19.4",
          "is_topic": true,
          "topic_title": "Java Runtime Class - java.lang.Runtime",
          "topic_id": 211
        },
        {
          "topic_number": "19.5",
          "is_topic": true,
          "topic_title": "Java ProcessBuilder",
          "topic_id": 270
        },
        {
          "topic_number": "19.6.1",
          "is_topic": true,
          "topic_title": "Using currentTimeMillis() Method In Java",
          "topic_id": 271
        },
        {
          "topic_number": "19.6.2",
          "is_topic": true,
          "topic_title": "System Class arraycopy() Method In Java",
          "topic_id": 272
        },
        {
          "topic_number": "19.6.3",
          "is_topic": true,
          "topic_title": "Java Environment Properties",
          "topic_id": 273
        },
        {
          "topic_number": "19.7",
          "is_topic": true,
          "topic_title": "Object As A Super Class In Java",
          "topic_id": 197
        },
        {
          "topic_number": "19.8",
          "is_topic": true,
          "topic_title": "clone() Method And cloneable Interface In Java",
          "topic_id": 274
        },
        {
          "topic_number": "19.9",
          "is_topic": true,
          "topic_title": "java.lang.class - Java Library",
          "topic_id": 196
        },
        {
          "topic_number": "19.10",
          "is_topic": true,
          "topic_title": "Java ClassLoader ",
          "topic_id": 275
        },
        {
          "topic_number": "19.11",
          "is_topic": true,
          "topic_title": "Java Math Class - java.lang.Math",
          "topic_id": 204
        },
        {
          "topic_number": "19.12",
          "is_topic": true,
          "topic_title": "Java Package Class",
          "topic_id": 276
        },
        {
          "topic_number": "19.13",
          "is_topic": true,
          "topic_title": " Java Enumeration",
          "topic_id": 203
        },
        {
          "topic_number": "19.14",
          "is_topic": true,
          "topic_title": "Java Comparable Interface with Example",
          "topic_id": 209
        },
        {
          "topic_number": "19.15",
          "is_topic": true,
          "topic_title": "Conclusion (Exploring java.lang)",
          "topic_id": 338
        }
      ]
    },
    {
      "group_name": "Collections Framework",
      "topic_number": "20",
      "group_id": 20,
      "is_topic": false,
      "children": [
        {
          "topic_number": "20.1",
          "is_topic": true,
          "topic_title": "Java Collections Overview",
          "topic_id": 277
        },
        {
          "topic_number": "20.2.1",
          "is_topic": true,
          "topic_title": "Java List Interface ",
          "topic_id": 278
        },
        {
          "topic_number": "20.2.2",
          "is_topic": true,
          "topic_title": "Set Interface In Java",
          "topic_id": 279
        },
        {
          "topic_number": "20.2.3",
          "is_topic": true,
          "topic_title": "Java SortedSet Interface ",
          "topic_id": 280
        },
        {
          "topic_number": "20.2.4",
          "is_topic": true,
          "topic_title": "Java NavigableSet Interface ",
          "topic_id": 281
        },
        {
          "topic_number": "20.3.1",
          "is_topic": true,
          "topic_title": "Java ArrayList",
          "topic_id": 174
        },
        {
          "topic_number": "20.3.2",
          "is_topic": true,
          "topic_title": "Java LinkedList ",
          "topic_id": 175
        },
        {
          "topic_number": "20.3.3",
          "is_topic": true,
          "topic_title": "HashSet Class In Java",
          "topic_id": 173
        },
        {
          "topic_number": "20.3.4",
          "is_topic": true,
          "topic_title": " Java LinkedHashSet",
          "topic_id": 181
        },
        {
          "topic_number": "20.3.5",
          "is_topic": true,
          "topic_title": "Java TreeSet - TreeSet Examples in Java",
          "topic_id": 180
        },
        {
          "topic_number": "20.3.6",
          "is_topic": true,
          "topic_title": "Java PriorityQueue - PriorityQueue In Java",
          "topic_id": 282
        },
        {
          "topic_number": "20.3.7",
          "is_topic": true,
          "topic_title": "Java ArrayDeque Class",
          "topic_id": 283
        },
        {
          "topic_number": "20.3.8",
          "is_topic": true,
          "topic_title": "Java EnumSet ",
          "topic_id": 284
        },
        {
          "topic_number": "20.4.1",
          "is_topic": true,
          "topic_title": "Java Iterator",
          "topic_id": 178
        },
        {
          "topic_number": "20.4.2",
          "is_topic": true,
          "topic_title": "List Iterator In Java",
          "topic_id": 179
        },
        {
          "topic_number": "20.5.1",
          "is_topic": true,
          "topic_title": "Java Map Interfaces - HashMap, TreeMap,  LinkedHashMap",
          "topic_id": 193
        },
        {
          "topic_number": "20.5.2",
          "is_topic": true,
          "topic_title": "Java SortedMap Interface ",
          "topic_id": 285
        },
        {
          "topic_number": "20.5.3",
          "is_topic": true,
          "topic_title": "Java NavigableMap",
          "topic_id": 286
        },
        {
          "topic_number": "20.5.4",
          "is_topic": true,
          "topic_title": "Java Map.Entry Interface",
          "topic_id": 287
        },
        {
          "topic_number": "20.6.1",
          "is_topic": true,
          "topic_title": "Java HashMap Implementation",
          "topic_id": 182
        },
        {
          "topic_number": "20.6.2",
          "is_topic": true,
          "topic_title": "TreeMap In Java - java.util.TreeMap",
          "topic_id": 206
        },
        {
          "topic_number": "20.6.3",
          "is_topic": true,
          "topic_title": "Java WeakHashMap Class",
          "topic_id": 288
        },
        {
          "topic_number": "20.6.4",
          "is_topic": true,
          "topic_title": "LinkedHashMap In Java with Code Example",
          "topic_id": 210
        },
        {
          "topic_number": "20.6.5",
          "is_topic": true,
          "topic_title": "Java IdentityHashMap",
          "topic_id": 290
        },
        {
          "topic_number": "20.6.6",
          "is_topic": true,
          "topic_title": "Java EnumMap ",
          "topic_id": 291
        },
        {
          "topic_number": "20.7",
          "is_topic": true,
          "topic_title": "Java Comparators",
          "topic_id": 183
        },
        {
          "topic_number": "20.8.1",
          "is_topic": true,
          "topic_title": "Java  Collection Algorithms",
          "topic_id": 172
        },
        {
          "topic_number": "20.8.2",
          "is_topic": true,
          "topic_title": "Java Read-only Collections And Algorithms ",
          "topic_id": 214
        },
        {
          "topic_number": "20.8.3",
          "is_topic": true,
          "topic_title": "Java Thread Safe Collections & Algorithms",
          "topic_id": 215
        },
        {
          "topic_number": "20.8.4",
          "is_topic": true,
          "topic_title": "Java Singleton",
          "topic_id": 216
        },
        {
          "topic_number": "20.8.5",
          "is_topic": true,
          "topic_title": "Java nCopies Collections - Collections.nCopies() Method",
          "topic_id": 217
        },
        {
          "topic_number": "20.9",
          "is_topic": true,
          "topic_title": "java.util.Arrays - Class Arrays In Collection Framework",
          "topic_id": 176
        },
        {
          "topic_number": "20.10",
          "is_topic": true,
          "topic_title": "Why Collections Are Generic In Java?",
          "topic_id": 289
        },
        {
          "topic_number": "20.11.1",
          "is_topic": true,
          "topic_title": "Java Enumeration Interfaces - Java Enumeration Examples",
          "topic_id": 177
        },
        {
          "topic_number": "20.11.2",
          "is_topic": true,
          "topic_title": "Java Vector",
          "topic_id": 218
        },
        {
          "topic_number": "20.11.3",
          "is_topic": true,
          "topic_title": "Stack In Java - java.util.Stack Class",
          "topic_id": 219
        },
        {
          "topic_number": "20.11.4",
          "is_topic": true,
          "topic_title": "Java Dictionary Class - java.util.Dictionary",
          "topic_id": 220
        },
        {
          "topic_number": "20.11.5",
          "is_topic": true,
          "topic_title": "Java Hashtable",
          "topic_id": 221
        },
        {
          "topic_number": "20.11.6",
          "is_topic": true,
          "topic_title": "Java Properties Class - java.util.Properties Class",
          "topic_id": 222
        },
        {
          "topic_number": "20.12",
          "is_topic": true,
          "topic_title": "Collection Framework In Java",
          "topic_id": 184
        }
      ]
    },
    {
      "group_name": "More Utility Classes",
      "topic_number": "21",
      "group_id": 21,
      "is_topic": false,
      "children": [
        {
          "topic_number": "21.1",
          "is_topic": true,
          "topic_title": "Java Collections - Utility Classes In Java",
          "topic_id": 166
        },
        {
          "topic_number": "21.2",
          "is_topic": true,
          "topic_title": "StringTokenizer In Java",
          "topic_id": 199
        },
        {
          "topic_number": "21.3",
          "is_topic": true,
          "topic_title": "Java BitSet",
          "topic_id": 213
        },
        {
          "topic_number": "21.4",
          "is_topic": true,
          "topic_title": "Java Date Class ",
          "topic_id": 292
        },
        {
          "topic_number": "21.5",
          "is_topic": true,
          "topic_title": "Calendar In Java - java.util.Calendar Class",
          "topic_id": 205
        },
        {
          "topic_number": "21.6",
          "is_topic": true,
          "topic_title": "Java GregorianCalendar ",
          "topic_id": 293
        },
        {
          "topic_number": "21.7",
          "is_topic": true,
          "topic_title": "Java TimeZone Class",
          "topic_id": 294
        },
        {
          "topic_number": "21.8",
          "is_topic": true,
          "topic_title": "Java SimpleTimeZone",
          "topic_id": 295
        },
        {
          "topic_number": "21.9",
          "is_topic": true,
          "topic_title": "Locale Class In Java",
          "topic_id": 296
        },
        {
          "topic_number": "21.10",
          "is_topic": true,
          "topic_title": "Java Random Class - java.util.Random Package",
          "topic_id": 212
        },
        {
          "topic_number": "21.11",
          "is_topic": true,
          "topic_title": "Java Observable",
          "topic_id": 201
        },
        {
          "topic_number": "21.12",
          "is_topic": true,
          "topic_title": "Java Timer Class And Java TimerTask Class",
          "topic_id": 297
        },
        {
          "topic_number": "21.13",
          "is_topic": true,
          "topic_title": "Java Currency Class",
          "topic_id": 298
        },
        {
          "topic_number": "21.14.1",
          "is_topic": true,
          "topic_title": "Java Formatter Class ",
          "topic_id": 299
        },
        {
          "topic_number": "21.14.2",
          "is_topic": true,
          "topic_title": "Java Formatter Methods ",
          "topic_id": 300
        },
        {
          "topic_number": "21.14.3",
          "is_topic": true,
          "topic_title": "Java Formatter ",
          "topic_id": 198
        },
        {
          "topic_number": "21.14.4",
          "is_topic": true,
          "topic_title": "Formatting Strings And Characters By Using Formatter",
          "topic_id": 301
        },
        {
          "topic_number": "21.14.5",
          "is_topic": true,
          "topic_title": "Java Formatting Numbers",
          "topic_id": 302
        },
        {
          "topic_number": "21.14.6",
          "is_topic": true,
          "topic_title": "Formatting Date And Time In Java With Example",
          "topic_id": 303
        },
        {
          "topic_number": "21.15.1",
          "is_topic": true,
          "topic_title": "Java Scanner Class Constructors With Example",
          "topic_id": 304
        },
        {
          "topic_number": "21.15.2",
          "is_topic": true,
          "topic_title": "Java Scanner Class Methods With Examples",
          "topic_id": 305
        },
        {
          "topic_number": "21.16",
          "is_topic": true,
          "topic_title": "Java ResourceBundle, ListResourceBundle And PropertyResourceBundle Classes",
          "topic_id": 306
        },
        {
          "topic_number": "21.17.1",
          "is_topic": true,
          "topic_title": "Usage Of java.util.logging Package",
          "topic_id": 307
        },
        {
          "topic_number": "21.17.2",
          "is_topic": true,
          "topic_title": "Java Regular Expression",
          "topic_id": 195
        }
      ]
    },
    {
      "group_name": "Input/Output: Exploring java.io",
      "topic_number": "22",
      "group_id": 22,
      "is_topic": false,
      "children": [
        {
          "topic_number": "22.1",
          "is_topic": true,
          "topic_title": "Java Input/Output Classes And Interfaces",
          "topic_id": 308
        },
        {
          "topic_number": "22.2.1",
          "is_topic": true,
          "topic_title": "Java Directories - isDiretory() Method In Java",
          "topic_id": 309
        },
        {
          "topic_number": "22.2.2",
          "is_topic": true,
          "topic_title": "Using FilenameFilter Interface In Java",
          "topic_id": 310
        },
        {
          "topic_number": "22.2.3",
          "is_topic": true,
          "topic_title": "Alternative For list() Method - listFiles() Method",
          "topic_id": 311
        },
        {
          "topic_number": "22.2.4",
          "is_topic": true,
          "topic_title": "Creating Directories In Java - Creating Java Directories",
          "topic_id": 312
        },
        {
          "topic_number": "22.3",
          "is_topic": true,
          "topic_title": "AutoCloseable, Closeable And Flushable Interfaces In Java",
          "topic_id": 313
        },
        {
          "topic_number": "22.4",
          "is_topic": true,
          "topic_title": "Java I/O Exceptions - I/O Exceptions In Java",
          "topic_id": 314
        },
        {
          "topic_number": "22.5",
          "is_topic": true,
          "topic_title": "Two Ways To Close A Stream In Java",
          "topic_id": 315
        },
        {
          "topic_number": "22.6",
          "is_topic": true,
          "topic_title": "Java Stream Classes ",
          "topic_id": 316
        },
        {
          "topic_number": "22.7.1",
          "is_topic": true,
          "topic_title": "Java InputStream Class",
          "topic_id": 317
        },
        {
          "topic_number": "22.7.2",
          "is_topic": true,
          "topic_title": "Java OutputStream Class",
          "topic_id": 318
        },
        {
          "topic_number": "22.7.3",
          "is_topic": true,
          "topic_title": "Java FileInputStream",
          "topic_id": 223
        },
        {
          "topic_number": "22.7.4",
          "is_topic": true,
          "topic_title": "Java FileOutputStream",
          "topic_id": 224
        },
        {
          "topic_number": "22.7.5",
          "is_topic": true,
          "topic_title": "Java ByteArrayInputStream",
          "topic_id": 319
        },
        {
          "topic_number": "22.7.6",
          "is_topic": true,
          "topic_title": "Java ByteArrayOutputStream ",
          "topic_id": 320
        },
        {
          "topic_number": "22.7.7",
          "is_topic": true,
          "topic_title": "Java Filtered Byte Streams",
          "topic_id": 321
        },
        {
          "topic_number": "22.7.8",
          "is_topic": true,
          "topic_title": "Java Buffered Byte Streams ",
          "topic_id": 322
        },
        {
          "topic_number": "22.7.9",
          "is_topic": true,
          "topic_title": "Java BufferedInputStream",
          "topic_id": 323
        },
        {
          "topic_number": "22.7.10",
          "is_topic": true,
          "topic_title": "Java BufferedOutputStream - BufferedOutputStream In Java",
          "topic_id": 324
        },
        {
          "topic_number": "22.7.11",
          "is_topic": true,
          "topic_title": "Java PrintStream Class ",
          "topic_id": 325
        },
        {
          "topic_number": "22.7.12",
          "is_topic": true,
          "topic_title": "DataInputStream And DataOutputStream In Java",
          "topic_id": 326
        },
        {
          "topic_number": "22.7.13",
          "is_topic": true,
          "topic_title": "Java RandomAccessFile ",
          "topic_id": 192
        },
        {
          "topic_number": "22.8.1",
          "is_topic": true,
          "topic_title": "Reader Class In Java",
          "topic_id": 327
        },
        {
          "topic_number": "22.8.2",
          "is_topic": true,
          "topic_title": "Java Writer Class",
          "topic_id": 328
        },
        {
          "topic_number": "22.8.3",
          "is_topic": true,
          "topic_title": "Java FileReader",
          "topic_id": 237
        },
        {
          "topic_number": "22.8.4",
          "is_topic": true,
          "topic_title": "Java FileWriter",
          "topic_id": 236
        },
        {
          "topic_number": "22.8.5",
          "is_topic": true,
          "topic_title": "Java CharArrayReader",
          "topic_id": 330
        },
        {
          "topic_number": "22.8.6",
          "is_topic": true,
          "topic_title": "Java CharArrayWriter",
          "topic_id": 329
        },
        {
          "topic_number": "22.8.7",
          "is_topic": true,
          "topic_title": "BufferedReader In Java",
          "topic_id": 240
        },
        {
          "topic_number": "22.8.8",
          "is_topic": true,
          "topic_title": "Java BufferedWriter",
          "topic_id": 241
        },
        {
          "topic_number": "22.8.9",
          "is_topic": true,
          "topic_title": "PrintWriter Class In Java",
          "topic_id": 331
        },
        {
          "topic_number": "22.9",
          "is_topic": true,
          "topic_title": "Java Console Class",
          "topic_id": 332
        },
        {
          "topic_number": "22.10.1",
          "is_topic": true,
          "topic_title": "Serialization In Java ",
          "topic_id": 200
        },
        {
          "topic_number": "22.10.2",
          "is_topic": true,
          "topic_title": "Externalizable In Java with Example",
          "topic_id": 208
        },
        {
          "topic_number": "22.10.3",
          "is_topic": true,
          "topic_title": "Java ObjectOutput",
          "topic_id": 333
        },
        {
          "topic_number": "22.10.4",
          "is_topic": true,
          "topic_title": "Java ObjectOutputStream",
          "topic_id": 238
        },
        {
          "topic_number": "22.10.5",
          "is_topic": true,
          "topic_title": "Java ObjectInput",
          "topic_id": 334
        },
        {
          "topic_number": "22.10.6",
          "is_topic": true,
          "topic_title": "Java ObjectInputStream",
          "topic_id": 239
        },
        {
          "topic_number": "22.10.7",
          "is_topic": true,
          "topic_title": "Java Serialization Process -",
          "topic_id": 341
        },
        {
          "topic_number": "22.11",
          "is_topic": true,
          "topic_title": "Java Stream Benefits",
          "topic_id": 335
        },
        {
          "topic_number": "22.12",
          "is_topic": true,
          "topic_title": "Conclusion To Input/Output (Exploring java.io)",
          "topic_id": 340
        }
      ]
    },
    {
      "group_name": "Other Core Java Topics",
      "topic_number": "23",
      "group_id": 23,
      "is_topic": false,
      "children": [
        {
          "topic_number": "23.1",
          "is_topic": true,
          "topic_title": "Other Advanced Topics In Java",
          "topic_id": 202
        },
        {
          "topic_number": "23.2",
          "is_topic": true,
          "topic_title": "Advanced Java Programming Concepts",
          "topic_id": 21
        }
      ]
    }
  ];

  static get_data(int id) {
    BuildContext context;
    List<PlanGroup>get = Api.loadGroups(context);
    for(int i=0;i<get.length;i++){
      for(int j =0;j<get[i].children.length;j++){
        if(id == get[i].children[j].topicId){
          return get[i].children[j].topicTitle;
        }
      }
    }
  }
}
