/*
 * Login class holds the UI of the Login Panel.
 * The main method is startSession() with which the data entered by the user is 
 * compared with that stored in the database, in addition to facilitating access 
 * to the database if the data is correct.
 */
package back_end;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;
import java.sql.SQLException;
import javax.swing.ImageIcon;

/**
 * @author Francisco Jose Bejarano Escano
 * EC1825088
 * @date 16/03/2022
 * @location Edinburgh
 * @version 1.0
 */

public class Login extends javax.swing.JFrame {

    /**
     * Creates new form Login
     */
    public Login() {
        initComponents();
    } // End of Login constructor


    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        lbLoginTitle = new javax.swing.JLabel();
        lbUsername = new javax.swing.JLabel();
        lbPassword = new javax.swing.JLabel();
        txtUsername = new javax.swing.JTextField();
        txtPassword = new javax.swing.JPasswordField();
        btnAccess = new javax.swing.JButton();
        btnExit = new javax.swing.JButton();
        btnForgot = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Webflix - Login");
        setIconImage(new ImageIcon(getClass().getResource("/images/favicon.png")).getImage());
        setLocation(new java.awt.Point(0, 0));

        jPanel1.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        lbLoginTitle.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lbLoginTitle.setText("Login");

        lbUsername.setText("Username:");

        lbPassword.setText("Password:");

        txtPassword.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtPasswordKeyReleased(evt);
            }
        });

        btnAccess.setText("Access");
        btnAccess.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAccessActionPerformed(evt);
            }
        });

        btnExit.setText("Exit");
        btnExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnExitActionPerformed(evt);
            }
        });

        btnForgot.setForeground(new java.awt.Color(0, 0, 255));
        btnForgot.setText("Forgot Password?");
        btnForgot.setBorderPainted(false);
        btnForgot.setContentAreaFilled(false);
        btnForgot.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnForgot.setOpaque(false);
        btnForgot.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnForgotActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnAccess)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnExit))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbPassword)
                            .addComponent(lbUsername))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(txtPassword, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 162, Short.MAX_VALUE)
                            .addComponent(btnForgot)
                            .addComponent(txtUsername)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                                .addGap(11, 11, 11)
                                .addComponent(lbLoginTitle)))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lbLoginTitle)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtUsername, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbUsername))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtPassword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbPassword))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnForgot)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnExit)
                    .addComponent(btnAccess))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    /**
     * Event of the button "Access" of the Login Panel
     * Trigger the startSession() method to login in the app
     * @param evt 
     */
    private void btnAccessActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAccessActionPerformed
        // TODO add your handling code here:
        startSession();
    }//GEN-LAST:event_btnAccessActionPerformed

    /**
     * Event of the button "Exit" of the Login Panel
     * @param evt 
     */
    private void btnExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnExitActionPerformed
        // TODO add your handling code here:
        // Display a warning panel
        int exitBtn = JOptionPane.showConfirmDialog(null, "Are you sure?", "WARNING", 
                JOptionPane.YES_NO_OPTION);
          
        // Exit the app with the chosen option
        if(exitBtn == JOptionPane.YES_OPTION) {
            
            System.exit(0);
        } 

    }//GEN-LAST:event_btnExitActionPerformed

    /**
     * Event when pressing and realising the Enter Key
     * Trigger the startSession() method to login in the app
     * @param evt 
     */
    private void txtPasswordKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPasswordKeyReleased
        // TODO add your handling code here:
        if(evt.getKeyCode() == KeyEvent.VK_ENTER) {
                    
            startSession();
            txtPassword.transferFocus();
        }

    }//GEN-LAST:event_txtPasswordKeyReleased

    private void btnForgotActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnForgotActionPerformed
        // TODO add your handling code here:
        setEnabled(false); // The login panel dissappear
        ForgotPassword forgot = new ForgotPassword(); // A new instance of the Menu Panel
        forgot.setVisible(true); // The Menu Panel is visible
        setEnabled(true);
        
    }//GEN-LAST:event_btnForgotActionPerformed

    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        
        
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(() -> {
            new Login().setVisible(true);
        });
        
    }
    
    /**
     * When this method is triggered, it connects with the database,
     * passing the information get from the textfields of the Login Panel
     */
    public void startSession() {
            
        try {
            
            // Instance of the ConnectMySQL class
            ConnectMySQL Con = new ConnectMySQL();
            // Get the text from a textfield of the UI
            String u = txtUsername.getText();
            String p = txtPassword.getText();
            // Connects with the database
            Con.ConnectDatabase();
            
            // Send a query to the database to retrieve information
            String SQL = "SELECT * FROM administrator WHERE username = '" +u +"'"
                    + "AND password = '" +p +"'";
            
            // Executes the given SQL statement, which returns a single ResultSet object
            Con.result = Con.statement.executeQuery(SQL);
            
            // If the query finds a row with the given information from the textfields
            if(Con.result.next()) {
                
                setVisible(false); // The login panel dissappear
                Menu menu = new Menu(); // A new instance of the Menu Panel
                menu.setVisible(true); // The Menu Panel is visible
                /* Set the text of a label with the first name
                   of the user that has logged in */
                menu.getLblWelcome().setText("Hello " +Con.result.getString("firstname"));

                menu.setAdminID(Con.result.getString("adminID"));
                menu.getLblLoggedUser().setText(Con.result.getString("firstname") 
                        +" " +Con.result.getString("surname"));
            }
            else if(u.equals(genericUsername) && p.equals(genericPassword)) {
                
                setVisible(false); // The login panel dissappear
                Menu menu = new Menu(); // A new instance of the Menu Panel
                menu.setVisible(true); // The Menu Panel is visible
                // Set the text of a label with the first name and surname
                // of the user that has logged in
                menu.getLblWelcome().setText(genericUsername);
            }
            else {
                
                JOptionPane.showMessageDialog(null, "Invalid Username or Password");
            }
        }
        catch(SQLException ex) {
            
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAccess;
    private javax.swing.JButton btnExit;
    private javax.swing.JButton btnForgot;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lbLoginTitle;
    private javax.swing.JLabel lbPassword;
    private javax.swing.JLabel lbUsername;
    private javax.swing.JPasswordField txtPassword;
    private javax.swing.JTextField txtUsername;
    // End of variables declaration//GEN-END:variables
    private String genericUsername = "admin";
    private String genericPassword = "123";   
    
}
