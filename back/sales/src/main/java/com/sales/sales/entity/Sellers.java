package com.sales.sales.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigInteger;

@Entity
@Table(name = "sellers", schema = "public")
@Getter
@Setter
public class Sellers {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private BigInteger id;

    @Column(name = "name", nullable = false, length = 20)
    private String name;
}
