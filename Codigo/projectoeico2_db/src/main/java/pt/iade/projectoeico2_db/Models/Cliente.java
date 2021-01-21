package pt.iade.projectoeico2_db.Models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "clientes")
    public class Cliente {
        @Id @GeneratedValue
            (strategy = GenerationType.IDENTITY)
			@Column(name="cliente_id") private int cliente_id;
            @Column(name="cliente_nome") private String nome;
            @Column(name="cliente_morada") private String morada;
			@Column(name="cliente_email") private String email;

			@OneToMany @JoinColumn(name="anuncio_cliente_id")
			@JsonIgnoreProperties({"clientes"})
			private List<Anuncio> anuncios;

			
			public Cliente() {}

			public int getCliente_id() {
				return cliente_id;
            }
            
			public String getClinte_nome() {
				return nome;
			}

			public String getClinte_morada() {
				return morada;
			}
	
			public String getCliente_email() {
				return email;
			}

			public List<Anuncio> getAnuncios() {
				return anuncios;
			}					
    }