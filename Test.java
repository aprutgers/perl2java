/* This code is generated from a perl module */
import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.nio.charset.Charset;
import java.util.*;
import static perl.cpan.DataDumper.Dumper;
import static perl.internals.DigestMD5.md5_hex;
public class Test {
	private static void perl_module() throws IOException,FileNotFoundException{
	} /* end of method perl_module */

	public static void test(List<String> p2j_args) {
		String value  = p2j_args.listIterator().next();;
		System.out.print(value);
	} /* end of method test */

	public static void main(String ARGV[]) throws IOException,FileNotFoundException{
		perl_module();
		String string   = "Hello world\n";
		String integer  = "1";
		System.out.print(string);
		System.out.print(Dumper(integer));
		md5_hex((Arrays.asList("test"))); /* FUNC_optexpr */
		System.err.print("stderr "+integer+"");
		System.out.print("stdout\n");
		System.out.print("a string");
		BufferedWriter  p2j_file = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("out"), "US-ASCII"));
		p2j_file.write("data");
		p2j_file.close();
		test((Arrays.asList("100"))); /* FUNC_optexpr */
	} /* end of method main */

} /* end class Test */ 
