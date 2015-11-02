package org.raka.hibernate.util;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.raka.hibernate.entity.*;
import org.hibernate.cfg.AnnotationConfiguration;
public class HBServices {
    private static final SessionFactory sessionFactory;
    static {
        try {
            AnnotationConfiguration cfg = new AnnotationConfiguration();
            cfg.addAnnotatedClass(Admindetails.class);
            cfg.addAnnotatedClass(Userdetails.class);
            cfg.addAnnotatedClass(ClassMaster.class);
            cfg.addAnnotatedClass(CompanyMaster.class);
            cfg.addAnnotatedClass(AerodrumMaster.class);
            cfg.addAnnotatedClass(DayMaster.class);
            cfg.addAnnotatedClass(FlightMaster.class);
            cfg.addAnnotatedClass(FlightFareMap.class);
            cfg.addAnnotatedClass(FlightDayMap.class);
            cfg.addAnnotatedClass(CostumerReservationDetails.class);
            cfg.addAnnotatedClass(PassengerReservationDetails.class);
            cfg.configure();
            sessionFactory = cfg.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Error at Session Factory creation : " + ex.getMessage());
            throw new ExceptionInInitializerError(ex);
        }
    }
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public static Session getSession() {
        return sessionFactory.openSession();
    }
}