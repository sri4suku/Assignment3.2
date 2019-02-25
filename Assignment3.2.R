m <- 10
n <- 10
sinVal <- sin(.25*pi)

df<- as.data.frame(matrix (replicate(m, rnorm(n)) , m, n))
df
# Vectorized form 
system.time(apply(df,c(1,2), function(x) x+sinVal))

# non-Vectorized form 
system.time(
  for ( i in 1:m){
    for ( j in 1:n){
      df[i,j]<-(df[i,j]+ sinVal)
    }
  }
)

