
package model;

import java.security.Timestamp;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Vector;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Order {
    private int orderID;
    private int amount;
    private Integer userID; // Nullable field
    private LocalDateTime  orderDate; 
    Vector<OrderDetails> listOrderDetails = new Vector<>();
    String fullname; 
    String address; 
    String phone; 
    String note; // ghi chu 
    
    // Calculate total amount based on order details
    public int getAmount() {
        int total = 0;
        for (OrderDetails detail : listOrderDetails) {
            total += detail.getTotalPrice();
        }
        return total;
    }
    
    public Date getFormattedDate() {
        return Date.from(orderDate.atZone(ZoneId.systemDefault()).toInstant());
    }
}
