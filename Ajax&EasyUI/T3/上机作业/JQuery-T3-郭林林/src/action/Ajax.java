package action;

public class Ajax {
	private String uanme;
	private String msg;
	public String user(){
		return "user";
		
	}
	public String yanzheng(){
		String name = "张三";
		if(uanme==name){
			msg="此用户已存在";
		}else{
			msg="可以注册";
		}
		return "yanzheng";
	}
	public String yanzheng1(){
		
		return "yanzheng1";
		
	}
	public String getUanme() {
		return uanme;
	}
	public void setUanme(String uanme) {
		this.uanme = uanme;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

}
