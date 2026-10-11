# Employee Attrition Analysis using SQL

A data analytics project using **MySQL** to analyze employee attrition and identify workforce trends based on department, overtime, job satisfaction, monthly income, and age groups.

## 📌 Project Overview

Employee attrition is an important HR challenge that can affect productivity, employee morale, and recruitment costs. This project uses SQL to analyze employee data, identify patterns associated with employee turnover, and generate actionable insights that can support better HR decision-making.

The analysis focuses on understanding which employee groups experience higher attrition and which factors may be associated with employees leaving the organization.

## 🎯 Project Objectives

- Calculate the overall employee attrition rate.
- Analyze attrition across different departments.
- Compare attrition rates among employees working overtime and those who do not.
- Examine the relationship between job satisfaction and attrition.
- Analyze attrition across monthly income categories.
- Identify age groups with higher attrition rates.
- Generate data-driven insights and recommendations for HR teams.

## 🛠️ Tools & Technologies

- **Database:** MySQL
- **SQL Concepts:** SELECT, WHERE, GROUP BY, ORDER BY, CASE WHEN, aggregate functions, COUNT, percentage calculations, and conditional analysis.
- **IDE:** MySQL Workbench
- **Dataset:** Employee HR Attrition Dataset

## 📊 Key Business Questions

1. What is the overall employee attrition rate?
2. Which department has the highest attrition rate?
3. Does working overtime have an association with employee attrition?
4. How does job satisfaction relate to attrition?
5. Do employees in lower income categories experience higher attrition?
6. Which age group has the highest attrition rate?

## 📈 Key Findings

### 1. Overall Attrition

- Total employees analyzed: **1,470**
- Employees who left: **237**
- Employees who stayed: **1,233**
- Overall attrition rate: **16.12%**

Approximately 16 out of every 100 employees in the dataset left the organization.

### 2. Department-wise Attrition

| Department | Total Employees | Attrition Rate |
|---|---:|---:|
| Sales | 446 | 20.63% |
| Human Resources | 63 | 19.05% |
| Research & Development | 961 | 13.84% |

**Insight:** Sales has the highest attrition rate at 20.63%, followed by Human Resources at 19.05%. Research & Development has a comparatively lower attrition rate of 13.84%.

**Recommendation:** HR should investigate department-specific factors such as workload, career progression, compensation, and employee engagement, particularly within Sales.

### 3. Overtime and Attrition

| Overtime | Total Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| Yes | 416 | 127 | 30.53% |
| No | 1,054 | 110 | 10.44% |

**Insight:** Employees working overtime have an attrition rate of 30.53%, compared with 10.44% among employees who do not work overtime. This is a difference of approximately **20.09 percentage points**.

**Recommendation:** The organization should review overtime frequency, workload distribution, staffing levels, and work-life balance to identify potential retention risks.

### 4. Job Satisfaction and Attrition

| Job Satisfaction Score | Attrition Rate |
|---|---:|
| 1 | 22.84% |
| 2 | 16.43% |
| 3 | 16.52% |
| 4 | 11.33% |

**Insight:** Employees with a job satisfaction score of 1 have the highest attrition rate at 22.84%, while employees with a score of 4 have the lowest rate at 11.33%.

**Recommendation:** HR should investigate the concerns of employees reporting low job satisfaction and consider targeted engagement initiatives, feedback sessions, and improvements to the employee experience.

### 5. Monthly Income and Attrition

The following income categories were created using SQL `CASE WHEN` logic:

- **Low Income:** Monthly income ≤ 5,000
- **Medium Income:** Monthly income > 5,000 and ≤ 10,000
- **High Income:** Monthly income > 10,000

| Income Category | Total Employees | Attrition Rate |
|---|---:|---:|
| Low Income | 749 | 21.76% |
| Medium Income | 440 | 11.14% |
| High Income | 281 | 8.90% |

**Insight:** The low-income category has the highest attrition rate at 21.76%, compared with 8.90% in the high-income category.

**Recommendation:** The organization should review compensation competitiveness, pay progression, and career development opportunities for employees in the lower income category.

*Note: These income bands are analytical categories created for this project and do not represent official salary grades.*

### 6. Age Group and Attrition

Employees were categorized into three age groups: Under 30, 30–40, and Above 40.

| Age Group | Total Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| Under 30 | 326 | 91 | 27.91% |
| 30–40 | 679 | 94 | 13.84% |
| Above 40 | 465 | 52 | 11.18% |

**Insight:** Employees under 30 have the highest attrition rate at 27.91%. The rate decreases to 13.84% for employees aged 30–40 and 11.18% for employees above 40.

**Recommendation:** HR could focus on early-career retention through mentorship, career development, onboarding support, and clear progression opportunities.

## 🖼️ SQL Query Screenshots

### Age Group Attrition Analysis

![Age Group Attrition Analysis](screenshots/Screenshot%202026-10-11%20164710.png)

### Overtime Attrition Analysis

![Overtime Attrition Analysis](screenshots/Screenshot%202026-10-11%20164753.png)

## 💡 Overall Business Recommendations

Based on the analysis, the following actions may help the organization investigate and address employee attrition:

1. **Review overtime practices:** Examine workload distribution and work-life balance for employees who regularly work overtime.
2. **Prioritize early-career retention:** Develop mentorship programs, learning opportunities, and structured career paths for employees under 30.
3. **Investigate department-level trends:** Review the reasons for higher attrition in Sales and Human Resources.
4. **Improve employee satisfaction:** Use feedback and engagement surveys to understand the concerns of employees with lower satisfaction scores.
5. **Review compensation and growth opportunities:** Evaluate salary progression and career development for employees in lower income categories.
6. **Monitor attrition regularly:** Track attrition rates across departments and employee groups to identify changes over time.

*These recommendations are based on observed associations in the dataset. The analysis does not establish that any single factor directly causes employees to leave.*

## 🧠 Skills Demonstrated

- Data querying and exploration using SQL
- Data aggregation and grouping
- Conditional logic using `CASE WHEN`
- Attrition rate and percentage calculations
- HR data analysis
- Comparative analysis across employee segments
- Business insight generation
- Data-driven recommendation development

## 📁 Repository Structure

```text
employee-attrition-sql-analysis/
│
├── README.md
├── employee_attrition_analysis.sql
│
└── screenshots/
    ├── Screenshot 2026-10-11 164710.png
    └── Screenshot 2026-10-11 164753.png
```

## 🚀 How to Run the Project

1. Clone or download this repository.
2. Open MySQL Workbench.
3. Connect to your MySQL database.
4. Import or select the employee attrition dataset.
5. Open `employee_attrition_analysis.sql`.
6. Execute the queries to reproduce the analysis.
7. Review the results and compare them with the findings documented above.

*Ensure the dataset and table names in the SQL script match your database setup.*

## 👨‍💻 Author

**Nihit Mishra**

Aspiring Data Analyst | SQL | Python | Power BI

This project demonstrates how SQL can be used to transform employee data into meaningful HR insights and practical business recommendations.

---

⭐ If you find this project useful, feel free to explore the repository and share your feedback.
