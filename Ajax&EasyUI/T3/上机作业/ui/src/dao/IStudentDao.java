package dao;

import bean.Studnet;

import java.util.List;

public interface IStudentDao {
    public List<Studnet> selectStudent();
    public void addStudent(Studnet studnet);
    public void updateStudent(int id);
    public void delectStudent(int id);
}
