package nogari.system.message.service;

import lombok.RequiredArgsConstructor;
import nogari.system.message.dao.MessageMapper;
import nogari.system.message.domain.dto.MessageReqDTO;
import nogari.system.message.domain.entity.Message;
import nogari.system.message.repository.MessageRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class MessageServiceImpl implements MessageService{

    private final MessageMapper messageMapper;
    private final MessageRepository messageRepository;

    @Override
    @Transactional(readOnly = true)
    public List<MessageReqDTO> findMessages() {
        // 모든 message 전체 조회
        Iterable<Message> messages = messageRepository.findAll();
        // List<message> -> List<messageReqDTO> 로 변환
        List<MessageReqDTO> messageReqDTOs = new ArrayList<>();
        messages.forEach((message)->{messageReqDTOs.add(message.toReqDTO());});
        // List<messageReqDTO> 반환
        return messageReqDTOs;
    }

    @Override
    @Transactional(readOnly = true)
    public MessageReqDTO findMessageByMsgCd(String msgCd) {
        // message 단건 조회
        Optional<Message> message = messageRepository.findById(msgCd);
        MessageReqDTO messageReqDTO;

        if (message.isPresent()) {
            messageReqDTO = message.get().toReqDTO();
        } else {
            throw new RuntimeException("Message was not found");
        }

        return messageReqDTO;
    }

    @Override
    @Transactional
    public Message saveMessage(MessageReqDTO messageReqDTO) {
        Message message = messageReqDTO.toEntity();
        return messageRepository.save(message);
    }
    
    @Override
    @Transactional
    public void deleteMessage(String msgCd) {
        messageRepository.deleteById(msgCd);
    }
    
    @Override
    @Transactional
    public void deleteMessages(List<String> msgCds) {
        messageRepository.deleteAllById(msgCds);
    }
}
