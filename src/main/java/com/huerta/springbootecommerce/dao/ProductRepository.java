package com.huerta.springbootecommerce.dao;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.huerta.springbootecommerce.entity.Product;

public interface ProductRepository extends JpaRepository<Product, UUID> {

}
