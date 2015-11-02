package org.raka.hibernate.util;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.raka.hibernate.entity.*;
import org.raka.hibernate.entity.PassengerReservationDetails;
public class TableCreater {
    public static void main(String[] args) {
        AnnotationConfiguration cfg = new AnnotationConfiguration();
            cfg.addAnnotatedClass(Admindetails.class);
            cfg.addAnnotatedClass(AerodrumMaster.class);
            cfg.addAnnotatedClass(ClassMaster.class);
            cfg.addAnnotatedClass(CompanyMaster.class);
            cfg.addAnnotatedClass(DayMaster.class);
            cfg.addAnnotatedClass(FlightDayMap.class);
            cfg.addAnnotatedClass(FlightFareMap.class);
            cfg.addAnnotatedClass(FlightMaster.class);
            cfg.addAnnotatedClass(PassengerReservationDetails.class);
            cfg.addAnnotatedClass(Userdetails.class);
           
         
        cfg.addAnnotatedClass(PassengerReservationDetails.class);
        cfg.configure();
        SchemaExport se = new SchemaExport(cfg);
        se.create(true, true);
        System.out.println("Tables are creatd!!!!!!!!!!!!!!!!!!!!!!");
    }
}