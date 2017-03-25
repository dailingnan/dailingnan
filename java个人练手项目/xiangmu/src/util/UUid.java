package util;

import java.util.UUID;

public class UUid {
	public static String getId(){
		UUID id=UUID.randomUUID();
		String str=id.toString();
		str=str.replace("-","").toUpperCase();
		return str;
	}
}
