package fasttrackse.ffse1703.fbms.dao.mvpquanliduan;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.mvpquanliduan.Database;



public interface DatabaseDAOs {
	public List<Database> findAll();
	public Database findById(String id);
	public void addNew(Database database);
	public void update(Database database);
	public void delete(Database database);
	public int checkNameDatabase(String nameDatabase);
	public int checkMaDatabase(String idDatabase);
}