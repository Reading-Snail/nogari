package nogari.controller;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import nogari.data.jpa.entity.Message;
import nogari.data.jpa.entity.dto.MessageDTO;
import nogari.service.MessageService;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/message")
@AllArgsConstructor
@Slf4j
public class MessageController {

    private final MessageService messageService;
    private final ModelMapper modelMapper;

    @GetMapping("")
    @ResponseStatus(HttpStatus.OK)
    public List<MessageDTO> getMessage(){
        List<MessageDTO> messageDTOs = new ArrayList<>();
        Iterable<Message> messages = messageService.getMessage();
        messages.forEach(message -> messageDTOs.add(convertToDto(message)));
        return messageDTOs;
    }
    @PostMapping("")
    @ResponseStatus(HttpStatus.OK)
    public void createMessage(MessageDTO messageDTO){
        messageService.createMessage(convertToEntity(messageDTO));
    }
    @DeleteMapping("/{messageCd}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteMessageByCd(@PathVariable String messageCd){
        messageService.deleteMessageByCd(messageCd);
    }

    private Message convertToEntity(MessageDTO messageDto) {
        return modelMapper.map(messageDto, Message.class);

    }    private MessageDTO convertToDto(Message message) {
        return modelMapper.map(message, MessageDTO.class);
    }
}
