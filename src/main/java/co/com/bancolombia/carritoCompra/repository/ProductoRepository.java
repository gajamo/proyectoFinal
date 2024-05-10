package co.com.bancolombia.carritoCompra.repository;

import co.com.bancolombia.carritoCompra.model.Producto;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface ProductoRepository extends ReactiveCrudRepository<Producto, Long> {

}