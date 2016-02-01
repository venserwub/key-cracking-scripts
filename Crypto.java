
import java.io.InputStream;
import java.io.OutputStream;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

import java.math.BigInteger;

public class Crypto {
	public static void main(String[] args) {
		byte[] key = (new BigInteger(args[0], 2).toByteArray());
		byte[] ptext;
		byte[] ctext;
		try {
			ptext = args[1].getBytes("UTF8");
			ctext = args[2].getBytes("UTF8");
		}
		catch (Exception ex) {
		
		}

		while ( !(checkKey(key, ptext, ctext)) ) {
			key = (new BigInteger(key).add(BigInteger.valueOf(1))).toByteArray();
			System.out.printf("0x%02X", key[0]);
			System.out.println("");
		}
	}

	private static boolean checkKey (byte[] key, byte[] ptext, byte[] ctext) {
		
		//encrypt ptext
		try {
			DESKeySpec dks = new DESKeySpec(key);
			SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
			SecretKey desKey = skf.generateSecret(dks);
			Cipher cipher = Cipher.getInstance("DES");
			cipher.init(Cipher.ENCRYPT_MODE, desKey);

			if (cipher.doFinal(ptext) == ctext) {
				return true;
			}
		}
		catch (Exception ex) {
		
		}

		return false;
	}
}
