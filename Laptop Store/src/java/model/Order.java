
package model;

import java.security.Timestamp;
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
    private Timestamp orderDate; 
    Vector<OrderDetails> listOrderDetails = new Vector<>();
    String fullname; 
    String address; 
    String phone; 
    String note; // ghi chu 
}
