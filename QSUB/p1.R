args<-commandArgs(TRUE)

#print(length(args))
#print(args)

file = paste(args[1], '.csv', sep='')

x <- round(runif(20, min=30, max=60))
y <- round(rnorm(20, mean=55, sd=10))
s = c('F', 'M')
sexo = sample(s, 20, replace=T)

tabla = data.frame(x, y, sexo)

pat = '/misc/tournoux/santosg/ART/'

#file = 'datos.csv'

file = paste(pat, file, sep='')

write.csv(tabla,file)

