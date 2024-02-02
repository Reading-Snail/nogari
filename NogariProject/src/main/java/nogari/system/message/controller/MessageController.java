package nogari.system.message.controller;

import lombok.RequiredArgsConstructor;
import nogari.system.message.domain.dto.MessageDTO;
import nogari.system.message.service.MessageService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/messages")
@RequiredArgsConstructor
public class MessageController {

    private final MessageService messageService;
    /**
     * 메시지 전체 리스트 조회
     * @return
     */
    @GetMapping("")
    public ResponseEntity<List<MessageDTO>> messageList(){
        List<MessageDTO> messages = messageService.findMessages();
        return new ResponseEntity<>(messages,HttpStatus.OK);
    }
    /**
     * 메시지 단건 조회
     * @param msgCd
     * @return
     */
    @GetMapping("/{msgCd}")
    public ResponseEntity<MessageDTO> messageDetails(@PathVariable String msgCd){
        MessageDTO message = messageService.findMessageByMsgCd(msgCd);
        return new ResponseEntity<>(message, HttpStatus.OK);
    }
    /**
     * 메시지 단건 생성
     * @param messageDto
     * @return
     */
    @PostMapping("")
    public ResponseEntity<Integer> messageAdd(@RequestBody MessageDTO messageDto){
        Integer createdRow = messageService.createMessage(messageDto);
        return new ResponseEntity<>(createdRow, HttpStatus.CREATED);
    }
    /**
     * 메시지 단건 수정
     * @param msgCd
     * @param messageDTO
     * @return
     */
    @PutMapping("/{msgCd}")
    public ResponseEntity<Integer> ResponseEntity(@PathVariable String msgCd, @RequestBody @Valid MessageDTO messageDTO){
        int editeddRows = messageService.editMessage(messageDTO);
        return new ResponseEntity<>(editeddRows, HttpStatus.OK);
    }
    /**
     * 메시지 단건 삭제
     * @param msgCd
     * @return
     */
    @DeleteMapping("/{msgCd}")
    public ResponseEntity<Integer> deptRemove(@PathVariable String msgCd){
        int deletedRows = messageService.deleteMessage(msgCd);
        return new ResponseEntity<>(deletedRows, HttpStatus.OK);
    }
    /**
     * 메시지 다건 삭제
     * @param messageDTOs
     * @return
     */
    @DeleteMapping("")
    public ResponseEntity<Integer> deptRemove(@RequestBody @Valid List<MessageDTO> messageDTOs){
        int deletedRow = messageService.deleteMessage(messageDTOs);
        return new ResponseEntity<>(deletedRow,HttpStatus.OK);
    }
}
