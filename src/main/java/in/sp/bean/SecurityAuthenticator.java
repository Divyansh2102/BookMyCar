package in.sp.bean;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;

public class SecurityAuthenticator {
    
    public static String generateSalt()
    {
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);
        return Base64.getEncoder().encodeToString(salt);
    }
    public static String hashPassword(String password, String salt) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(salt.getBytes());
        byte[] hashedBytes = md.digest(password.getBytes());
        return Base64.getEncoder().encodeToString(hashedBytes);
    }
    public static boolean verifyPassword(String providePassword, String storedHash, String salt) throws NoSuchAlgorithmException{
        String hashedProvidePassword = hashPassword(providePassword,salt);
        return hashedProvidePassword.equals(storedHash);
    }
}