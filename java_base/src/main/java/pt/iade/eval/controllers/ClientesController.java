package pt.iade.eval.controllers;

import java.util.ArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pt.iade.eval.models.Cliente;
import pt.iade.eval.models.repositories.ClienteRepository;

@RestController
@RequestMapping(path="/api/clientes")
public class ClientesController {
    private Logger logger = LoggerFactory.getLogger(ClientesController.class);

@Autowired
private ClienteRepository ClienteRepository;

@GetMapping
(path ="", produces= MediaType.APPLICATION_JSON_VALUE)
public Iterable<Cliente> getUnits() {
logger.info("Sending all clients");
return ClienteRepository.findAll();
}

}

