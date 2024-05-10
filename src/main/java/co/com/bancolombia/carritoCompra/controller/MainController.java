package co.com.bancolombia.carritoCompra.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/")
    public String principal() {
        return "¡Hola Mundo!";
    }
}
