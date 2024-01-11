package nogari.service;

import lombok.AllArgsConstructor;
import nogari.data.entity.Message;
import nogari.data.entity.dto.MessageDTO;
import nogari.data.repository.MessageRepository;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class MessageService {

    private final MessageRepository messageRepository;
    private final ModelMapper modelMapper;


    public void saveMessage(MessageDTO messageDTO){
        Message message = modelMapper.map(messageDTO, Message.class);
        messageRepository.save(message);
    }
}
