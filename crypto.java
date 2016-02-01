package BIT430;

import java.io.InputStream;
import java.io.OutputStream;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class Crypto {
	public static void main(String[] args) {
		Byte[] key = args[0];
		String ptext = args[1];
		String ctext = args[2];

		while ( checkKey(key, ptext, ctext) ) {
			
		}
	}

	private static boolean checkKey (Byte[] key, String ptext, String ctext) {
		
		//encrypt ptext
		DESKeySpec dks = new DESKeySPec(key);
		SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
		SecretKey desKey = skf.generateSecret("DES");

		
		//check against ctext
		
	}
}
