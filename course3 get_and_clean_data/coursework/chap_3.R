library(tidyr)
students
gather(students, sex, count, -grade)

students2
res <- gather(students2, key = sex_class, value = count, -grade)
res

separate(res, sex_class, c("sex", "class"))

students3

