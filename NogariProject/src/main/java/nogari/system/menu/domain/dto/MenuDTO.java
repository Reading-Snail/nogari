package nogari.system.menu.domain.dto;

import lombok.*;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Alias("MenuDTO")
@Getter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MenuDTO {
    private Menu master;
    private List<Menu> detail;
    @NoArgsConstructor
    @AllArgsConstructor
    @ToString
    @Getter
    public static class Menu{
        private String menuCd;
        private String menuNm;
        private int    sort;
        private String upperMenuCd;
        private String url;
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
}
