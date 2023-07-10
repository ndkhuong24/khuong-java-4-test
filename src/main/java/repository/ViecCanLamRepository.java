package repository;

import model.ViecCanLam;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

public class ViecCanLamRepository {
    public List<ViecCanLam> getAll() {
        List<ViecCanLam> viecCanLamList = new ArrayList<>();

        Session session = HibernateUtil.getSession();
        Query<ViecCanLam> query = session.createQuery("select v from ViecCanLam v", ViecCanLam.class);

        viecCanLamList=query.getResultList();

        return viecCanLamList;
    }
}
