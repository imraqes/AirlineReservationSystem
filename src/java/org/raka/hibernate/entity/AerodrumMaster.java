
package org.raka.hibernate.entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.OneToMany;

@Entity
public class AerodrumMaster {
    
    private int aerodrumId;
   
    private String city;
    
    
    

    @Id
    public int getAerodrumId() {
        return aerodrumId;
    }

    public void setAerodrumId(int aerodrumId) {
        this.aerodrumId = aerodrumId;
    }

 

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

  
 
    
    
    
    
}
