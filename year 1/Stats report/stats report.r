banana.data = read.csv("banana.csv", header = TRUE)
attach(banana.data)
summary(Size)
summary(Weight)
summary(Sweetness)
summary(Softness)
summary(Ripeness)
summary(Acidity)
summary(HarvestTime)
qqnorm(Size)
qqnorm(Weight)
qqnorm(Sweetness)
qqnorm(Softness)
qqnorm(Ripeness)
qqnorm(Acidity)
df = data.frame(Size,Weight)
pairs(df)
df1 = data.frame(Size,Sweetness)
pairs(df1)
df2 = data.frame(Size,Softness)
pairs(df2)
df3 = data.frame(Size,Ripeness)
pairs(df3)
df4 = data.frame(Size,Acidity)
pairs(df4)
good = subset(banana.data,Quality == "Good")
hist(good$HarvestTime,main="Harvest Time of Good Bananas",xlab ="Harvest Time" )
bad = subset(banana.data,Quality == "Bad")
hist(bad$HarvestTime,main="Harvest Time of Bad Bananas",xlab ="Harvest Time" )
boxplot(Size~Quality,data = banana.data)
boxplot(Weight~Quality,data = banana.data)
boxplot(Sweetness~Quality,data = banana.data)
boxplot(Softness~Quality,data = banana.data)
boxplot(Ripeness~Quality,data = banana.data)
boxplot(Acidity~Quality,data = banana.data)