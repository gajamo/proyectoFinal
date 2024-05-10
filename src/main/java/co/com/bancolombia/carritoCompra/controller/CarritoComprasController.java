package co.com.bancolombia.carritoCompra.controller;

import co.com.bancolombia.carritoCompra.repository.DetalleOrdenVentaRepository;
import co.com.bancolombia.carritoCompra.repository.OrdenVentaRepository;
import co.com.bancolombia.carritoCompra.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/carrito-compras")
public class CarritoComprasController {
    private final ProductoRepository productoRepository;
    private final OrdenVentaRepository ordenVentaRepository;
    private final DetalleOrdenVentaRepository detalleOrdenVentaRepository;

    @Autowired
    public CarritoComprasController(ProductoRepository productoRepository, OrdenVentaRepository ordenVentaRepository, DetalleOrdenVentaRepository detalleOrdenVentaRepository) {
        this.productoRepository = productoRepository;
        this.ordenVentaRepository = ordenVentaRepository;
        this.detalleOrdenVentaRepository = detalleOrdenVentaRepository;
    }

    // Métodos para gestionar el carrito de compras
}
