package com.pram.pact.producer.unittests;

import com.pram.pact.producer.EmployeeController;
import com.pram.pact.producer.EmployeeService;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.ResponseEntity;

@ExtendWith(MockitoExtension.class)
public class EmployeeControllerTest {

    EmployeeService employeeService = new EmployeeService();

    EmployeeController employeeController;

    public EmployeeControllerTest(){
        employeeController = new EmployeeController(employeeService);
    }

    @Test
    public void testGetAllEmployee() throws JsonProcessingException {
        Assertions.assertThat(employeeController.getAllEmployee()).isInstanceOf(ResponseEntity.class);
    }

    @Test
    public void testGetBEmployeeById() throws JsonProcessingException {
        Assertions.assertThat(employeeController.getEmployeeWithEmployeeId("1")).isInstanceOf(ResponseEntity.class);
    }

    @Test
    public void testGetBEmployeeByIdNotFound() throws JsonProcessingException {
        Assertions.assertThat(employeeController.getEmployeeWithEmployeeId("9999")).isInstanceOf(ResponseEntity.class);
    }
}
