# Employee Management System

A Java-based Employee Management System developed using **Servlet**, **JSP**, **JDBC**, and **Oracle Database** following the **MVC (Model-View-Controller)** architecture. This project allows users to add and view employee records through a web interface.

---

## 🚀 Features

- Add Employee
- View Employee
- Update Employee *(In Progress)*
- Delete Employee *(In Progress)*
- MVC Architecture
- Oracle Database Integration
- JDBC Connectivity
- Apache Tomcat 9 Deployment

---

## 🛠️ Tech Stack

- Java
- Servlet
- JSP
- JDBC
- Oracle Database
- Apache Tomcat 9
- HTML5
- CSS3
- Eclipse IDE

---

## 📂 Project Structure

```
src/main/java
├── com.bean
│   └── EmployeeBean.java
│
├── com.dao
│   ├── DBConnect.java
│   ├── AddEmpDAO.java
│   └── ViewEmployeeDAO.java
│
└── com.servlet
    ├── AddEmpServlet.java
    └── ViewEmployeeServlet.java

src/main/webapp
├── index.html
├── AddEmployee.jsp
├── viewEmployee.jsp
└── WEB-INF
    └── web.xml
```

---

## 🏗️ Architecture

The project follows the **MVC (Model-View-Controller)** design pattern.

- **Model** → EmployeeBean
- **View** → JSP Pages
- **Controller** → Servlets
- **DAO Layer** → JDBC Database Operations
- **Database** → Oracle Database

---

## 🗄️ Database

Database Used:

- Oracle Database

Example table:

```sql
Employee_Details
------------------------
e_id
e_fname
e_lname
e_sal
address
```

---

## ▶️ How to Run

1. Clone this repository.
2. Import the project into Eclipse IDE.
3. Configure Apache Tomcat 9.
4. Create the Oracle database and Employee_Details table.
5. Update the database connection details in `DBConnect.java`.
6. Run the project on Tomcat Server.
7. Open the application in your browser.

---

## 📌 Current Status

- ✅ Add Employee
- ✅ View Employee
- 🚧 Update Employee
- 🚧 Delete Employee

---

## 📈 Future Enhancements

- Employee Search
- Employee Update
- Employee Delete
- Form Validation
- Login Authentication
- Pagination

---

## 👨‍💻 Author

**Saif Ali**

GitHub: https://github.com/alisaif786
