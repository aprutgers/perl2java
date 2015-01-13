/* This code is generated from a perl module */


import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
 

public class Example {
	public static void test(int value) {
		System.out.print(value);
	} /* end of method test */

	public static void main(String args[]) throws IOException {

		String string="string";
		String integer="integer";

		System.out.print((string));
		System.out.print(integer);
		System.err.print(("stderr $integer\n"));
		System.out.print(("stdout\n"));
		System.out.print(("a string"));

		BufferedWriter  p2j_file = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("out"), "utf-8")); 
		String p2j_s="data";
		p2j_file.write(p2j_s);
		p2j_file.close();

		test((100)); /* FUNC_optexpr */
	} /* end of method main */

} /* end class Test */ 
