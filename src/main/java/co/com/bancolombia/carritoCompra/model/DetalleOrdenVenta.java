package co.com.bancolombia.carritoCompra.model;

import jakarta.persistence.*;
import org.springframework.data.annotation.Id;


@Entity
public class DetalleOrdenVenta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "orden_id")
    private OrdenVenta ordenVenta;
    @ManyToOne
    @JoinColumn(name = "producto_id")
    private Producto producto;
    private Integer cantidad;

    // Getters y Setters
}
