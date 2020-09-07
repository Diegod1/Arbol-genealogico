/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfazgrafica;

import javax.swing.JOptionPane;

/**
 *
 * @author Carolina Botina
 */
public class Ventana2 extends javax.swing.JFrame {

    /**
     * Creates new form Ventana2
     */
    public Ventana2() {
        initComponents();
    }
    
    String Item="";
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        consultas = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        padres_de = new javax.swing.JRadioButton();
        tios_de = new javax.swing.JRadioButton();
        primos_de = new javax.swing.JRadioButton();
        ancestros_de = new javax.swing.JRadioButton();
        btn_consultar = new javax.swing.JButton();
        integrantes = new javax.swing.JComboBox<>();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(600, 450));

        jLabel1.setText("Selecciona la opción seguido del integrante a consultar:");

        consultas.add(padres_de);
        padres_de.setText("Padres de");
        padres_de.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                padres_deActionPerformed(evt);
            }
        });

        consultas.add(tios_de);
        tios_de.setText("Tios de");

        consultas.add(primos_de);
        primos_de.setText("Primos de");

        consultas.add(ancestros_de);
        ancestros_de.setText("Ancestros de");

        btn_consultar.setText("Consultar");
        btn_consultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_consultarActionPerformed(evt);
            }
        });

        integrantes.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "florelia", "marina", "nelly", "diego", "aida", "johana", "carlos", "fredy", "flor", "max", "stiven", "aimet", "javier", "andres", "didimo", "juan_jose", "stella", "juis_jr", "diana", "hernan", "danilo", "yuli", "janeth", "german", "mauricio", "sigifredo", "sebastian", "carol", "mario", "aracelly", "flor", "abraham", "luis_galves", "ester", "fidelia", "adam", "maria", "reinaldo", "fidelina_pumalpa", "rafael", "carlina", "alvaro", "fidelina", "tatarabuelo_david", "tatarabuela_david", "tatarabuelo_cordoba", "tatarabuela_cordoba", "tatarabuelo_villota", "tatarabuela_villota", "tatarabuelo_rosero", "tatarabuela_rosero", "tatarabuelo_pumalpa", "tatarabuela_pumalpa", "tatarabuelo_galves", "tatarabuela_galves", "tatarabuelo_munoz", "tatarabuela_munoz", "tatarabuelo_rosero2", "tatarabuela_rosero2" }));
        integrantes.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                integrantesItemStateChanged(evt);
            }
        });
        integrantes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                integrantesActionPerformed(evt);
            }
        });

        jLabel2.setText("jLabel2");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(ancestros_de)
                            .addComponent(jLabel1))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(primos_de)
                            .addComponent(tios_de)
                            .addComponent(padres_de))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 161, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(32, 32, 32))))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(95, Short.MAX_VALUE)
                .addComponent(integrantes, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(45, 45, 45)
                .addComponent(btn_consultar)
                .addGap(42, 42, 42))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(jLabel1)
                .addGap(36, 36, 36)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(padres_de)
                        .addGap(26, 26, 26)
                        .addComponent(tios_de)
                        .addGap(18, 18, 18)
                        .addComponent(primos_de))
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addComponent(ancestros_de)
                .addGap(9, 9, 9)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(integrantes, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_consultar))
                .addContainerGap(23, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void padres_deActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_padres_deActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_padres_deActionPerformed

    private void integrantesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_integrantesActionPerformed
        // TODO add your handling code here:
 
    }//GEN-LAST:event_integrantesActionPerformed

    private void integrantesItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_integrantesItemStateChanged
        // TODO add your handling code here:
        
        
    }//GEN-LAST:event_integrantesItemStateChanged

    private void btn_consultarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_consultarActionPerformed
        Item = integrantes.getSelectedItem().toString();
        JOptionPane.showMessageDialog(null,"El item es:"+Item);
        
    }//GEN-LAST:event_btn_consultarActionPerformed

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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Ventana2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Ventana2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Ventana2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Ventana2.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Ventana2().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton ancestros_de;
    private javax.swing.JButton btn_consultar;
    private javax.swing.ButtonGroup consultas;
    private javax.swing.JComboBox<String> integrantes;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JRadioButton padres_de;
    private javax.swing.JRadioButton primos_de;
    private javax.swing.JRadioButton tios_de;
    // End of variables declaration//GEN-END:variables
}
