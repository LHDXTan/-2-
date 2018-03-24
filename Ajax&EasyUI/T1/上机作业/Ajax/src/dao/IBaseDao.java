package dao;

import java.util.List;

public interface IBaseDao {

	boolean checkuser(String uname);

	List getAllCity(String proNo);
}
