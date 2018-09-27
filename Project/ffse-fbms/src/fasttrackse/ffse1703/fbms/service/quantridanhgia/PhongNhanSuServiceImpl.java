package fasttrackse.ffse1703.fbms.service.quantridanhgia;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1703.fbms.dao.quantridanhgia.PhongNhanSuDAOImpl;
import fasttrackse.ffse1703.fbms.entity.quantridanhgia.DanhGiaBanThan;
import fasttrackse.ffse1703.fbms.entity.quantridanhgia.DanhGiaNhanVien;
import fasttrackse.ffse1703.fbms.entity.quantridanhgia.KyDanhGia;
import fasttrackse.ffse1703.fbms.entity.quantridanhgia.LichDanhGia;

@Service
public class PhongNhanSuServiceImpl implements PhongNhanSuService {

	@Autowired
	public PhongNhanSuDAOImpl dao;

	@Transactional
	@Override
	public List<KyDanhGia> getListKyDanhGia() {
		return this.dao.getListKyDanhGia();
	}

	@Transactional
	@Override
	public List<KyDanhGia> getListKyDanhGia(int start, int maxItems) {
		return this.dao.getListKyDanhGia(start, maxItems);
	}

	@Transactional
	@Override
	public void insertKyDanhGia(KyDanhGia kyDanhGia) {
		this.dao.insertKyDanhGia(kyDanhGia);
	}

	@Transactional
	@Override
	public void updateKyDanhGia(KyDanhGia kyDanhGia) {
		this.dao.updateKyDanhGia(kyDanhGia);
	}

	@Transactional
	@Override
	public KyDanhGia getKyDanhGia(int maKy) {
		return this.dao.getKyDanhGia(maKy);
	}

	@Transactional
	@Override
	public void deleteKyDanhGia(KyDanhGia kyDanhGia) {
		this.dao.deleteKyDanhGia(kyDanhGia);
	}

	@Transactional
	@Override
	public List<Integer> getNhanVienPhongBan(String phongBan) {
		return this.dao.getNhanVienPhongBan(phongBan);
	}

	@Transactional
	@Override
	public List<LichDanhGia> getListLichDanhGia(int start, int maxItems) {
		return this.dao.getListLichDanhGia(start, maxItems);
	}

	@Transactional
	@Override
	public int checkLichDanhGia(LichDanhGia lichDanhGia) {
		return this.dao.checkLichDanhGia(lichDanhGia);
	}

	@Transactional
	@Override
	public void insertLichDanhGia(LichDanhGia lichDanhGia) {
		this.dao.insertLichDanhGia(lichDanhGia);
	}

	@Transactional
	@Override
	public LichDanhGia getLichDanhGia(int id) {
		return this.dao.getLichDanhGia(id);
	}

	@Transactional
	@Override
	public void activeLichDanhGia(LichDanhGia lichDanhGia) {
		this.dao.activeLichDanhGia(lichDanhGia);
	}

	@Transactional
	@Override
	public void insertPhanCongDanhGia(List<DanhGiaNhanVien> pc) {
		this.dao.insertPhanCongDanhGia(pc);
	}

	@Transactional
	@Override
	public List<DanhGiaBanThan> getListDanhGiaBanThan(int start, int maxItems) {
		return this.dao.getListDanhGiaBanThan(start, maxItems);
	}

	@Transactional
	@Override
	public int checkActiveLichDanhGia() {
		return this.dao.checkActiveLichDanhGia();
	}

	@Transactional
	@Override
	public int checkCompleteLichDanhGia() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Transactional
	@Override
	public List<DanhGiaBanThan> getListDanhGiaBanThan() {
		return dao.getListDanhGiaBanThan();
	}

	@Transactional
	@Override
	public List<LichDanhGia> getListLichDanhGia() {
		return dao.getListLichDanhGia();
	}
}
