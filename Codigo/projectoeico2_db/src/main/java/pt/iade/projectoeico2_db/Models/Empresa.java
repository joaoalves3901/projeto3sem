package pt.iade.projectoeico2_db.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "empresa")
    public class Empresa{
        @Id @GeneratedValue
            (strategy = GenerationType.IDENTITY)

            @Column(name="empresa_id") private int empresa_id;
            @Column(name="empresa_name") private String empresa_name;
            @Column(name="empresa_desc") private String empresa_desc;

            public Empresa() {}

            public int getEmpresa_id() {
                return empresa_id;
            }

            public String getEmpresa_name() {
                return empresa_name;
            }

            public String getEmpresa_desc() {
                return empresa_desc;
            }

            
            
    }