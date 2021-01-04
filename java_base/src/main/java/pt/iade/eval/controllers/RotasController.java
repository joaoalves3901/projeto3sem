package pt.iade.eval.controllers;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import pt.iade.eval.models.exceptions.NotFoundException;

@RestController
@RequestMapping(path="/api/rotas")
public class RotasController {
    private Logger logger = LoggerFactory.getLogger(RotasController.class);
    
    /*
    @GetMapping(path = "", produces= MediaType.APPLICATION_JSON_VALUE)
    public ArrayList<ArrayList<Roteavel>> getRotas() {
        logger.info("Enviar todas as rotas");
        
        return null;
    }
    */
   
    /*
    @GetMapping(path = "{pos}", produces= MediaType.APPLICATION_JSON_VALUE)
    public ArrayList<Roteavel> getRota(@PathVariable("pos") int pos)
                                        throws NotFoundException {
        logger.info("Enviar a rota na posição "+pos);
        if (false) 
            throw new NotFoundException(""+pos, "Rota", "pos");
        return null;
    }
    */

    /*
    @GetMapping(path = "{pos}/visiveis", produces= MediaType.APPLICATION_JSON_VALUE)
    public ArrayList<Roteavel> getVisiveis(@PathVariable("pos") int pos)
                                        throws NotFoundException {
        logger.info("Enviar os elementos visíveis da rota na posição "+pos);
        
        if (false) 
            throw new NotFoundException(""+pos, "Rota", "pos");
        return null;
    }
    */

    /*
    @GetMapping(path = "membro/{nome}", produces= MediaType.APPLICATION_JSON_VALUE)
    public ArrayList<ArrayList<Roteavel>> 
            membro(@PathVariable("nome") String nome) {
        logger.info("Enviar as rotas na em que existe o elemento "+nome);
        
        return null;
    }
    */

    /*
    @GetMapping(path = "distancia/", produces= MediaType.APPLICATION_JSON_VALUE)
    public ArrayList<ArrayList<Roteavel>> 
            distancia(@RequestParam(value = "ponto1") String nome1,
                     @RequestParam(value = "ponto2") String nome2) {
        logger.info("Comparar distancia entre o elemento "+nome1+
                    " e o elemento "+nome2);

        if (false) 
            throw new NotFoundException(nome1, "Elemento de Rota", "nome");
        if (false) 
            throw new NotFoundException(nome2, "Elemento de Rota", "nome");

        return null;
    }
    */

    /*
    @PutMapping(path = "",produces= MediaType.APPLICATION_JSON_VALUE)
    public Roteavel setGrade(@RequestBody String nome) 
            throws NotFoundException{
        logger.info("Marcar o elemento de rota "+nome);

        if (false) 
            throw new NotFoundException(nome, "Elemento de Rota", "nome");
        
        return null;
    }
    */
}
