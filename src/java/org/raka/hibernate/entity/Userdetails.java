
package org.raka.hibernate.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Userdetails {
    
    private String userid;
    private String password;
    private String name;
    private int age;
    private String gender;
    private String address;
    private String email;
    private String contect_no;
    private int enable;

    @Id
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContect_no() {
        return contect_no;
    }

    public void setContect_no(String contect_no) {
        this.contect_no = contect_no;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

  
    
    
    
    
}
