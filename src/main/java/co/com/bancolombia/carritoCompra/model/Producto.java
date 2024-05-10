package co.com.bancolombia.carritoCompra.model;



import org.springframework.data.annotation.Id;
import java.math.BigDecimal;
import lombok.Data;



@Data
public class Producto {
    @Id
    private Long id;
    private String name;
    private BigDecimal price;
    private String description;
    private String imageUrl;
    private Integer stock;

}
