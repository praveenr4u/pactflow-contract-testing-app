package com.pram.pact.producer;
import jakarta.persistence.Id;
import lombok.*;

import jakarta.persistence.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder(setterPrefix = "with")
@Entity
@EqualsAndHashCode
public class Employee {
    @Id
    @GeneratedValue
    Integer id;
    Integer empId;
    String name;
    Integer age;
    String email;
    String phone;
    String department;
    String salary;
    String designation;
}