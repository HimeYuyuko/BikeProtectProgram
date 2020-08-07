package needs;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA3Hash {
	public static String getSHA3Hash(String input) {
		String hashString = "";
		
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("SHA3-256");
			messageDigest.update(input.getBytes(), 0, input.length());
			hashString = new BigInteger(1, messageDigest.digest()).toString(16);
		}
		catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return hashString;
	}
}
