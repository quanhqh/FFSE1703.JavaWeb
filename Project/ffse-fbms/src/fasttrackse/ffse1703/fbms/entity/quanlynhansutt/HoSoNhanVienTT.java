package fasttrackse.ffse1703.fbms.entity.quanlynhansutt;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import fasttrackse.ffse1703.fbms.entity.security.ChucDanh;
import fasttrackse.ffse1703.fbms.entity.security.PhongBan;

@Entity
@Table(name = "ho_so_nhan_vien_tt")
public class HoSoNhanVienTT implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_nhan_vien", unique = true, nullable = false)
	private int maNhanVien;

	@Column(name = "ten_nhan_vien", nullable = false, length = 100)
	@NotEmpty
	private String tenNhanVien;

	@Column(name = "anh_dai_dien", nullable = false, length = 100)
	private String anhDaiDien;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "nam_sinh")
	@NotNull
	private Date namSinh;

	@Column(name = "gioi_tinh", nullable = false)
	@NotNull
	private Integer gioiTinh;

	@Column(name = "dia_chi", nullable = false, length = 250)
	@NotEmpty
	private String diaChi;

	// bi-directional many-to-one association to XaPhuong
	@ManyToOne
	@JoinColumn(name = "phuong", nullable = false)
	@NotNull
	private XaPhuongTT phuong;

	// bi-directional many-to-one association to QuanHuyen
	@ManyToOne
	@JoinColumn(name = "quan", nullable = false)
	@NotNull
	private QuanHuyenTT quan;

	// bi-directional many-to-one association to TinhThanhPho
	@ManyToOne
	@JoinColumn(name = "thanh_pho", nullable = false)
	@NotNull
	private TinhThanhPhoTT thanhPho;

	@Column(name = "so_dien_thoai", nullable = false, length = 11)
	@Size(min = 10, max = 11)
	private String soDienThoai;

	@Column(nullable = false, length = 50)
	@NotEmpty
	@Email
	private String email;

	// bi-directional many-to-one association to TinhTrangHonNhan
	@ManyToOne
	@JoinColumn(name = "ma_tinh_trang_hon_nhan", nullable = false)
	private TinhTrangHonNhanTT tinhTrangHonNhan;

	// bi-directional many-to-one association to QuocTich
	@ManyToOne
	@JoinColumn(name = "ma_quoc_tich", nullable = false)
	private QuocTichTT quocTich;

	// bi-directional many-to-one association to DanToc
	@ManyToOne
	@JoinColumn(name = "ma_dan_toc", nullable = false)
	private DanTocTT danToc;

	@Column(name = "so_cmnd", nullable = false, length = 9)
	@Size(min = 9, max = 9)
	private String soCmnd;

	@Column(name = "noi_cap", nullable = false, length = 50)
	@NotEmpty
	private String noiCap;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "ngay_cap", nullable = false)
	private Date ngayCap;

	// bi-directional many-to-one association to PhongBan
	@ManyToOne
	@JoinColumn(name = "ma_phong_ban", nullable = false)

	private PhongBan phongBan;

	// bi-directional many-to-one association to ChucDanh
	@ManyToOne
	@JoinColumn(name = "ma_chuc_danh", nullable = false)
	private ChucDanh chucDanh;

	@Column(name = "trang_thai", nullable = false)
	private Integer trangThai;

	// // bi-directional many-to-one association to HopDong
	// @OneToMany(mappedBy = "hoSoNhanVien")
	// private List<HopDong> hopDongs;
	//
	// // bi-directional many-to-many association to DuAn
	// // @ManyToMany(mappedBy = "hoSoNhanViens")
	// // private List<DuAn> duAns;
	//
	// // bi-directional many-to-one association to ThongTinBangCap
	// @OneToMany(mappedBy = "hoSoNhanVien")
	// private List<ThongTinBangCap> thongTinBangCaps;
	//
	// // bi-directional many-to-one association to ThongTinGiaDinh
	// @OneToMany(mappedBy = "hoSoNhanVien")
	// private List<ThongTinGiaDinh> thongTinGiaDinhs;
	//
	// @ManyToMany(mappedBy = "hoSoNhanVien", fetch = FetchType.EAGER, targetEntity
	// = DuAn.class)
	// private Set<DuAn> duAn;

	public HoSoNhanVienTT() {
	}

	public int getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getTenNhanVien() {
		return tenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
	}

	public String getAnhDaiDien() {
		return anhDaiDien;
	}

	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	public Date getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(Date namSinh) {
		this.namSinh = namSinh;
	}

	public Integer getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(Integer gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public XaPhuongTT getPhuong() {
		return phuong;
	}

	public void setPhuong(XaPhuongTT phuong) {
		this.phuong = phuong;
	}

	public QuanHuyenTT getQuan() {
		return quan;
	}

	public void setQuan(QuanHuyenTT quan) {
		this.quan = quan;
	}

	public TinhThanhPhoTT getThanhPho() {
		return thanhPho;
	}

	public void setThanhPho(TinhThanhPhoTT thanhPho) {
		this.thanhPho = thanhPho;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public TinhTrangHonNhanTT getTinhTrangHonNhan() {
		return tinhTrangHonNhan;
	}

	public void setTinhTrangHonNhan(TinhTrangHonNhanTT tinhTrangHonNhan) {
		this.tinhTrangHonNhan = tinhTrangHonNhan;
	}

	public QuocTichTT getQuocTich() {
		return quocTich;
	}

	public void setQuocTich(QuocTichTT quocTich) {
		this.quocTich = quocTich;
	}

	public DanTocTT getDanToc() {
		return danToc;
	}

	public void setDanToc(DanTocTT danToc) {
		this.danToc = danToc;
	}

	public String getSoCmnd() {
		return soCmnd;
	}

	public void setSoCmnd(String soCmnd) {
		this.soCmnd = soCmnd;
	}

	public String getNoiCap() {
		return noiCap;
	}

	public void setNoiCap(String noiCap) {
		this.noiCap = noiCap;
	}

	public Date getNgayCap() {
		return ngayCap;
	}

	public void setNgayCap(Date ngayCap) {
		this.ngayCap = ngayCap;
	}

	public PhongBan getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(PhongBan phongBan) {
		this.phongBan = phongBan;
	}

	public ChucDanh getChucDanh() {
		return chucDanh;
	}

	public void setChucDanh(ChucDanh chucDanh) {
		this.chucDanh = chucDanh;
	}

	public Integer getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(Integer trangThai) {
		this.trangThai = trangThai;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HoSoNhanVien [maNhanVien=" + maNhanVien + ", anhDaiDien=" + anhDaiDien + ", danToc=" + danToc
				+ ", email=" + email + ", gioiTinh=" + gioiTinh + ", tenNhanVien=" + tenNhanVien + ", namSinh="
				+ namSinh + ", ngayCap=" + ngayCap + ", noiCap=" + noiCap + ", thanhPho=" + thanhPho + ", quan=" + quan
				+ ", phuong=" + phuong + ", diaChi=" + diaChi + " soCmnd=" + soCmnd + ", soDienThoai=" + soDienThoai
				+ ", trangThai=" + trangThai + ", phongBan=" + phongBan + ", chucDanh=" + chucDanh + ", quocTich="
				+ quocTich + ", tinhTrangHonNhan=" + tinhTrangHonNhan + "]";
	}

}