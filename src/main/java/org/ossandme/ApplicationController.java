package org.ossandme;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ApplicationController {

    @RequestMapping(value = "/create-client", method = RequestMethod.GET)
    public String getCreateClientForm() {
        return "NewClientForm";
    }

    @RequestMapping(headers = "Content-Type=application/json", value = "submit-create-client", method = RequestMethod.POST)
    @ResponseStatus(value = HttpStatus.OK)
    public void processSubmitCreateClient(@RequestBody List<Map<String, String>> client) throws Exception {

        Map<String, String> formInputs = new HashMap<String, String>();

        for (Map<String, String> formInput : client) {
            formInputs.put(formInput.get("name"), formInput.get("value"));
        }

        System.out.println(formInputs);
    }

}