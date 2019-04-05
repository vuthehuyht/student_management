package service;

import dao.TaiKhoanDAO;
import dao.TaiKhoanDAOImpl;
import model.TaiKhoan;

/**
 *
 * @author TVD
 */
public class TaiKhoanServiceImpl implements TaiKhoanService {

    private TaiKhoanDAO taiKhoanDAO = null;

    public TaiKhoanServiceImpl() {
        taiKhoanDAO = new TaiKhoanDAOImpl();
    }

    @Override
    public TaiKhoan login(String tdn, String mk) {
        return taiKhoanDAO.login(tdn, mk);
    }

}
