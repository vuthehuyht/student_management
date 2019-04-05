package dao;

import model.HocVien;
import java.util.List;

/**
 *
 * @author TVD
 */
public interface HocVienDAO {

    public List<HocVien> getList();

    public int createOrUpdate(HocVien hocVien);

}
