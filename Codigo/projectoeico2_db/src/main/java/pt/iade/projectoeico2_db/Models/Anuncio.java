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
            @Column(name="anuncio_id") private int anuncio_id;

            @ManyToOne @JoinColumn(name="anuncio_cliente_id")
            @JsonIgnoreProperties({"anuncios"})
            private Cliente cliente;

            @Column(name="anuncio_origem") private String anuncio_origem;
            @Column(name="anuncio_destino") private String anuncio_destino;
            @Column(name="anuncio_volume") private int anuncio_volume;
            @Column(name="anuncio_desc") private String anuncio_desc;

            public Anuncio() {}             

            public int getAnuncio_id() {
                return anuncio_id;
            }

            public String getAnuncio_origem() {
                return anuncio_origem;
            }

            public String getAnuncio_destino() {
                return anuncio_destino;
            }

            public int getAnuncio_volume() {
                return anuncio_volume;
            }

            public String getAnuncio_desc() {
                return anuncio_desc;
            }

            public Cliente getCliente() {
                return cliente;
            }
       
    }