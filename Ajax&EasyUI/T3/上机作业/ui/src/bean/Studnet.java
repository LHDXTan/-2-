package bean;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Studnet {
    private int id;
    private String name;
    private String sex;
    private Integer age;
    private String birthday;
    private String zhuanye;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "age")
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Basic
    @Column(name = "birthday")
    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "zhuanye")
    public String getZhuanye() {
        return zhuanye;
    }

    public void setZhuanye(String zhuanye) {
        this.zhuanye = zhuanye;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Studnet studnet = (Studnet) o;
        return id == studnet.id &&
                Objects.equals(name, studnet.name) &&
                Objects.equals(sex, studnet.sex) &&
                Objects.equals(age, studnet.age) &&
                Objects.equals(birthday, studnet.birthday) &&
                Objects.equals(zhuanye, studnet.zhuanye);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, name, sex, age, birthday, zhuanye);
    }
}
