package nogari.data.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 *
 */
@Repository
@Mapper
public interface TestMapper {
    public Integer test(String findStr);
}