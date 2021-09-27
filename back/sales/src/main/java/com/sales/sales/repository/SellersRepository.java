package com.sales.sales.repository;

import com.sales.sales.entity.Sellers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface SellersRepository extends JpaRepository<Sellers, BigInteger> {
}
