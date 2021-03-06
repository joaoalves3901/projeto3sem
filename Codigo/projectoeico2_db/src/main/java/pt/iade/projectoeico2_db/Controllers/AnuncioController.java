package pt.iade.projectoeico2_db.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import pt.iade.projectoeico2_db.Models.Anuncio;
import pt.iade.projectoeico2_db.Models.Repositories.AnuncioRepository;

@RestController
@RequestMapping(path="/api/anuncios")
public class AnuncioController {
    private Logger logger = LoggerFactory.getLogger(AnuncioController.class);
    @Autowired
    private AnuncioRepository anuncioRepository;

    @GetMapping(path = "", produces= MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Anuncio> getAnuncios() {
        logger.info("Sending all advertisements");
        return anuncioRepository.findAnuncios();
    }

    @GetMapping(path = "/cliente/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Anuncio> getAnunciosId(@PathVariable int id) {
        logger.info("Sending all advertisements with id" + id);
        return anuncioRepository.findAnunciosId(id);
    }


    
    @GetMapping(path = "/destino/{destino}", produces= MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Anuncio> getAdByDestino(@PathVariable String destino) {
        logger.info("Sending advertisements where final destination is" + destino);
        return anuncioRepository.findAnuncioByDestino(destino);
    }

    @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
    public Optional<Anuncio> getAdById(@PathVariable Integer id) {
        logger.info("Sending advertisements where id is" + id);
        return anuncioRepository.findById(id);
    }


    @PostMapping(path = "", produces= MediaType.APPLICATION_JSON_VALUE)
    public Anuncio saveAnuncio(@RequestBody Anuncio newAnuncio) {
        logger.info("Saving Anuncio:"+ newAnuncio.getDescricao());
        Anuncio anuncio = anuncioRepository.save(newAnuncio);
        return anuncio;
    }
}