package action;

import bean.Studnet;
import dao.IStudentDao;
import dao.StudentDaoImpl;

import java.util.List;

public class StudentAction extends com.opensymphony.xwork2.ActionSupport{
    IStudentDao studentDao = new StudentDaoImpl();
    private List<Studnet> studnetList;
    private Studnet student;
    @Override
    public String execute() throws Exception {
        System.out.println("正在执行的Action");
        studnetList = studentDao.selectStudent();
        // 返回视图 SUCCESS，这是框架定义
        return SUCCESS;
    }
    public String add(){
        studentDao.addStudent(student);
        return "add";
    }

    public List<Studnet> getStudnetList() {
        return studnetList;
    }

    public void setStudnetList(List<Studnet> studnetList) {
        this.studnetList = studnetList;
    }

    public IStudentDao getStudentDao() {
        return studentDao;
    }

    public void setStudentDao(IStudentDao studentDao) {
        this.studentDao = studentDao;
    }

    public Studnet getStudent() {
        return student;
    }

    public void setStudent(Studnet student) {
        this.student = student;
    }
}
