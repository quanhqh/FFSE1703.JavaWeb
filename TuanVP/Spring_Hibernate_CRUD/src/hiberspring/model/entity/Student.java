package hiberspring.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "sinhvien_spring")
public class Student {
	
	@Id
	@Column(name = "MaSV", nullable = false)
	@NotEmpty
	private String maSV;

	@Column(name = "TenSV", nullable = false)
	@NotEmpty
	private String tenSV;

	@Column(name = "NamSinh", nullable = false)
	@NotEmpty
	@Min(value = 1990)
	@Max(value = 2000)
	private String namSinh;

	@Column(name = "Email", nullable = false)
	@NotEmpty
	@Email
	private String email;

	@Column(name = "DiaChi", nullable = false)
	@NotEmpty
	private String diaChi;

	@Column(name = "LopHoc", nullable = false)
	@NotEmpty
	private String lopHoc;

	@Column(name = "Avatar")
	private String avatar;

	public Student() {
		super();
	}

	public Student(String maSV, String tenSV, String namSinh, String email, String diaChi, String lopHoc,
			String avatar) {
		super();
		this.maSV = maSV;
		this.tenSV = tenSV;
		this.namSinh = namSinh;
		this.email = email;
		this.diaChi = diaChi;
		this.lopHoc = lopHoc;
		this.avatar = avatar;
	}

	public Student(String tenSV, String namSinh, String email, String diaChi, String lopHoc, String avatar) {
		super();
		this.tenSV = tenSV;
		this.namSinh = namSinh;
		this.email = email;
		this.diaChi = diaChi;
		this.lopHoc = lopHoc;
		this.avatar = avatar;
	}

	public String getMaSV() {
		return maSV;
	}

	public void setMaSV(String maSV) {
		this.maSV = maSV;
	}

	public String getTenSV() {
		return tenSV;
	}

	public void setTenSV(String tenSV) {
		this.tenSV = tenSV;
	}

	public String getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(String namSinh) {
		this.namSinh = namSinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getLopHoc() {
		return lopHoc;
	}

	public void setLopHoc(String lopHoc) {
		this.lopHoc = lopHoc;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

}
