import java.sql.*;
import java.util.ArrayList;

public class dataBase {
    Connection connection = null;
    public dataBase (String databaseName, String databasePwd) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        this.connection = DriverManager.getConnection("jdbc:mysql://localhost/logintest?serverTimezone=JST",databaseName,databasePwd);
    }

    public void showConnect(){
        System.out.println(this.connection);
    }

    public void insert(String userName, String userPwd) throws SQLException {
        PreparedStatement prep = connection.prepareStatement("INSERT INTO webuser value (?,?)");
        prep.setString(1,userName);
        prep.setString(2,userPwd);
        prep.executeUpdate();
    }

    public void delete(String userName) throws SQLException {
        PreparedStatement prep = connection.prepareStatement("DELETE FROM webuser WHERE user=(?)");
        prep.setString(1,userName);
        prep.executeUpdate();
    }

    public userData check(String userName, String userPwd) throws SQLException {
        PreparedStatement prep = connection.prepareStatement("SELECT password FROM webuser WHERE user=?");
        prep.setString(1,userName);
        prep.executeQuery();
        ResultSet resultSet = prep.getResultSet();
        if(resultSet.next()){
            String getpassword = resultSet.getNString("password");
            if(userPwd.equals(getpassword)){
                return getUser(userName);
            }
            else
                return null;
        }
        else
            return null;
    }

    public userData getUser(String userName) throws SQLException {
        PreparedStatement prep = connection.prepareStatement("SELECT * FROM webuser WHERE user=?");
        prep.setString(1,userName);
        prep.executeQuery();
        ResultSet resultSet = prep.getResultSet();
        if(resultSet.next()){
            String getName = resultSet.getString("user");
            String getPwd = resultSet.getString("password");
            return new userData(getName,getPwd);
        }
        else {
            return null;
        }
//        return null;
    }

    public ArrayList<userData> getAllUser() throws SQLException {
        ArrayList<userData> userlist = new ArrayList<userData>();
        PreparedStatement prep = connection.prepareStatement("SELECT * FROM webuser");
        prep.executeQuery();
        ResultSet resultSet = prep.getResultSet();
        while (resultSet.next()) {
            String getName = resultSet.getString("user");
            String getPwd = resultSet.getString("password");
            userlist.add(new userData(getName,getPwd));
        }
        return userlist;
    }

    public void close() throws SQLException {
        connection.close();
    }
}

