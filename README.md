# abap-data-modeling-cds

# Data Modelling in ABAP Dictionary and ABAP Core Data Services

This repository contains a comprehensive set of exercises and source code developed during my training in **SAP S/4HANA ABAP Development**. The focus is on modern data modeling techniques, moving from classic ABAP Dictionary objects to advanced Core Data Services (CDS).

## 🎓 Curriculum Overview
The project is structured according to the following learning units:

### Unit 1: Exploring Data Modeling in ABAP
* Analysis of the relationship between the ABAP Dictionary and the Database layer.
* Introduction to CDS Objects and their role in the SAP HANA strategy.

### Unit 2: Creating Database Tables
* **Domains & Data Elements:** Defined technical and semantic attributes for custom data (e.g., Employee IDs, Salary, Dates).
* **Table Definitions:** Built the physical database table `z6350employ` to store persistent data.
* **Table Maintenance:** Managed changes and technical settings for database tables.

### Unit 3: Defining Global Data Types
* **Structures:** Created reusable structures like `z6350s_address` and `z6350s_person` to group related business data.
* **Table Types:** Defined global internal table types (e.g., `z6350t_persons`) for efficient data handling in ABAP programs.

### Unit 4: Defining Basic CDS Views
* **Core Data Services (CDS):** Developed DDL (Data Definition Language) files.
* **Annotations:** Used `@EndUserText.label` and other metadata to enhance the views.
* **View on a View:** Implemented hierarchical modeling by building `z6350_r_employee` on top of existing data sources.

---

## 🛠 Technical Object Mapping
Below is a guide to the files uploaded in the `/src` folder:

| Object Type | File Extension | Example Files |
| :--- | :--- | :--- |
| **Domains** | `.doma.xml` | `z6350_amount`, `z6350_employee_id` |
| **Data Elements** | `.dtel.xml` | `z6350_annual_salary`, `z6350_birth_date` |
| **Tables & Structures** | `.tabl.xml` | `z6350employ` (Table), `z6350s_address` (Structure) |
| **Table Types** | `.ttyp.xml` | `z6350t_addresses`, `z6350t_persons` |
| **CDS Views** | `.asddls` | `z6350_r_employee` |
| **ABAP Classes** | `.clas.abap` | `z6350_s4d430_check_and_fill` (Data Generator) |

---

## 🚀 Tools Used
* **Eclipse IDE:** Used with ABAP Development Tools (ADT).
* **abapGit:** Utilized for version control and exporting objects from the SAP system to GitHub.
* **SAP S/4HANA:** The underlying environment for data modeling and execution.

---
*Last Updated: May 2026*
