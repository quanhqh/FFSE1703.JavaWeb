package model;

public class Student {
	private String hoTen;
	private MonHoc monHoc;
	

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	
	public MonHoc getMonHoc() {
		return monHoc;
	}

	public void setMonHoc(MonHoc monHoc) {
		this.monHoc = monHoc;
	}

	public void mangSachDiHoc() {
		System.out.println(hoTen+monHoc.mangSachDiHoc());
	}
}
