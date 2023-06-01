package ValorantSSP.com.br.Dao;
import ValorantSSP.com.br.Model.User;
import ValorantSSP.com.br.config.ConnectionPoolConfig;

import java.sql.*;

public class UserDao {
    public static boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USR WHERE USERNAME = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getUsername());
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("success in select username");

            while (resultSet.next()) {

                String password = resultSet.getString("password");

                if (password.equals(user.getPassword())) {

                    return true;

                }

            }

            connection.close();

            return false;

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

            return false;

        }

    }
    public void createUser(User user){
        String SQL = "INSERT INTO USR (USERNAME, PASSWORD) VALUES (?,?)";

        try{
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());

            preparedStatement.execute();

            connection.close();

        } catch (Exception e){
            System.out.println("fail in connection");
            System.out.println(e.getMessage());

        }
    }

}
