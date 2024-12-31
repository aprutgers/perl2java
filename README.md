See https://perl2java.wordpress.com/2013/07/12/a-perl2java-tool-the-approach

The example runs with:

perl yappie.pl test.pl

or use 

make test 

after a change of the compiler.

The semantic actions are in JavaGenerator.pm, the main part of the work is done by JV_GEN_call that is called from the generated parser when it recognizes a statement.

The Log.pm module helps you with the Log::debug statements to see what’s going on, you can add more when you really want to understand more details.

In general you would need some (very) good knowledge on Java, Perl and how you build language compilers in general which is not always the most simple task.

The current compiler can compile this very simple perl program, its currently the most complex it can do, more complicated perl will probably make it crash or generate Java code that you cannot compile.

One idea I also had was perhaps partial use automated compilation and that do the rest manual, however that only works with a limited amount of perl code.

../gemtalker/readmdmakers.py
yappie.pl
JavaGenerator.pm
```markdown
# ../gemtalker/readmdmakers.py Documentation

This script reads multiple files specified as command-line arguments, constructs a prompt containing the file names and their contents, and uses the Google Gemini API to generate Markdown documentation for each file.


## Functionality

The script performs the following steps:

1. **Setup:** Initializes the Google Gemini API using an API key loaded from a `.env` file.  The `GEMINI_API_KEY` environment variable must be set.  It defaults to using the `gemini-1.5-flash` model.

2. **File Reading:** Iterates through the command-line arguments (excluding the script name itself).  It opens each file, reads its content, and appends it to a prompt string. The prompt is formatted to instruct the Gemini API to generate Markdown documentation.

3. **API Call:** Sends the constructed prompt to the Google Gemini API for content generation.

4. **Output:** Prints the API's response (the generated Markdown documentation) to the console.


## Usage

```bash
python ../gemtalker/readmdmakers.py file1.txt file2.py ...
```

Replace `file1.txt`, `file2.py`, etc., with the paths to the files you want to generate documentation for.


## Dependencies

* `os`
* `sys`
* `time`
* `dotenv`
* `google-generativeai`


## .env File

Create a `.env` file in the same directory as the script and add your Google Gemini API key:

```
GEMINI_API_KEY=your_api_key_here
```


## Example

If you run:

```bash
python ../gemtalker/readmdmakers.py yappie.pl JavaGenerator.pm
```

The script will:

1. Read `yappie.pl` and `JavaGenerator.pm`.
2. Create a prompt asking Gemini to generate markdown documentation for each file, including their contents.
3. Send the prompt to the Gemini API.
4. Print the generated markdown to the console.


## Error Handling

The script currently lacks explicit error handling.  Failures to load the API key, connect to the API, or read files will likely result in exceptions.  Robust error handling (e.g., `try-except` blocks) should be added for production use.


## Potential Improvements

* **Error Handling:** Implement comprehensive error handling to gracefully manage API errors, file I/O issues, and invalid input.
* **Parallel Processing:** Use multiprocessing to generate documentation for multiple files concurrently for better performance.
* **Output Handling:**  Instead of printing to the console, allow the user to specify an output file or directory.
* **Configuration:** Allow users to specify the Gemini model to use via command-line arguments or a configuration file.
* **Input Validation:** Add checks to ensure the input files exist and are accessible.


```markdown
# yappie.pl Documentation

This Perl script appears to be a parser generator that translates Perl code into Java code. It uses several Perl modules for parsing, lexical analysis, and code generation.


## Functionality

The script takes a Perl file as input and performs the following steps:

1. **Initialization:** Initializes a lexer using `Parse::Lex` to tokenize the input Perl code.
2. **Lexical Analysis:** The `lexer_sub` function reads tokens from the input file, handling whitespace and special cases like the `use strict` statement.
3. **Parsing:** Uses a `PerlParser` (not defined in this snippet) to parse the token stream.
4. **Code Generation:** A `JavaGenerator` (also not defined in this snippet) generates equivalent Java code from the parsed abstract syntax tree (AST).
5. **Output:** Writes the generated Java code to a file with a `.java` extension.
6. **Logging:** Uses a `Log` module (likely a custom logging module) to record the generated file.


## Dependencies

* `Parse::Lex`
* `Parse::Yapp`
* `PerlParser`
* `JavaGenerator`
* `Data::Dumper`
* `Log`


## Modules Used

* **`Parse::Lex`:** A Perl module for creating lexical analyzers (scanners).
* **`Parse::Yapp`:**  A parser generator that likely provides the parsing functionality.
* **`PerlParser`:** A custom Perl module (not shown) that parses the Perl code.
* **`JavaGenerator`:** A custom Perl module (not shown) that generates the Java code.
* **`Data::Dumper`:**  Used for debugging (likely to print data structures).
* **`Log`:** A custom logging module for recording events.


## Input

The script expects a single command-line argument, which is the path to the Perl file to be processed.


## Output

The script generates a Java file containing the Java equivalent of the input Perl code. The Java file name is derived from the Perl file name by removing the `.pl` extension and capitalizing the first letter.


## Error Handling

The script includes a basic error handler (`error_sub`) that checks for parsing errors.  More comprehensive error handling might be needed for production use.

```markdown
# JavaGenerator.pm Documentation

This Perl module handles the generation of Java code from a parsed Perl abstract syntax tree (AST). It manages imports, variables, subroutines, and performs semantic translation of Perl constructs into Java.


## Functionality

The module provides methods for:

* **Object Creation:** The `new` method initializes an object with information about the Perl and Java files, the parser and lexer objects, and lists to store subroutines, imports, and variables.
* **Subroutine Management:** `add_sub` adds Perl subroutines to an internal list. `is_sub` checks if a given name is a Perl subroutine (either built-in or user-defined). `closure_sub` resets the current subroutine scope.
* **Import Management:** `addImport` adds Java import statements.
* **Code Generation:** `JV_map_call` and `JV_GEN_call` translate specific Perl constructs (like `print`, `open`, `close`) into their Java equivalents.  `add_sub_code` appends generated Java code to the appropriate subroutine block.
* **Variable Management:** `addMyVar` adds Perl variables, managing their type, scope, and values in a symbol table. `ASSIGNOP` handles assignments.
* **Java Code Generation:** `generateJavaClass` generates the complete Java class code, including package, imports, global variables, and methods (based on the added subroutines and their code).


## Data Structures

The module uses several data structures:

* `$SYMTAB`: A symbol table to store information about variables.
* `$CURRENTVAR`: Holds the name of the currently processed variable.
* Internal hashes store subroutines, imports, variables, and generated Java code for each subroutine.

## Methods

* **`new(...)`:** Constructor for the JavaGenerator object.
* **`getPerlSubroutines()`:** Returns a list of built-in Perl subroutines.
* **`getSubroutines()`:** Returns a list of user-defined Perl subroutines.
* **`is_sub(...)`:** Checks if a given string is a known subroutine name.
* **`addImport(...)`:** Adds an import statement.
* **`add_sub(...)`:** Adds a subroutine to the internal list.
* **`closure_sub()`:** Resets the current subroutine scope.
* **`add_sub_code(...)`:** Adds code to the current subroutine.
* **`JV_map_call(...)`:** Translates Perl function calls to Java.
* **`JV_GEN_call(...)`:** Generates and adds Java code for function calls.
* **`addMyVar(...)`:** Adds a variable to the symbol table.
* **`ASSIGNOP(...)`:** Handles variable assignments.
* **`barestmt(...)`:** Adds a bare statement to the generated code.
* **`generateJavaClass()`:** Generates the complete Java class code.


## Dependencies

* `Log`
* `Data::Dumper`

```

