package nogari.exception;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import java.util.List;

@Component
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class ErrorResponse {

    private int status;
    private String code;
    private String message;
    private List<FieldError> errors;

    public ErrorResponse of(ErrorCode errorCode){
        this.status = errorCode.getStatus();
        this.code   = errorCode.getCode();
        this.message= errorCode.getMessage();
        //this.errors = bindingResult.get
        return this;
    }

    public void of(ErrorCode errorCode, BindingResult bindingResult){
        this.status = errorCode.getStatus();
        this.code   = errorCode.getCode();
        this.message= errorCode.getMessage();
        this.errors = bindingResult.getFieldErrors();

    }
}