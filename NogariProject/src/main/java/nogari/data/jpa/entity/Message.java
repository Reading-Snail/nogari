package nogari.data.jpa.entity;

import lombok.Data;
import org.springframework.context.annotation.Configuration;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class Message {
    @Id
    private String cd;
    @Column
    private String type;
    @Column
    private String description;
    @Column
    private String regDt;
    @Column
    private String regId;
    @Column
    private String updDt;
    @Column
    private String updId;
}
