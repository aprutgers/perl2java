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

