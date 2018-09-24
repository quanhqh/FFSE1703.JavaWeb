package fasttrackse.ffse1703.fbms.service.quantrinhansupikalong;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.quantrinhansupikalong.HoSoNhanVienPikalong;
import fasttrackse.ffse1703.fbms.entity.security.HoSoNhanVien;


public interface HoSoNhanVienPikalongService {
	public List<HoSoNhanVienPikalong> listNhanVien();
	public void delete(int maNv);
	public void insert(HoSoNhanVienPikalong hoSoNhanVien);
	public String getId();
	public HoSoNhanVienPikalong getHoSoNhanVienById (int maNv);
	public HoSoNhanVienPikalong getEdit(int maNv);
	public void update(HoSoNhanVienPikalong hoSoNhanVienPikalong);
	
}
