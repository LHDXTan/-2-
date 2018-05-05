package dao;

import bean.Studnet;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.List;

public class StudentDaoImpl implements IStudentDao {
    @Override
    public List<Studnet> selectStudent() {
        // 加载Hibernate默认配置文件
        Configuration configuration = new Configuration().configure();
        // 用Configuration创建SessionFactory
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        // 创建Session
        Session session = sessionFactory.openSession();
        // 开启事务
        Transaction transaction = session.beginTransaction();
        String hql = "from Studnet ";
        Query query = session.createQuery(hql);
        List<Studnet> list = query.list();
        // 提交事务
        transaction.commit();
        return list;
    }

    @Override
    public void addStudent(Studnet studnet) {
        // 加载Hibernate默认配置文件
        Configuration configuration = new Configuration().configure();
        // 用Configuration创建SessionFactory
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        // 创建Session
        Session session = sessionFactory.openSession();
        // 开启事务
        Transaction transaction = session.beginTransaction();
        session.save(studnet);
        // 提交事务
        transaction.commit();
    }

    @Override
    public void updateStudent(int id) {
        // 加载Hibernate默认配置文件
        Configuration configuration = new Configuration().configure();
        // 用Configuration创建SessionFactory
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        // 创建Session
        Session session = sessionFactory.openSession();
        // 开启事务
        Transaction transaction = session.beginTransaction();
        Studnet studnet = session.get(Studnet.class,id);
        session.update(studnet);
        // 提交事务
        transaction.commit();
    }

    @Override
    public void delectStudent(int id) {
// 加载Hibernate默认配置文件
        Configuration configuration = new Configuration().configure();
        // 用Configuration创建SessionFactory
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        // 创建Session
        Session session = sessionFactory.openSession();
        // 开启事务
        Transaction transaction = session.beginTransaction();
        Studnet studnet = session.get(Studnet.class,id);
        session.delete(studnet);
        // 提交事务
        transaction.commit();
    }
}
