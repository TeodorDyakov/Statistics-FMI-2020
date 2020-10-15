library(MASS)

#намираме първо всички стойности в колоната Smoke
unique(survey$Smoke)

#Задача 1
#вероятноста случайно избран човек да е редовен пушач
sum(survey$Smoke == 'Regul', na.rm = TRUE)/nrow(survey)

maleSmokers = sum(survey$Smoke %in% c("Regul", "Heavy") & survey$Sex == 'Male', na.rm = TRUE)

#вероятността случайно ибзбран човек да е мъж и редовен пушач
maleSmokers/nrow(survey)

#броят на всички мъже
maleNumber = sum(survey$Sex == 'Male', na.rm = TRUE)

#вероятността случайно избран мъж да е редовен пушач
prob = maleSmokers/maleNumber

#броят на всички редовни пушачи
regulOrHeavyCount = sum(survey$Smoke %in% c('Regul', 'Heavy'), na.rm = TRUE)

#вероятноста случайно избран редовен пушач да е мъж
maleSmokers/regulOrHeavyCount

#Зад 2
#барплот на броя на типовете пушачи
barplot(table(survey$Smoke))

#пушене в зависимост от пола
barplot(c(maleSmokers, maleNumber - maleSmokers), names.arg = c('male smokers', 'male non-smokers'))

#Зад 3
#некви статистики
summary(survey$Height)
heightMean = mean(survey$Height, na.rm = TRUE)
heightSd = sd(survey$Height, na.rm = TRUE)


maleHeights = survey[survey$Sex == 'Male', 'Height']
summary(maleHeights)
sd(maleHeights, na.rm = TRUE)

femaleHeights = survey[survey$Sex == 'Female', 'Height']
summary(femaleHeights)
sd(femaleHeights, na.rm = TRUE)

#каква част от студентите се различават от ср. височина с <= 1 стандартно отклонение?
sum(abs(survey$Height - heightMean) <= heightSd, na.rm = TRUE)/sum(!is.na(survey$Height))

#Зад 4
hist(survey$Height, breaks = 20)

#Зад 5
#хистограма на пулса на студентите
hist(survey$Pulse)

#графика плътността на разпределението на пулса 
plot(density(survey$Pulse, na.rm = TRUE))

#Зад 6
group1 = survey[survey$Age < 20,]
group2 = survey[survey$Age >= 20 & survey$Age < 25,]
group3 = survey[survey$Age >= 25,]

pie(x = c(nrow(group1), nrow(group3), nrow(group3)), labels = c('< 20', '20-25', '> 25'), main = 'Age of students')

barplot(table(group1$Smoke), main = 'smoking habits, < 20 years')
barplot(table(group2$Smoke), main = 'smoking habits, 20-25 years')
barplot(table(group3$Smoke), main = 'smoking habits, > 25 years old')
