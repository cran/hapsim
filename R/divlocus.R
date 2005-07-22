"divlocus" <-
function(x){
   n <- nrow(x)
   hp.div <- apply(x, 2, function(x) ( 2 * ( n * sum(x^2) - sum(x)^2 ) ) )
   return(hp.div)
}

