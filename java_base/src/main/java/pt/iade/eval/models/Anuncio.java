package pt.iade.eval.models;

public class Anuncio {
    private String descricao;
    private String origem;
    private String destino;
    private Integer volume;

    public String getDescricao() {
        return descricao;
    }

    public String getOrigem() {
        return origem;
    }

    public String getDestino() {
        return destino;
    }

    public Integer getVolume() {
        return volume;
    }

    public Anuncio(String descricao, String origem, String destino, Integer volume) {
        this.descricao = descricao;
        this.origem = origem;
        this.destino = destino;
        this.volume = volume;
    }


}
