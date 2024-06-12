
package org.example.cms.controller;


import org.example.cms.model.Customer;
import org.example.cms.service.CustomerService;
import org.example.cms.service.CustomerServiceFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CustomerController {
    private CustomerService customerService = CustomerServiceFactory.getInstance();
    @GetMapping("/customers")
    public String showList(HttpServletRequest request) {
            List<Customer> customers = customerService.findAll();
            request.setAttribute("customers", customers);
        return "/customers/list.jsp";
    }

    @GetMapping("/info")
    public String showInfo() {
        System.out.println("Hello Info JSP");
        return "/customers/info.jsp";
    }
}
