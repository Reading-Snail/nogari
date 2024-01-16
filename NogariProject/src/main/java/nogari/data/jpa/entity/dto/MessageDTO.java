package nogari.data.jpa.entity.dto;

import lombok.Builder;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Builder
public class MessageDTO {
    private String cd;
    private String type;
    private String description;
    private String regDt;
    private String regId;
    private String updDt;
    private String updId;
}
