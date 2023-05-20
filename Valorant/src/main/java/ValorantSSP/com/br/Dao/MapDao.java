package ValorantSSP.com.br.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import ValorantSSP.com.br.Model.Map;

public class MapDao {

    public void createMap(Map map){

        String SQL = "INSERT INTO MAP (NAME, DESCRIPTION, BOMBSITES, COORDINATES, COUNTRY, PECULIARITY, RELEASE_DATE, SEASON, ACT, ROTATION) VALUES (?,?,?,?,?,?,?,?,?,?)";

        try {

            System.out.println("1success in connection");
            Connection connection = DriverManager.getConnection(
                    "jdbc:h2:~/test",
                    "sa",
                    "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, map.getName());
            preparedStatement.setString(2, map.getDescription());
            preparedStatement.setInt(3, map.getBombsites());
            preparedStatement.setString(4, map.getCoordinates());
            preparedStatement.setString(5, map.getCountry());
            preparedStatement.setString(6, map.getPeculiarity());
            preparedStatement.setString(7,  map.getReleaseDate());
            preparedStatement.setInt(8, map.getSeason());
            preparedStatement.setInt(9, map.getAct());
            preparedStatement.setBoolean(10, map.isRotation());


            preparedStatement.execute();

            connection.close();

        } catch (Exception e){

            System.out.println("1fail in connection");
        }
    }
    public List<Map> findAllMaps(){
        String SQL = "SELECT * FROM MAP";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("2success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Map> maps = new ArrayList<>();

            while (resultSet.next()) {

                String mapId = resultSet.getString("id");
                String mapName = resultSet.getString("name");
                String mapDescription = resultSet.getString("description");

                int mapBombsites = resultSet.getInt("bombsites");
                String mapCoordinates = resultSet.getString("coordinates");
                String mapCountry = resultSet.getString("country");
                String mapPeculiarity = resultSet.getString("peculiarity");
                String mapDate = resultSet.getString("release_date");
                int mapSeason = resultSet.getInt("season");
                int mapAct = resultSet.getInt("act");
                boolean mapRotation = resultSet.getBoolean("rotation");

                Map map = new Map();
                map.setName(mapName);
                map.setId(mapId);
                map.setDescription(mapDescription);
                map.setBombsites(mapBombsites);
                map.setCoordinates(mapCoordinates);
                map.setCountry(mapCountry);
                map.setPeculiarity(mapPeculiarity);
                map.setReleaseDate(mapDate);
                map.setSeason(mapSeason);
                map.setAct(mapAct);
                map.setRotation(mapRotation);

                maps.add(map);


            }

            System.out.println("2success in select * map");

            connection.close();

            return maps;

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println(e.getMessage());


            return Collections.emptyList();

        }
    }
    public void deleteMapById(String mapId) {
        String SQL = "DELETE MAP WHERE ID = ?";

        try {

            System.out.println("success in connection");
            Connection connection = DriverManager.getConnection(
                    "jdbc:h2:~/test",
                    "sa",
                    "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, mapId);
            ;
            preparedStatement.execute();

            System.out.println("success on delete map with id: " + mapId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

//    public void updateMap(Map map){
//        String SQL = "UPDATE "
//    }
}
