package nogari.data.repository;

import nogari.data.jpa.entity.Message;
import nogari.data.jpa.repository.MessageRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class MessageRepositoryTest {
    private final MessageRepository messageRepository;
    @Autowired
    public MessageRepositoryTest(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }
    /**void
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