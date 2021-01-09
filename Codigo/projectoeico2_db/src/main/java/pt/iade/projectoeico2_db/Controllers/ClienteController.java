package pt.iade.projectoeico2_db.Controllers;
import pt.iade.projectoeico2_db.Models.Cliente;
import pt.iade.projectoeico2_db.Models.Repositories.ClienteRepository;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.MediaType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@RestController
@RequestMapping(path="/api/clientes")

public class ClienteController {
    private Logger logger = LoggerFactory.getLogger(ClienteController.class);
    @Autowired
    private ClienteRepository clienteRepository;

}
