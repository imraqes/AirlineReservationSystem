package org.raka.hibernate.action;

import org.raka.hibernate.entity.*;
import org.raka.hibernate.util.HBServices;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Store {

    public static void main(String[] args) {

        String companynames[] = {"Indian Airlinse", "KingFisher", "Indigo", "AirIndia", "Deccan"};
        String aerodrumname[] = {"Kochi", "Jaipur", "Delhi", "Nagpur", "Guwahati", "Allahabad", "Mumbai", "Chennai", "Srinagar", "Jammu", "Kolkata", "Ranchi", "Raipur", "Bengleru", "Port", " Blair", "Patna", "Agra", "Lucknow"};
        String days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        String classes[] = {"First Class", "Business Class", "Icconomic Class"};

        Session s = HBServices.getSession();
        Transaction t = s.beginTransaction();

        DayMaster dm[] = new DayMaster[days.length];
        for (int i = 0; i < days.length; i++) {
            dm[i] = new DayMaster();
            dm[i].setDayId(i + 1);
            dm[i].setDayName(days[i]);
            
            s.save(dm[i]);
        }

        AerodrumMaster am[] = new AerodrumMaster[aerodrumname.length];
        for (int i = 0; i < aerodrumname.length; i++) {
            am[i] = new AerodrumMaster();
            am[i].setAerodrumId(i + 1);
            am[i].setCity(aerodrumname[i]);

            s.save(am[i]);
        }

        CompanyMaster cm[] = new CompanyMaster[companynames.length];
        for (int i = 0; i < companynames.length; i++) {
            cm[i] = new CompanyMaster();
            cm[i].setCompanyId(i + 1);
            cm[i].setCompanyName(companynames[i]);

            s.save(cm[i]);
        }
        ClassMaster clm[] = new ClassMaster[classes.length];
        for (int i = 0; i < classes.length; i++) {
            clm[i] = new ClassMaster();
            clm[i].setClassId(i + 1);
            clm[i].setClassName(classes[i]);

            s.save(clm[i]);
        }
//FlightMaster fm=new FlightMaster();

        /*fm.setCompanyId(null);

         fm.setCompanyId(cm[1]);
         fm.setEnable(0);
         fm.setFlightNo(1);
         fm.setSourceId(am[0]);
         fm.setDestinationId(am[1]);
         //fm.getFlight_daymap_fk().add(fdm);
         //fm.getFlight_faremap_fk().add(ffm);

         FlightFareMap ffm=new FlightFareMap();
         ClassMaster clm=new ClassMaster();
         clm.setClassId(1);
         clm.getClass_fare_fk().add(ffm);

         //FlightFareMap ffm=new FlightFareMap();
         ffm.setClassId(clm);
         ffm.setFlightNo(fm);


         //FlightDayMap fdm=new FlightDayMap();
         fdm.setEnable(0);
         fdm.setDayId(dm[1]);
         fdm.setFlightNo(fm);

         fm.getFlight_daymap_fk().add(fdm);
         fm.getFlight_faremap_fk().add(ffm);

         s.save(clm);
         s.save(fm);
         s.save(ffm);
         s.save(fdm);

         /*for(int i=0;i<days.length;i++)
         {
         s.save(dm[i]);
         }
         for(int i=0;i<aerodrumname.length;i++)
         {
         s.save(am[i]);
         }
         for(int i=0;i<companynames.length;i++)
         {
    
         }*/


        t.commit();
        System.out.println("DAte inserted..............");

    }
}
