package jspServlet.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 连接数据库获得连接
 *
 *
 * @author Zeyang Sun
 */
public class DBConnect {
    private final String DATABASEDRIVER="com.mysql.cj.jdbc.Driver";
    private final String DBURL="jdbc:mysql://localhost:3306/ManagementSystem" +
            "?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=UTC" +
            "&rewriteBatchedStatements=true&allowPublicKeyRetrieval=True";
    private final String USER="root";
    private final String PASSWORD="12345678";

    Connection con=null;

    /**
     * 启动jdbc驱动
     * @author Zeyang Sun
     */
    public DBConnect(){

        try {
            Class.forName(DATABASEDRIVER);
            this.con= (Connection) DriverManager.getConnection(DBURL, USER,PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 获得连接connection
     * @return connection
     * @author Zeyang Sun
     */
    public Connection getConnection(){
        return this.con;
    }

    /**
     * 关闭连接
     * @author Zeyang Sun
     */
    public void close(){
        try {
            this.con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
