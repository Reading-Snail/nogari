package nogari.system.message.service;

import nogari.system.message.domain.dto.MessageReqDTO;
import nogari.system.message.domain.entity.Message;

import java.util.List;

public interface MessageService {

    List<MessageReqDTO> findMessages();
    MessageReqDTO findMessageByMsgCd(String msgCd);
    Message saveMessage(MessageReqDTO deptDTO);
    void deleteMessage(String msgCd);
    void deleteMessages(List<String> msgCds);
}
