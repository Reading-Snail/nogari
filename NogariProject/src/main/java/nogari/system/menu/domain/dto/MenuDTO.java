package nogari.system.menu.domain.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Alias("MenuDTO")
@Getter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MenuDTO {
    private String menuCd;
    private String menuNm;
    private int    sort;
    private String upperMenuCd;
    private String URL;
    private String useYn;
    private String crtYn;
    private String redYn;
    private String savYn;
    private String delYn;
    private String prtYn;
    private String exlYn;
    private String etc1Yn;
    private String etc2Yn;
    private String etc3Yn;
    private String param;
    private String regId;
    private String regDt;
    private String updId;
    private String updDt;
}
