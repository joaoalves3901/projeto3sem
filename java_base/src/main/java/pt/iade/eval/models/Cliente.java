package pt.iade.eval.models;

import java.sql.Date;

public class Cliente {
    private String name;
    private char gender;
    private Date datanasc;
    private String email;
    private Integer tlm;

    public Cliente(String name, char gender, Date datanasc, String email, Integer tlm) {
        this.name = name;
        this.gender = gender;
        this.datanasc = datanasc;
        this.email = email;
        this.tlm = tlm;
    }

    public String getName() {
        return name;
    }

    public char getGender() {
        return gender;
    }

    public Date getDatanasc() {
        return datanasc;
    }
    
    public String getEmail() {
        return email;
    }


    public Integer getTlm() {
        return tlm;
    }    

}
