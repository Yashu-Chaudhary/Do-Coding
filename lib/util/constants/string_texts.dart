class PTexts {
  static const String name = 'yashu Chudhary';

  // Onboarding texts
  static const String learnCoading = 'Learn Coading';
  static const String disc =
      'learn with easyand fun. just one application you will find many questions.';
  static const String next = 'Next';

  // home screen texts
  static const String doCoading = 'Do Coding';

  // for the containers and the coading page text
  static List<Map<String, dynamic>> map = [
    // first question data
    {
      'title': 'Welcome to Java!',
      'subTitel': 'Easy, Max Score:3, Success Rate: 97.05%',
      'discription': {
        'Problem':
            'Welcome to the world of Java! In this challenge, we practice printing to stdout.The code stubs in your editor declare a Solution class and a main method. Complete the main method by copying the two lines of code below and pasting them inside the body of your main method.',
        'InputFormat': 'There is no input for this challenge.',
        'OutputFormat':
            'You must print two lines of output: \nPrint Hello, World. on the first line. \nPrint Hello, Java. on the second line.',
        'SampleOutput': 'Hello, World. \nHello, Java.',
      }
    },
    // second question data
    {
      'title': 'Java I-Else',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 91.32%',
      'discription': {
        'Problem':
            'In this challenge, we test your knowledge of using if-else conditional statements to automate decision-making processes. An if-else statement has the following logical flow:',
        'Task':
            'Given an integer,N , perform the following conditional actions:',
        'TaskList': [
          'If n is odd, print Weird',
          'If n is even and in the inclusive range of 2 to 5, print Not Weird',
          'If n is even and in the inclusive range of 6 to 20, print Weird',
          'If n is even and greater than 20, print Not Weird'
        ],
        'TaskBelow':
            'Complete the stub code provided in your editor to print whether or not  is weird.',
        'InputFormat': 'A single line containing a positive integer,n.',
        'Constraints': '1<=n<=100',
        'OutputFormat':
            'Print Weird if the number is weird; otherwise, print Not Weird.',
        'SampleInput0': '3',
        'SampleOutput0': 'Weird',
        'SampleInput1': '24',
        'SampleOutput1': 'Not Weird',
        'exText0': 'Sample Case 0: n = 3',
        'exText1': 'n is odd and odd numbers are weird, so we print Weird.',
        'exText2': 'Sample Case 1: n = 24',
        'exText3':
            "n > 20 and n is even, so it isn't weird. Thus, we print Not Weird.",
      }
    },

    // Third question data
    {
      'title': 'Java Stdin and Stdio ||',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 92.61%',
      'discription': {
        'Problem':
            'In this challenge, you must read an integer, a double, and a String from stdin, then print the values according to the instructions in the Output Format section below. To make the problem a little easier, a portion of the code is provided for you in the editor.',
        'InputFormat':
            'There are three lines of input: \n The first line contains an integer. \n The second line contains a double.\n The third line contains a String.',
        'OutputFormat':
            'There are three lines of output: \n On the first line, print String: followed by the unaltered String read from stdin.\n On the second line, print Double: followed by the unaltered double read from stdin. \n On the third line, print Int: followed by the unaltered integer read from stdin.\n To make the problem easier, a portion of the code is already provided in the editor.',
        'SampleInput': '42 \n3.1415 \nWelcome to HackerRank\'s Java tutorials!',
        'SampleOutput':
            'String: Welcome to HackerRank\'s Java tutorials! \nDouble: 3.1415 \nInt: 42',
      }
    },
    // fourth question data
    {
      'title': 'Java Output Formatting',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 96.55%',
      'discription': {
        'Problem':
            'Java\'s System.out.printf function can be used to print formatted output. The purpose of this exercise is to test your understanding of formatting output using printf.\nTo get you started, a portion of the solution is provided for you in the editor; you must format and print the input to complete the solution.',
        'InputFormat':
            'Every line of input will contain a String followed by an integer. \nEach String will have a maximum of 10 alphabetic characters, and each integer will be in the inclusive range from 0 to 999.',
        'OutputFormat':
            'In each line of output there should be two columns: \nThe first column contains the String and is left justified using exactly 15 characters. \nThe second column contains the integer, expressed in exactly 3 digits; if the original input has less than three digits, you must pad your output\'s leading digits with zeroes.',
        'SampleInput': 'java 100 \ncpp 65 \npython 50',
        'SampleOutput':
            '================================\njava           100 \ncpp            065 \npython         050 \n================================',
        'Explanation':
            'Each String is left-justified with trailing whitespace through the first 15 characters. The leading digit of the integer is the 16th character, and each integer that was less than 3 digits now has leading zeroes.',
      }
    },
    // fifth question data
    {
      'title': 'Java Loops I',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 97.67%',
      'discription': {
        'Problem':
            'In this challenge, we\'re going to use loops to help us do some simple math.',
        'Task':
            'Given an integer,N , print its first 10 multiples. Each multiple N x i (where )0<i<11 should be printed on a new line in the form: N x i = result.',
        'InputFormat': 'A single integer, N.',
        'Constraints': '2<=N<=20',
        'OutputFormat':
            'Print 10 lines of output; each line  (where 1<=i<=10) contains the result of N x i in the form: \nN x i = result.',
        'SampleInput': '2',
        'SampleOutput':
            '2 x 1 = 2\n2 x 2 = 4\n2 x 3 = 6\n2 x 4 = 8\n2 x 5 = 10\n2 x 6 = 12\n2 x 7 = 14\n2 x 8 = 16\n2 x 9 = 18\n2 x 10 = 20',
      }
    },
    // sixth question data
    {
      'title': 'Java Loops II',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 97.32%',
      'discription': {
        'Problem':
            'You are given q queries in the form of a,b and n. For each query, print the series corresponding to the given a, b, and n values as a single line of n space-separated integers.',
        'InputFormat':
            'The first line contains an integer,q , denoting the number of queries.\nEach line i of the q subsequent lines contains three space-separated integers describing the respective ai, bi, and ni values for that query.',
        'Constraints': '0<q<500 \n0<a,b<50\n1<n<15',
        'OutputFormat':
            'For each query, print the corresponding series on a new line. Each series must be printed in order as a single line of n space-separated integers.',
        'SampleInput': '2\n0 2 10\n5 3 5',
        'SampleOutput': '2 6 14 30 62 126 254 510 1022 2046\n8 14 26 50 98',
      }
    },
    // seventh question data
    {
      'title': 'Java Datatypes',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 97.32%',
      'discription': {
        'Problem':
            'Java has 8 primitive data types; char, boolean, byte, short, int, long, float, and double. For this exercise, we\'ll work with the primitives used to hold integer values (byte, short, int, and long):\n\nA byte is an 8-bit signed integer.\nA short is a 16-bit signed integer.\nAn int is a 32-bit signed integer.\nA long is a 64-bit signed integer.\nGiven an input integer, you must determine which primitive data types are capable of properly storing that input.\n\nTo get you started, a portion of the solution is provided for you in the editor.',
        'InputFormat':
            'The first line contains an integer, T, denoting the number of test cases.Each test case, T, is comprised of a single line with an integer, n, which can be arbitrarily large or small.',
        'OutputFormat':
            'For each input variable n and appropriate primitive dataType, you must determine if the given primitives are capable of storing it. If yes, then print:\nn can be fitted in:\n* dataType',
        'SampleInput':
            '5\n-150\n150000\n1500000000\n213333333333333333333333333333333333\n-100000000000000',
        'SampleOutput':
            '-150 can be fitted in:\n* short\n* int\n* long\n150000 can be fitted in:\n* int\n* long\n1500000000 can be fitted in:\n* int\n* long\n213333333333333333333333333333333333 can\'t be fitted anywhere.\n-100000000000000 can be fitted in:\n* long',
        'Explanation':
            '-150can be stored in a short, an int, or a long.\n213333333333333333333333333333333333is very large and is outside of the allowable range of values for the primitive data types discussed in this problem.',
      }
    },
    // eight question data
    {
      'title': 'Java Int to String',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 98.04%',
      'discription': {
        'Problem':
            'You are given an integer n, you have to convert it into a string.\n\nPlease complete the partially completed code in the editor. If your code successfully converts n into a string s the code will print "Good job". Otherwise it will print "Wrong answer".\n\nn can range between -100 to 100 inclusive.',
        'SampleInput0': '100',
        'SampleOutput0': 'Good job',
      }
    }
  ];
}
