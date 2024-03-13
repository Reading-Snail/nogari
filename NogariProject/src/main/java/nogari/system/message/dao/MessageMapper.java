package nogari.system.message.dao;

import nogari.system.message.domain.dto.MessageReqDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface MessageMapper {

    List<MessageReqDTO> selectMessage();
    MessageReqDTO selectMessageByMsgCd(String msgCd);
    void insertMessage(MessageReqDTO messageReqDTO);
    void updateMessage(MessageReqDTO messageReqDTO);
    void deleteMessage(String msgCd);


}
