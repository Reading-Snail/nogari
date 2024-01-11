package nogari.data.entity.dto;

import lombok.Builder;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Builder
public class MessageDTO {
    private Long id;
    private String typeCd;
    private String description;
    private String regDt;
    private String regId;
    private String updDt;
    private String updId;
}
