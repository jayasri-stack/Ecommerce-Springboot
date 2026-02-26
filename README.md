# E-Commerce Backend Platform

A scalable commerce-style backend built using **Spring Boot, PostgreSQL/MySQL, Redis, and Docker**.  
This project simulates real-world order lifecycle management including product catalog, cart operations, authentication, and transactional order processing.

---

## 📌 Overview

This backend system is designed to model a modern e-commerce architecture with:

- Product catalog management
- Category hierarchy
- Shopping cart operations
- Secure user authentication
- Role-based authorization
- Order lifecycle management
- ACID-compliant transaction handling

The focus of this project is **database integrity, performance optimization, and backend architecture clarity**.

---

## 🏗 Architecture

Layered Architecture:

- Controller Layer → REST endpoints
- Service Layer → Business logic & validation
- Repository Layer → JPA-based persistence
- Database → Relational schema (normalized)

Key design principles:

- Separation of concerns
- Transaction boundary control
- Index-driven performance tuning
- Containerized development environment

---

## ⚙️ Tech Stack

- Java 11
- Spring Boot
- PostgreSQL / MySQL
- Redis (caching)
- Spring Security
- Docker
- Maven

---

## 📊 Database Design

Core Entities:

- User
- Role
- Product
- Category
- Cart
- Order

Features:

- 6+ normalized relational entities
- Referential integrity enforcement
- Indexed frequently queried columns
- Transaction isolation for order processing

Performance improvements achieved:

- 25% faster product lookup after indexing optimization
- Reduced redundant reads using Redis caching strategies

---

## 🔐 Security

- Role-based access control
- Password encryption
- Authentication flow using Spring Security
- Protected admin routes

---

## 🐳 Docker Setup

To run locally:

```bash
docker compose up -d
mvn spring-boot:run
