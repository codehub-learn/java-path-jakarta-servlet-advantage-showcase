package gr.codelearn.jakarta.showcase.servlet.model;

import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;
//This annotation is only required for the xml resource example
@XmlRootElement
public class Product {
    private String name;
    private String serial;
    private BigDecimal price;

    public Product(String name, String serial, BigDecimal price) {
        this.name = name;
        this.serial = serial;
        this.price = price;
    }

    public Product() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", serial='" + serial + '\'' +
                ", price=" + price +
                '}';
    }
}
