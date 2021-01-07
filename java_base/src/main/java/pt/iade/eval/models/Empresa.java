package pt.iade.eval.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="Empresas")
public class Empresa {

@Id @GeneratedValue
(strategy = GenerationType.IDENTITY)

    private int empresa_id;
    private String nome;
    private String descricao;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome1, String descricao1) {
        this.nome = nome1;
        this.descricao=descricao1;
    }

    public String getDescricao() {
        return descricao;
    }



    

}
