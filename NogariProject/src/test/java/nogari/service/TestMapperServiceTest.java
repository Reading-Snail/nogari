package nogari.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class TestMapperServiceTest {

    @Autowired
    TestMapperService testMapperService;

    @Test
    void testMapper_test(){
        assertThat("HELLOWORLD".equals( testMapperService.testMapper()));
    }
}