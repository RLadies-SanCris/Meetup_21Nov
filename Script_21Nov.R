#install.packages("ggplot2")

#Swisss Fertility ans Socieconomic Indicators Data(1888)
data(swiss)
head(swiss)
colnames(swiss) 
ncol(swiss)

min(swiss$Education)
max(swiss$Catholic)

maxEducation <- swiss[which.max(swiss$Education), ]
Pais.maxEducation <- row.names(swiss[which.max(swiss$Catholic), ] )

rownames(swiss)[swiss$Education == "2"]

subset(swiss, swiss$Education== min(swiss$Education))
subset(swiss, swiss$Education== "1")

colnames(swiss)
class(swiss)
names(swiss) <- c("Fertility","Agriculture","Examination" ,"Education","Catholic","Infant.Mortality")
attach(swiss)
swiss[ , 1]

row.names(swiss)
nrow(swiss)
max(swiss$Catholic)

# Un triste barplot:
barplot(swiss$Catholic)
# Edicion del plot: 
barplot(swiss$Catholic, names.arg = row.names(swiss), nrow(swiss), las=2, col = "lightgreen", xlab = "Países en Suiza", ylab = "Frecuencia", axisnames = T, cex.names =  0.5, cex.axis = 0.5,  col.lab = "thistle" , col.axis = "sky blue" ,main = "Religión Católica",font= 4, col.main= "darkblue", axes = F, border = F, space =0.001)


library(ggplot2)
ggplot(swiss, aes(x =Catholic )) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "white") +
  labs(title = "Religión Catóica",
       x = "Católicos",
       y = "Frecuencia") +
  theme_minimal()+
  geom_labelaes((fill = factor(cyl)), colour = "white", fontface = "bold")



