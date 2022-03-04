package com.example.forummanager.Util;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 * druid连接池的工具类
 */
public class druidUtils {
    //1，定义成员变量 DataSource
    private static DataSource ds;

    static {
        Properties properties = new Properties();
        URL resource = druidUtils.class.getClassLoader().getResource("druid.properties");
        String path = resource.getPath();
        try {
            properties.load(new FileReader("D:\\前端\\论坛管理系统\\src\\main\\resources\\druid.properties"));
            ds = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 获取连接对象
     */

    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }

    public static void close(Statement statement,Connection connection){
        close(statement,connection,null);
    }

    public static void close(Statement statement, Connection connection, ResultSet resultSet ){
        if(statement!=null){
            try {
                statement.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

        if(connection!=null){
            try {
                connection.close();     //归还连接
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

        if(resultSet!=null){
            try {
                resultSet.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    /**
     * 获取连接池对象
     */
    public static DataSource getDataSource(){
        return ds;
    }
}
