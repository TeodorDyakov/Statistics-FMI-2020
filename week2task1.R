#намираме първо всички стойности в колоната Smoke
unique(survey$Smoke)

#вероятноста случайно избран човек да е редовен пушач
sum(survey$Smoke == 'Regul', na.rm = TRUE)/nrow(survey)

#вероятността случайно ибзбран човек да е мъж и редовен пушач
sum(survey$Smoke %in% c("Regul", "Heavy") & survey$Sex == 'Male', na.rm = TRUE)/nrow(survey)

#броят на всички мъже
maleNumber = sum(survey$Sex == 'Male', na.rm = TRUE)

#вероятността случайно избран мъж да е редовен пушач
sum(survey$Sex == 'Male' & survey$Smoke %in% c("Regul", "Heavy"), na.rm = TRUE)/maleNumber

#броят на всички редовни пушачи
regulOrHeavyCount = sum(survey$Smoke %in% c('Regul', 'Heavy'), na.rm = TRUE)

#вероятноста случайно избран редовен пушач да е мъж
sum(survey$Smoke %in% c("Regul", "Heavy") & survey$Sex == 'Male', na.rm = TRUE)/regulOrHeavyCount

#барплот на броя на типовете пушачи
barplot(table(survey$Smoke))
