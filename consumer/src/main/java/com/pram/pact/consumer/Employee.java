package com.pram.pact.consumer;
import lombok.*;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

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
    @With
    String name;
    Integer age;
    String email;
    String phone;
    String department;
    String salary;
    String designation;
}