package co.com.bancolombia.carritoCompra.model;

import jakarta.persistence.*;
import org.springframework.data.annotation.Id;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Entity
public class OrdenVenta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDateTime fecha;
    private BigDecimal total;
    private String estado;
    @OneToMany(mappedBy = "ordenVenta", cascade = CascadeType.ALL)
    private List<DetalleOrdenVenta> detalles;

    // Getters y Setters
}
