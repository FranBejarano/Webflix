/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package back_end;

import java.sql.Connection;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * @author Francisco Jose Bejarano Escano
 * EC1825088
 * @date 16/03/2022
 * @location Edinburgh
 * @version 1.0
 */
public class ConnectMySQLTest {
    
    ConnectMySQL database = new ConnectMySQL();
    Connection connection;
    
    /**
     * Constructor
     */
    public ConnectMySQLTest() {
    }
    
    /**
     * Code that has to be executed before running the test
     */
    @Before
    public void setUp() {
        
        // Connect with the database before the test
        database.ConnectDatabase();
        connection = database.getConnection("jdbc:mysql://localhost:3307/test", 
                "root","usbw");
    }
    
    /**
     * Code that has to be executed after running the test
     * @throws Exception 
     */
    @After
    public void tearDown() throws Exception {
            
        // Disconnect from the database after the test
        database.DisconnectDatabase();
    }

    /**
     * Test connection to MySQL using startSession method, of class Login.
     * @throws java.lang.Exception
     */
    @Test
    public void testStartSession() throws Exception {
        
        System.out.println("** Start test StartSession() **");

        connection.prepareStatement("insert into administrator (`firstname`, "
                + "`surname`, `username`, `password`)"
                + "values ('dummyName', 'dummySurname', 'dummyUsername', "
                + "'dummyPassword')").execute();
        
        boolean test = connection.prepareStatement("select * from administrator "
                + "where firstname = 'dummyName'").executeQuery().next();
        
        System.out.println("Expected result: true\n" + "Current result:" +test);

        assertTrue(connection.prepareStatement("select * from administrator "
                + "where firstname = 'dummyName'").executeQuery().next());
        
        connection.prepareStatement("delete from administrator where firstname = "
                + "'dummyName'").execute();
        
        assertFalse(connection.prepareStatement("select * from administrator "
                + "where firstname = 'dummyName'").executeQuery().next());
        
        System.out.println("** End test StartSession() **");
    }
    
}

