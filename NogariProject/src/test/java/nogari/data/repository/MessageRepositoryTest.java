package nogari.data.repository;

import lombok.AllArgsConstructor;
import nogari.data.entity.Message;
import nogari.data.entity.dto.MessageDto;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.Entity;
import javax.persistence.EntityManager;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class MessageRepositoryTest {
    private final MessageRepository messageRepository;
    @Autowired
    public MessageRepositoryTest(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }
    /**
     * 메세지 저장 테스트
     */
    @Test
    void save_Test(){
        Message message = new Message();
        message.setDescription("서비스 점검 중 입니다.");
        messageRepository.save(message);
        assertThat(1 == messageRepository.count());
    }

}