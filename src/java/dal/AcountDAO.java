/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Admin
 */
public class AcountDAO extends DBContext {

    public List<Account> getAllAccount() {
        String sql = "SELECT uID,user,pass,isSell,isAdmin,active FROM Account where isAdmin != 1";
        List<Account> list = new ArrayList<>();
        try (PreparedStatement stm = connection.prepareStatement(sql); ResultSet rs = stm.executeQuery();) {
            while (rs.next()) {
                Account account = new Account();
                account.setUid(rs.getInt(1));
                account.setUser(rs.getString(2));
                account.setPass(rs.getString(3));
                account.setIsSell(rs.getInt(4));
                account.setIsAdmin(rs.getInt(5));
                account.setActive(rs.getBoolean(6));
                list.add(account);
            }
        } catch (Exception ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "SELECT * FROM Account where [user] = ? and pass = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, user);
            stm.setString(2, pass);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Account a = new Account();
                    a.setUid(rs.getInt(1));
                    a.setUser(rs.getString(2));
                    a.setPass(rs.getString(3));
                    a.setIsSell(rs.getInt(4));
                    a.setIsAdmin(rs.getInt(5));
                    a.setActive(rs.getBoolean(6));
                    return a;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExistByUserPass(String user, String pass) {
        String sql = "SELECT * FROM Account where [user] = ? and [pass] = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, user);
            stm.setString(2, pass);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Account a = new Account();
                    a.setUid(rs.getInt(1));
                    a.setUser(rs.getString(2));
                    a.setPass(rs.getString(3));
                    a.setIsSell(rs.getInt(4));
                    a.setIsAdmin(rs.getInt(5));
                    a.setActive(rs.getBoolean(6));
                    return a;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String sql = "SELECT * FROM Account where [user] = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, user);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Account a = new Account();
                    a.setUid(rs.getInt(1));
                    a.setUser(rs.getString(2));
                    a.setPass(rs.getString(3));
                    a.setIsSell(rs.getInt(4));
                    a.setIsAdmin(rs.getInt(5));
                    a.setActive(rs.getBoolean(6));
                    return a;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(String user, String pass) {
        String sql = "INSERT INTO [Account]\n"
                + "           ([user]\n"
                + "           ,[pass]\n"
                + "           ,[isSell]\n"
                + "           ,[isAdmin]\n"
                + "           ,[active])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,0\n"
                + "           ,0\n"
                + "           ,1)";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccountById(int accountId) {
        String sql = "select *  from Account where uID = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setInt(1, accountId);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    Account account = new Account();
                    account.setUid(rs.getInt(1));
                    account.setUser(rs.getString(2));
                    account.setPass(rs.getString(3));
                    account.setIsSell(rs.getInt(4));
                    account.setIsAdmin(rs.getInt(5));
                    account.setActive(rs.getBoolean(6));
                    return account;
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateAccount(Account account) {
        String sql = "UPDATE [Account]\n"
                + "   SET [active] = ?\n"
                + " WHERE uId = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setBoolean(1, account.isActive());
            stm.setInt(2, account.getUid());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void UpDatePassWord(String pass, String user) {
        String sql = "UPDATE [Account]\n"
                + "   SET [pass] = ?\n"
                + " WHERE [user] = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql);) {
            stm.setString(1, pass);
            stm.setString(2, user);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Phương thức tính tổng của các số nguyên tố trong một mảng
    public int sumOfPrimes(int[] numbers) {
        return Arrays.stream(numbers)
                .filter(this::isPrime)
                .sum();
    }

    // Phương thức kiểm tra số nguyên tố 
    public boolean isPrime(int number) {
        if (number <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }

    // Phương thức tìm số lớn thứ hai trong mảng
    public int secondLargest(int[] numbers) {
        if (numbers.length < 2) {
            throw new IllegalArgumentException("Array must contain at least two elements");
        }
        int first = Integer.MIN_VALUE, second = Integer.MIN_VALUE;
        for (int number : numbers) {
            if (number > first) {
                second = first;
                first = number;
            } else if (number > second && number != first) {
                second = number;
            }
        }
        return second;
    }

    // Phương thức tính số Fibonacci thứ n
    public int fibonacci(int n) {
        if (n < 0) {
            throw new IllegalArgumentException("Index cannot be negative");
        }
        if (n == 0 || n == 1) {
            return n;
        }
        int a = 0, b = 1;
        for (int i = 2; i <= n; i++) {
            int temp = b;
            b = a + b;
            a = temp;
        }
        return b;
    }

    // Phương thức tìm giá trị lớn nhất của dãy con liên tiếp có tổng lớn nhất
    public int maxSubArraySum(int[] numbers) {
        int maxSoFar = Integer.MIN_VALUE, maxEndingHere = 0;
        for (int number : numbers) {
            maxEndingHere = maxEndingHere + number;
            if (maxSoFar < maxEndingHere) {
                maxSoFar = maxEndingHere;
            }
            if (maxEndingHere < 0) {
                maxEndingHere = 0;
            }
        }
        return maxSoFar;
    }

    // Phương thức tìm phần tử khác biệt duy nhất trong mảng mà các phần tử khác xuất hiện đúng hai lần
    public int singleNumber(int[] numbers) {
        int result = 0;
        for (int number : numbers) {
            result ^= number;
        }
        return result;
    }

    // Phương thức kiểm tra xem chuỗi có phải là chuỗi đối xứng (palindrome) hay không
    public boolean isPalindrome(String s) {
        String cleaned = s.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
        return cleaned.equals(new StringBuilder(cleaned).reverse().toString());
    }

    // Phương thức tìm phần tử xuất hiện nhiều nhất trong mảng
    public int mostFrequentElement(int[] numbers) {
        if (numbers.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty");
        }
        Arrays.sort(numbers);
        int mostFrequent = numbers[0], current = numbers[0], maxCount = 1, currentCount = 1;
        for (int i = 1; i < numbers.length; i++) {
            if (numbers[i] == current) {
                currentCount++;
            } else {
                if (currentCount > maxCount) {
                    maxCount = currentCount;
                    mostFrequent = current;
                }
                current = numbers[i];
                currentCount = 1;
            }
        }
        if (currentCount > maxCount) {
            mostFrequent = current;
        }
        return mostFrequent;
    }

    // Phương thức tìm chiều dài dãy con tăng liên tiếp dài nhất trong mảng
    public int longestIncreasingSubsequence(int[] numbers) {
        if (numbers.length == 0) {
            return 0;
        }
        int[] lis = new int[numbers.length];
        Arrays.fill(lis, 1);
        for (int i = 1; i < numbers.length; i++) {
            for (int j = 0; j < i; j++) {
                if (numbers[i] > numbers[j] && lis[i] < lis[j] + 1) {
                    lis[i] = lis[j] + 1;
                }
            }
        }
        return Arrays.stream(lis).max().orElse(1);
    }

    // Phương thức tính giá trị trung bình của các số nguyên trong mảng
    public double average(int[] numbers) {
        if (numbers.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty");
        }
        int sum = Arrays.stream(numbers).sum();
        return (double) sum / numbers.length;
    }
}
