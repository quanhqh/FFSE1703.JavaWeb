package fasttrackse.entity;

import org.springframework.stereotype.Component;

@Component("daoTaoDaiHan")
public class DaoTaoDaiHan implements HeDaoTao {

	@Override
	public String getGioHoc() {
		return "Trong vòng 16 tháng, mời bạn đi học sáng từ 8h00, chiều từ 13h30";
	}

}
