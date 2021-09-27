package com.sales.sales.controller;

import com.sales.sales.repository.SellersRepository;
import com.sales.sales.utility.Response;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SellersController {

    private final SellersRepository repository;

    public SellersController(SellersRepository repository) {
        this.repository = repository;
    }

    @GetMapping("AllSellers")
    public Response allSellers() {
        return Response.builder().code(200).status(true).data(repository.findAll()).message("OK").build();
    }

}
