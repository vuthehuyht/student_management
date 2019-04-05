package main;

import view.DangNhapJDialog;
import view.MainJFrame;

/**
 *
 * @author TVD
 */
public class Main {
    
    public static void main(String[] args) {
//        new MainJFrame().setVisible(true);
        DangNhapJDialog dialog = new DangNhapJDialog(null, true);
        dialog.setTitle("Đăng Nhập Hệ Thống");
        dialog.setResizable(false);
        dialog.setLocationRelativeTo(null);
        dialog.setVisible(true);
    }
    
}
