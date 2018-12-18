package tn.iset.govsolution.rest;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import tn.iset.govsolution.dao.RegistrationDAO;
import tn.iset.govsolution.dao.RegistrationDAOImpl;
import tn.iset.govsolution.entity.Inscription;

import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/rest")
public class InsWebService {

    RegistrationDAO registrationDAO;

    public  InsWebService(){
        registrationDAO = new RegistrationDAOImpl();
    }


    @GetMapping("/inscription")
    public String getAll(){
        ObjectMapper om = new ObjectMapper();
        String res = null;
        try {
            res = om.writeValueAsString(registrationDAO.getInscriptions());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return res;
    }

    @GetMapping("/inscription/{id}")
    public String getOnce(@PathVariable("id") long id){
        ObjectMapper om = new ObjectMapper();
        String res = null;
        try {
            res = om.writeValueAsString(registrationDAO.getInscription(id));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return res;
    }



}
