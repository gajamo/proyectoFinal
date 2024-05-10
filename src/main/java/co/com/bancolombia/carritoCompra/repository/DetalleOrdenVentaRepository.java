package co.com.bancolombia.carritoCompra.repository;

import co.com.bancolombia.carritoCompra.model.DetalleOrdenVenta;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface DetalleOrdenVentaRepository extends ReactiveCrudRepository<DetalleOrdenVenta, Long> {
    // Métodos personalizados si es necesario
}
