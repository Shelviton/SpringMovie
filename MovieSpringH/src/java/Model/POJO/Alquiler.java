package Model.POJO;
// Generated 26/06/2019 07:32:53 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
/**
 * Alquiler generated by hbm2java
 */
public class Alquiler  implements java.io.Serializable {


     private Integer alqId;
     private Pelicula pelicula;
     private Socio socio;
     @DateTimeFormat(pattern = "dd/MM/yyyy")
     private Date alqFechaDesde;
     @DateTimeFormat(pattern = "dd/MM/yyyy")
     private Date alqFechaHasta;
     
     private BigDecimal alqValor;
     @DateTimeFormat(pattern = "dd/MM/yyyy")
     private Date alqFechaEntrega;

    public Alquiler() {
    }

	
    public Alquiler(Date alqFechaDesde, Date alqFechaHasta, BigDecimal alqValor) {
        this.alqFechaDesde = alqFechaDesde;
        this.alqFechaHasta = alqFechaHasta;
        this.alqValor = alqValor;
    }
    public Alquiler(Pelicula pelicula, Socio socio, Date alqFechaDesde, Date alqFechaHasta, BigDecimal alqValor, Date alqFechaEntrega) {
       this.pelicula = pelicula;
       this.socio = socio;
       this.alqFechaDesde = alqFechaDesde;
       this.alqFechaHasta = alqFechaHasta;
       this.alqValor = alqValor;
       this.alqFechaEntrega = alqFechaEntrega;
    }
   
    public Integer getAlqId() {
        return this.alqId;
    }
    
    public void setAlqId(Integer alqId) {
        this.alqId = alqId;
    }
    public Pelicula getPelicula() {
        return this.pelicula;
    }
    
    public void setPelicula(Pelicula pelicula) {
        this.pelicula = pelicula;
    }
    public Socio getSocio() {
        return this.socio;
    }
    
    public void setSocio(Socio socio) {
        this.socio = socio;
    }
    public Date getAlqFechaDesde() {
        return this.alqFechaDesde;
    }
    
    public void setAlqFechaDesde(Date alqFechaDesde) {
        this.alqFechaDesde = alqFechaDesde;
    }
    public Date getAlqFechaHasta() {
        return this.alqFechaHasta;
    }
    
    public void setAlqFechaHasta(Date alqFechaHasta) {
        this.alqFechaHasta = alqFechaHasta;
    }
    public BigDecimal getAlqValor() {
        return this.alqValor;
    }
    
    public void setAlqValor(BigDecimal alqValor) {
        this.alqValor = alqValor;
    }
    public Date getAlqFechaEntrega() {
        return this.alqFechaEntrega;
    }
    
    public void setAlqFechaEntrega(Date alqFechaEntrega) {
        this.alqFechaEntrega = alqFechaEntrega;
    }




}


