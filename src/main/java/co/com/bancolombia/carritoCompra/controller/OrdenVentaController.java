package co.com.bancolombia.carritoCompra.controller;


import co.com.bancolombia.carritoCompra.repository.OrdenVentaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/ordenes-ventas")
public class OrdenVentaController {
    private final OrdenVentaRepository ordenVentaRepository;

    @Autowired
    public OrdenVentaController(OrdenVentaRepository ordenVentaRepository) {
        this.ordenVentaRepository = ordenVentaRepository;
    }

    // Métodos para gestionar órdenes de ventas
}