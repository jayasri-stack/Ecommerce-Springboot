# Ecommerce-Springboot

A lightweight Spring Boot e‑commerce demo application (JSP + Spring MVC, Spring Data JPA, Spring Security). This repo contains the source for a small storefront supporting products, categories, user accounts and a shopping cart — useful as a learning/demo project or a starting point for a production app.

---

## 🚀 Quick start
Prerequisites:
- Java 11 (JDK 11)
- Maven 3.6+
- MySQL (or use the provided Docker compose)

Run locally (using embedded Tomcat):

1) Start a local MySQL (or use Docker compose below).
2) Configure DB in `Project/src/main/resources/application.properties` (defaults create database `ecommjava`).
3) Build and run:

```bash
# from repository root
cd E-commerce-project-springBoot/Project
mvn -DskipTests spring-boot:run
# or build JAR
mvn -DskipTests clean package
java -jar target/*.jar
```

Open: http://localhost:8080/

---

## 🧭 Project structure (important paths)
- `Project/src/main/java/com/jtspringproject/JtSpringProject` — application sources
  - `controller/` — MVC controllers (user, admin, error pages)
  - `models/` — JPA entities (User, Product, Cart, Category, ...)
  - `dao/` & `services/` — persistence + business logic
  - `configuration/` — security & app configuration
- `Project/src/main/webapp/views/` — JSP views (UI)
- `Project/src/main/resources/application.properties` — application configuration
- `Project/pom.xml` — Maven module (Java 11)

---

## 🔧 Configuration
The app reads DB settings from `application.properties`. Example (defaults present in repo):

```properties
# Project/src/main/resources/application.properties
db.url=jdbc:mysql://localhost:3306/ecommjava?createDatabaseIfNotExist=true
db.username=root
db.password=
server.port=8080
```

To use environment variables instead (recommended for CI/production), set:
- SPRING_DATASOURCE_URL
- SPRING_DATASOURCE_USERNAME
- SPRING_DATASOURCE_PASSWORD

### Docker (quick MySQL)
Save this snippet as `docker-compose.yml` and run `docker compose up -d`:

```yaml
version: '3.8'
services:
  db:
    image: mysql:8.0
    environment:
      MYSQL_DATABASE: ecommjava
      MYSQL_ROOT_PASSWORD: root
    ports:
      - "3306:3306"
    healthcheck:
      test: ["CMD", "mysqladmin", "ping", "-h", "localhost"]
      interval: 10s
      retries: 5
```

Then run the app normally; it will connect to `jdbc:mysql://localhost:3306/ecommjava`.

---

## ✅ Common tasks
- Run tests: `mvn test`
- Package: `mvn -DskipTests clean package`
- Run in dev: `mvn spring-boot:run`
- Open database console: connect to `ecommjava` using MySQL client

---

## 🔎 Useful endpoints (UI-driven JSP app)
- Home / catalog: `/`  
- Admin UI: see `AdminController` (protecting routes via Spring Security)
- Sign up / login: handled by `UserController`

(For programmatic API routes, inspect `controller/` for exact mappings.)

---

## 🛠️ Development notes
- Java version: 11 (see `Project/pom.xml`)
- Persistence: Spring Data / Hibernate (MySQL dialect configured)
- Views: JSP + JSTL (embedded Tomcat + jasper)
- Security: Spring Security is configured; check `configuration/SecurityConfiguration.java` for roles and URL protection

---

## ✅ Contribution & PRs
1. Fork the repo
2. Create a branch for your change
3. Open a PR against `main` with a clear description

---

## ⚠️ Known setup caveats
- The project uses JSPs and requires the `spring.mvc.view.prefix`/`suffix` values in `application.properties` — keep those if you reorganize views.
- If Hibernate fails to create schema, ensure the DB user has permissions and `hibernate.hbm2ddl.auto` is set appropriately for your env.

---

## 📚 Where to look next
- Start with `Project/src/main/java/com/jtspringproject/JtSpringProject/controller/UserController.java` for auth flows.
- See `Project/src/main/resources/application.properties` for DB and view settings.

---

If you'd like, I can:
- Commit & push this README and open a PR for you ✅
- Add a CI badge and usage examples (Postman collection) 🧾
- Create a minimal `docker-compose.yml` and a `Makefile` to simplify local dev 🐳

