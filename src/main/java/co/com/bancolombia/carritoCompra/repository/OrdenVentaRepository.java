package co.com.bancolombia.carritoCompra.repository;

import co.com.bancolombia.carritoCompra.model.OrdenVenta;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;

public interface OrdenVentaRepository extends ReactiveCrudRepository<OrdenVenta, Long> {
    // Métodos personalizados si es necesario
}
