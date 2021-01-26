package pt.iade.projectoeico2_db.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "anuncio")
    public class Anuncio {
        @Id @GeneratedValue
            (strategy = GenerationType.IDENTITY)
            @Column(name="anuncio_id") private int id;

            @ManyToOne @JoinColumn(name="anuncio_cliente_id")
            @JsonIgnoreProperties({"anuncios"})
            private Cliente cliente;

            @Column(name="anuncio_origem") private String origem;
            @Column(name="anuncio_destino") private String destino;
            @Column(name="anuncio_volume") private int volume;
            @Column(name="anuncio_desc") private String descricao;

            public Anuncio() {}

            public int getId() {
                return id;
            }
     
            public Cliente getCliente() {
                return cliente;
            }

            public String getOrigem() {
                return origem;
            }

            public String getDestino() {
                return destino;
            }

            public int getVolume() {
                return volume;
            }

            public String getDescricao() {
                return descricao;
            }
    }