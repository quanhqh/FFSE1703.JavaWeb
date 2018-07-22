package sinhvien.service;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class PhanTrang {
	private int soTrang, soSinhVien, soCotMotTrang, trangHienTai;

	public int getSoTrang() {
		return soTrang;
	}

	public void setSoTrang(int soTrang) {
		this.soTrang = soTrang;
	}

	public int getSoSinhVien() {
		return soSinhVien;
	}

	public void setSoSinhVien(int soSinhVien) {
		this.soSinhVien = soSinhVien;
	}

	public int getSoCotMotTang() {
		return soCotMotTrang;
	}

	public void setSoCotMotTang(int soCotMotTang) {
		this.soCotMotTrang = soCotMotTang;
	}

	public int getTrangHienTai() {
		return trangHienTai;
	}

	public void setTrangHienTai(int trangHienTai) {
		this.trangHienTai = trangHienTai;
	}
	
}
