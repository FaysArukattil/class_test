// Create a console-based Banking Management System in Dart with the following functionalities: Create a new account, Deposit money into the account, Withdraw money from the account, View current account details 

//Welcome to the Banking Management System!
// Choose an option: 
// 1. Create Account
// 2. Deposit Money
// 3. Withdraw Money
// 4. View Account Details
// Enter your choice (1–4): 1
//
// Enter account holder name: Alice 
//Enter initial deposit amount: 1000
// Account created successfully!

// Do you want to continue? (yes/no): yes 
//Choose an option: 
// 1. Create Account
// 2. Deposit Money
// 3. Withdraw Money
// 4. View Account Details 
//Enter your choice (1–4): 2

// Enter deposit amount: 500
// Deposit successful. New balance: 1500

// Do you want to continue? (yes/no): yes
// Choose an option:
// 1. Create Account
// 2. Deposit Money
// 3. Withdraw Money
// 4. View Account Details
// Enter your choice (1–4): 3

// Enter withdrawal amount: 300
// Withdrawal successful. New balance: 1200

// Do you want to continue? (yes/no): yes
// Choose an option: 
// 1. Create Account
// 2. Deposit Money
// 3. Withdraw Money
// 4. View Account Details 
// Enter your choice (1–4): 4

// --- Account Details --- 
// Name: Alice Balance: 1200

// Do you want to continue? (yes/no): no
// Thank you for using the Banking Management System. Goodbye!
  import 'dart:io';

  List <Map>list=[];

  void createAccount()
  {
  stdout.write("Enter account holder name: ");
  String name=stdin.readLineSync()!;
  stdout.write("Enter initial deposit amount: ");
  int iniamount=int.parse(stdin.readLineSync()!);
  print("Accounted created succesfully!\n");
  list.add({"name":name,"currentamount":iniamount});  

  }

  void depositMoney()
  {
    if (list.isEmpty) 
    {
    print("No account found. Please create an account first.");
    continu(options);
    }
    else
    {
    stdout.write("Enter deposit amount: ");
    int deposit = int.parse(stdin.readLineSync()!);
    list[0]["currentamount"] += deposit;
    print("Deposit successful. New balance: ${list[0]["currentamount"]}");
    continu(options);
    }
    
  }




  

  void withdrawMoney()
  {
    if (list.isEmpty) 
    {
    print("No account found. Please create an account first.");
    continu(options);
    }
    else
    {
    stdout.write("Enter withdraw amount: ");
    int withdraw = int.parse(stdin.readLineSync()!);
    withdraw<=list[0]["currentamount"] ? list[0]["currentamount"] -= withdraw : 
    stdout.write("Insufficient balance!\n");  
    print("Current balance: ${list[0]["currentamount"]}");
    continu(options);
    }


  }

  void viewAccountDetails()
  {
    if (list.isEmpty) 
    {
    print("No Account Found,please Create an Account First");
    continu(options);
    }
    else
    {
    print("Name: ${list[0]["name"]}  Balance: ${list[0]["currentamount"]}");
    }

  }
  void continu(void Function() fun)
  {
    stdout.write("Do you Want to Continue(Yes/No): ");
    String c=(stdin.readLineSync()!).toLowerCase();
    if(c=="yes")
    {
      fun();
    }
    else if(c=="no")
    {
      print("\nThank you for using the Banking Management System. Goodbye!\n");
      exit(0);
    }
    else
    {
      print("Invalid Input Try Again!");
      continu(fun);
    }

  }


void main()
{
options();
}

void options()
{
 while (true) 
  {
    
    print("\n1. Create Account");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. View Account Details");
  
    stdout.write("\nChoose an Option: (1 to 4): ");  
    int option=int.parse(stdin.readLineSync()!);
   
    switch(option)
    {
      case 1:
      createAccount();
      continu(options);

      case 2:
      depositMoney();

      case 3:
      withdrawMoney();

      case 4:
      viewAccountDetails();

      default:
      print("\nInvalid,Try Again!");


    }
  }
}