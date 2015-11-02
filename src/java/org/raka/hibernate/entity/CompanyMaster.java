package org.raka.hibernate.entity;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CompanyMaster {
    
    private int companyId;
    private String companyName;
    
   
    
    @Id
    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int CompanyId) {
        this.companyId = CompanyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String CompanyName) {
        this.companyName = CompanyName;
    }
    
    
    
    
    
}
