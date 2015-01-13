package perl.cpan;

import java.lang.reflect.Field;

public class DataDumper {

	public static String Dumper(Object object) {
        	Field[] fields = object.getClass().getDeclaredFields();
        	StringBuilder sb = new StringBuilder();
        	sb.append(object.getClass().getSimpleName()).append('{');

		if (object.getClass().getSimpleName().equals("String")) {
			sb.append("data="+object+" ");
		}
        	boolean firstRound = true;
        	for (Field field : fields) {
            	if (!firstRound) {
                	sb.append(", ");
            	}
            	firstRound = false;
            	field.setAccessible(true);
            	try {
                	   final Object fieldObj = field.get(object);
                	   final String value;
                	   if (null == fieldObj) {
                    	      value = "null";
                	    } else {
                    	       value = fieldObj.toString();
                	    }
                	    sb.append(field.getName()).append('=').append('\'').append(value).append('\'');
            	} catch (IllegalAccessException ignore) {
                	//this should never happen
            	}
	
        	}
	
        	sb.append('}');
        	return sb.toString();
    	}
}
