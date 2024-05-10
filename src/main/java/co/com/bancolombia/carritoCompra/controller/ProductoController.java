package co.com.bancolombia.carritoCompra.controller;

import co.com.bancolombia.carritoCompra.model.Producto;
import co.com.bancolombia.carritoCompra.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;


@RestController
@RequestMapping("/productos")
public class ProductoController {
    private final ProductoRepository productoRepository;

    @Autowired
    public ProductoController(ProductoRepository productoRepository) {
        this.productoRepository = productoRepository;
    }

    @GetMapping("/")
    public Flux<Producto> obtenerTodosLosProductos() {
        return productoRepository.findAll();
    }

    @GetMapping("/{id}")
    public Mono<ResponseEntity<Producto>> obtenerProductoPorId(@PathVariable Long id) {
        return productoRepository.findById(id)
                .map(producto -> ResponseEntity.ok(producto))
                .defaultIfEmpty(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public Mono<ResponseEntity<Void>> eliminarProducto(@PathVariable Long id) {
        return productoRepository.findById(id)
                .flatMap(productoExistente ->
                        productoRepository.delete(productoExistente)
                                .then(Mono.just(ResponseEntity.noContent().<Void>build()))
                )
                .defaultIfEmpty(ResponseEntity.notFound().build());
    }
}
