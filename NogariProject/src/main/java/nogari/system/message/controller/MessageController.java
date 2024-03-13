package nogari.system.message.controller;

import lombok.RequiredArgsConstructor;
import nogari.system.message.domain.dto.MessageReqDTO;
import nogari.system.message.domain.entity.Message;
import nogari.system.message.service.MessageService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.validation.Valid;
import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("${api.base-path}/messages")
@RequiredArgsConstructor
public class MessageController {

    private final MessageService messageService;
    /**
     * 메시지 전체 리스트 조회
     * @return
     */
    @GetMapping("")
    public ResponseEntity<List<MessageReqDTO>> messageList(){
        List<MessageReqDTO> messagesReqDTOs = messageService.findMessages();
        return new ResponseEntity<>(messagesReqDTOs,HttpStatus.OK);
    }
    /**
     * 메시지 단건 조회
     * @param msgCd
     * @return
     */
    @GetMapping("/{msgCd}")
    public ResponseEntity<MessageReqDTO> messageDetails(@PathVariable String msgCd){
        MessageReqDTO messageReqDTO = messageService.findMessageByMsgCd(msgCd);
        return new ResponseEntity<>(messageReqDTO, HttpStatus.OK);
    }
    /**
     * 메시지 단건 생성
     * @param messageReqDto
     * @return
     */
    @PostMapping("")
    public ResponseEntity<Void> messageAdd(@RequestBody MessageReqDTO messageReqDto, UriComponentsBuilder uriBuilder){
        Message saved =  messageService.saveMessage(messageReqDto);
        URI urilocation = uriBuilder.path("messages/{MsgCd}")
                .buildAndExpand(saved.getMsgCd())
                .toUri();
        return ResponseEntity.created(urilocation).build();
    }
    /**
     * 메시지 단건 수정
     * @param msgCd
     * @param messageReqDTO
     * @return
     */
    @PutMapping("/{msgCd}")
    public ResponseEntity<Void> messageModify(@PathVariable String msgCd, @RequestBody @Valid MessageReqDTO messageReqDTO){
        messageService.saveMessage(messageReqDTO);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
    /**
     * 메시지 단건 삭제
     * @param msgCd
     * @return
     */
    @DeleteMapping("/{msgCd}")
    public ResponseEntity<Void> messageRemove(@PathVariable String msgCd){
        messageService.deleteMessage(msgCd);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
    /**
     * 메시지 다건 삭제
     * @param msgCds
     * @return
     */
    @PostMapping("/delete-multi")
    public ResponseEntity<Void> messagesRemove(@RequestBody List<String> msgCds){
        messageService.deleteMessages(msgCds);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
