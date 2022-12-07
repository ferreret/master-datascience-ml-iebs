# IEBS

## Ejercicios con dplyr

# -------------------------
# Carga el dataset Salaries.csv

df = read.csv("data/Salaries.csv")
df

# -------------------------
# Importa dplyr y magrittr

library(dplyr)
library(magrittr)

# -------------------------
# Muestra las primeras filas del dataframe

head(df)

# -------------------------
#  ¿Cual es la media del salario base, BasePay?

df %>%
  summarise(
    avg_BasePay=mean(BasePay, na.rm=TRUE)
  )

# -------------------------
# ¿Cuál es el mayor número de horas extra pagadas (OvertimePay)?

df %>%
  summarise(
    max_OvertimePay=max(OvertimePay, na.rm=TRUE)
  )
  
# -------------------------
# ¿Cual es el titulo del trabajo (JobTitle) del empleado JOSEPH DRISCOLL?

df %>% 
  filter(EmployeeName == "JOSEPH DRISCOLL") %>%
  select(JobTitle)
  


# -------------------------
# ¿Cuanto gana este empleado en total (TotalPayBenefits)?

df %>% 
  filter(EmployeeName == "JOSEPH DRISCOLL") %>%
  select(TotalPayBenefits)

# -------------------------
# ¿Cómo se llama la persona que más gana?

df %>%
  arrange(-TotalPayBenefits) %>%
  head(1) %>%
  select(EmployeeName)

# -------------------------
# ¿Cual es la paga media por años?

df %>% 
  group_by(Year) %>%
  summarise(avg_year=mean(TotalPay, na.rm=TRUE))

# -------------------------
# ¿Cuántos trabajos únicos hay?

length(unique(df$JobTitle))

