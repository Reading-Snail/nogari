package nogari.service.imp;

import lombok.AllArgsConstructor;
import nogari.data.jpa.entity.Message;
import nogari.data.jpa.entity.dto.MessageDTO;
import nogari.data.jpa.repository.MessageRepository;
import nogari.service.MessageService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@AllArgsConstructor
public class MessageServiceImp implements MessageService {

    private final MessageRepository messageRepository;
    private final ModelMapper modelMapper;

    public Iterable<Message> getMessage(){
        return messageRepository.findAll();
    }
    public void createMessage(Message message){
        messageRepository.saveAndFlush(message);
    }
    public void deleteMessageByCd(String messageCd){
        messageRepository.deleteById(messageCd);
    }
}
