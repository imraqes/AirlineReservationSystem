
package org.raka.hibernate.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admindetails {
    
    private String adminid;
    private String password;
    private String name;
    private int enable;

    @Id
    public String getAdminid() {
        return adminid;
    }

    public void setAdminid(String adminid) {
        this.adminid = adminid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }
    
    
    
    
}
