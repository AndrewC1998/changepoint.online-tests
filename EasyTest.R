n <- length(data)
for(i in 4:n){
  Sys.sleep(0.1)
  plot(x=1:i,y=data[1:i],xlim=c(0,n),ylim=range(data)) 
  ansvar=cpt.meanvar(data[1:i],method="BinSeg",Q=3,penalty="Manual",pen.value=2*log(n))
  changepoints <- cpts(ansvar)
  if(length(ansvar@cpts)>0){
    for(i in 1:3){
    abline(v=changepoints, col = "blue")
    }
  }
 }
