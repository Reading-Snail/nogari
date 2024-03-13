package nogari.system.message.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import nogari.system.message.domain.dto.MessageReqDTO;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

@Entity
@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Message {

    @Id
    private String msgCd;
    private String type;
    private String description;
    @ColumnDefault(value = "CURRENT_TIMESTAMP")
    private Date regDt;
    private String regId;
    @ColumnDefault(value = "CURRENT_TIMESTAMP")
    private Date updDt;
    private String updId;

    public MessageReqDTO toReqDTO() {
        return MessageReqDTO.builder()
                .msgCd(this.msgCd)
                .type(this.type)
                .description(this.description)
                .regId(this.regId)
                .updId(this.updId)
                .build();
    }
}
