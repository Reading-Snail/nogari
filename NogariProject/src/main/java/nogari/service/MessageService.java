package nogari.service;

import nogari.data.jpa.entity.Message;
import nogari.data.jpa.entity.dto.MessageDTO;

    public interface MessageService {
        public void createMessage(Message message);

        Iterable<Message> getMessage();

        void deleteMessageByCd(String messageCd);
    }
