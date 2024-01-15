package nogari.config;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JpaConfig {

    /**
     * DTO <=> Entity 형변환
     */
    @Bean
    public ModelMapper modelMapper(){
        return new ModelMapper();
    }
}
