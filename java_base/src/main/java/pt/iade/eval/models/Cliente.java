package pt.iade.eval.models;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="Clientes")
public class  Cliente {
@Id @GeneratedValue
(strategy = GenerationType.IDENTITY)

    private int anuncio_id;
    private String name;
    private char gender;
    private Date dataNasc;
    private String email;
    private Integer tlm;

    public Cliente(String name, char gender, Date dataNasc, String email, Integer tlm) {
        this.name = name;
        this.gender = gender;
        this.dataNasc = dataNasc;
        this.email = email;
        this.tlm = tlm;
    }

    public String getName() {
        return name;
    }

    public char getGender() {
        return gender;
    }

    public Date getDataNasc() {
        return dataNasc;
    }
    
    public String getEmail() {
        return email;
    }


    public Integer getTlm() {
        return tlm;
    }    

}
