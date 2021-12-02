package gr.codelearn.jakarta.showcase.servlet.resource;

import gr.codelearn.jakarta.showcase.servlet.model.Product;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Path("/welcome-resource")
public class HelloResource {

    @GET
    @Path("/greetings")
    public String greetings(){
        LocalDateTime localDateTime = LocalDateTime.now();
        return "Hello at " + localDateTime;
    }

    @GET
    @Path("/product-json")
    @Produces(MediaType.APPLICATION_JSON)
    public Product productJSON(){
        return new Product("RTX-3060","NVIDIA-0001", BigDecimal.valueOf(1000));
    }

    @GET
    @Path("/product-xml")
    @Produces(MediaType.APPLICATION_XML)
    public Product productXML(){
        return new Product("RTX-3060","NVIDIA-0001", BigDecimal.valueOf(1000));
    }
}
