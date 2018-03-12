n <- length(data)
for(i in 4:n){
  Sys.sleep(0.1)
  plot(x=1:i,y=data[1:i],xlim=c(0,n),ylim=range(data))
  ansvar=cpt.meanvar(data[1:i])
  changepoints <- cpts(ansvar)
  if(length(ansvar@cpts)>0){
    abline(v=changepoints, col = "blue")
  }
}