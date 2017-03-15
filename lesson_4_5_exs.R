#Question A
sex <- c(1:20)
sex[c(1, 5:7, 12, 14:16)] <- "F" 
sex[sex != "F"] <- "M"

party <- c(1:20)
party[c(1, 4, 12, 15, 16, 19)] <- "Labour"
party[c(6, 9, 11)] <- "Greens"
party[c(10, 20)] <- "Other"
party[party != "Labour" & party != "Greens" & party != "Other"] <- "National"

#Question B
sex.fac <- factor(x=sex)
party.fac <- factor(x=party, levels=c("National", "Greens", "Labour", "Maori", "Other"))

#Question C
party.fac[sex.fac == "M"]
sex.fac[party.fac == "National"]

#Question D
new_parties <- factor(
  x=c("National", "Maori", "Maori", "Labour", "Greens", "Labour"), 
  levels=levels(party.fac)
)

levels(party.fac)[c(party.fac, new_parties)]

new_genders <- factor(
  x=c("M", "M", "F", "F", "F", "M"),
  levels=levels(sex.fac)
)
levels(sex.fac)[c(sex.fac, new_genders)]

#Question E
confidence_levels <- c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61)
brs <- c(0, 30, 70, 100)
conf.fac <- cut(x=confidence_levels, breaks=brs, include.lowest = TRUE)

#Question F
labs <- c("National", "Neutral", "Labour")
conf.fac.labels <- cut(x=confidence_levels, breaks=brs, include.lowest = TRUE, labels = labs)
