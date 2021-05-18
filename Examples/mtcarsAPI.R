# Fit the model:
m <- lm(mpg ~ hp + wt, data = mtcars)

#* Return the prediction:
#* @param hp
#* @param wt
#* @post /predictions
function(hp, wt)
{
  predict(m, newdata = data.frame(hp = as.numeric(hp),
                                  wt = as.numeric(wt)))
}
