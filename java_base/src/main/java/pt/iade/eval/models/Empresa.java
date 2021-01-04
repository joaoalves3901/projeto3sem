package pt.iade.eval.models;

public class Empresa {
    private String nome;
    private String morada;
    private String descricao;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome1, String morada1, String descricao1) {
        this.nome = nome1;
        this.morada=morada1;
        this.descricao=descricao1;
    }

    public String getMorada() {
        return morada;
    }

    public void setMorada(String morada) {
        this.morada = morada;
    }

    public String getDescricao() {
        return descricao;
    }



    

}
