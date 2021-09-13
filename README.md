# jsonflattener-mongodb
A MongoDB coding challenge to flatten a JSON object.


## Install Dart SDK
To run this jsonflattener program, you need to install the Dart SDK.
Dart is an object-oriented programming language developed by Google.

1. Get the Dart SDK

    https://dart.dev/get-dart

    The current version is 2.14.1

2. Use Homebrew to install:

    ````
    $ brew tap dart-lang/dart
    $ brew install dart
    ````

3. Check your Dart version:

    ````
    $ brew info dart
    ````

## Clone the Repo

1.  In a console window, go to the directory of your choosing.

2.  With a GitHub SSH key already installed on your machine, use SSH to clone the `jsonflattener-mongodb` repo:

    ````
    $ git clone git@github.com:jstowers/jsonflattener-mongodb.git
    ````

## Run the Program
1.  Open the repo folder:

    ````
    $ cd jsonflattener-mongodb
    ````

2.  Check the folder structure:

    ````
    /jsonflattener-mongodb
    |
    |--- /lib
    |    |
    |    |--- /assets  
    |    |    |--- sample1.json
    |    |    |--- sample2.json
    |    |    |--- sample3.json
    |    |
    |    |--- main.dart
    |
    |--- /test
    |    |
    |    |--- main_test.dart
    |
    |--- pubspec.yaml
    |--- README.md
    ````
    
3.  From /lib directory, type the following console command to run jsonflattener with the desired JSON file:

    ````
    $ cd lib
    $ cat assets/sample1.json | dart run main.dart
    ````

## Run the Unit Tests
This program relies on a Dart package called `test` to configure and run the unit tests.  The test package is listed as a devDependency in the pubspec.yaml file.

1. From the root directory, run `dart pub get` to install the test package dependency:

    ````
    $ cd <path/to/jsonflattener-mongodb>
    $ dart pub get
    ````

2. Execute the tests:

    ````
    $ dart test
    ````


## Notes

__Saturday, September 11, 2021__

3:15 - 5:15 pm  (2 hr)    
GitHub SSH setup, repo setup, start README, work on initial JSON flattening solution, and research type checking for a LinkedHashMap in Dart.

5:45 - 6:50 pm  (1 hr)      
Work on recursive solution to flatten JSON.  Encountered difficulty recursively flattening a nested JSON.

9:00 - 10:30 pm  (1.5 hr)    
Work on recursive solution.  Complete recursion base case.  Work through some Dart method and variable typing issues.  Complete recursive solution.

__Sunday, September 12, 2021__

10:00 - 11:00 am (1 hr)     
Research how to read a JSON file from the command line in a Dart program.  Implement a StreamSubscription in main().

4:00 - 4:30 pm (0.5 hr)     
Update README with repo download and program execution instructions.  Create pubspec.yaml for test package dependency.  Begin test configuration.

8:00 - 9:30 (1.5 hr)        
Write unit tests.  Debug file path error for sample json files.  Update folder structure.  Complete challenge.

Total Time = 7.5 hrs


## Action Items

• Add unit tests

• Add script to run program from command line - DONE
