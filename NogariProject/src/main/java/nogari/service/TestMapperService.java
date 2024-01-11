package nogari.service;

import nogari.data.mapper.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestMapperService {

    @Autowired
    TestMapper testMapper;

    public String testMapper() {
        return testMapper.test();
    }
}
