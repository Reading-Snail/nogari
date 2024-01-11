package nogari.controller;

import lombok.AllArgsConstructor;
import nogari.data.entity.dto.MessageDTO;
import nogari.service.MessageService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
public class MessageController {

    private final MessageService messageService;

    @PostMapping("/message")
    @ResponseStatus(HttpStatus.OK)
    public void saveMessage(MessageDTO messageDTO){
        messageService.saveMessage(messageDTO);
    }

}
