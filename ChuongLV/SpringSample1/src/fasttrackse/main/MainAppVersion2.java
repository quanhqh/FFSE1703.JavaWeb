package fasttrackse.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import fasttrackse.entity.*;

public class MainAppVersion2 {
	
	public static Scanner input = new Scanner(System.in);

	public static void main(String[] args) {
		// Inject HeDaoTao qua hàm construct
		SinhVienVersion5 sinhVien1 = new SinhVienVersion5("Thành", new DaoTaoDaiHan());
		
		SinhVienVersion5 sinhVien2 = new SinhVienVersion5("Hồng");
		// Inject HeDaoTao qua hàm setter
		sinhVien2.setHeDaoTao(new DaoTaoNganHan());
		
		List<MonHoc> monHoc1 = new ArrayList<MonHoc>();
		List<MonHoc> monHoc2 = new ArrayList<MonHoc>();
		
		monHoc1.add(new MonToan());
		monHoc1.add(new MonLy());
		monHoc1.add(new MonHoa());
		
		monHoc2.add(new MonEnglish());
		monHoc2.add(new MonFrench());

		// Inject MonHoc qua hàm setter
		sinhVien1.setMonHoc(monHoc1);
		sinhVien2.setMonHoc(monHoc2);
		
		System.out.println("Nhập tên sinh viên 1:");
		String ten = input.nextLine();
		sinhVien1.setHoTen(ten);
		
		System.out.println("Nhập tên sinh viên 2:");
		String ten1 = input.nextLine();
		sinhVien2.setHoTen(ten1);
		
		System.out.println(sinhVien1.mangSachDiHoc());
		System.out.println(sinhVien2.mangSachDiHoc());
	}

}