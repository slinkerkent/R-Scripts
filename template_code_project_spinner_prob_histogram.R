###########################################################
require(ggplot2)
pdata=data.frame(outcomes=c(1,2,3,4,5,6,7,8,9,10,11),probs=c(1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36),lbs=c(2,3,4,5,6,7,8,9,10,11,12))
pdata

ggplot(pdata, aes(x=outcomes)) + 
  geom_col(aes(y=probs),color='black',fill='darkolivegreen1',width=1,size=1)+
  scale_x_continuous(name = 'x',breaks = NULL,limits = c(0, 12)) +
  scale_y_continuous(name = 'p(x)', breaks=seq(0,1/6,1/36))+
  geom_text(
    aes(y=0.01,label = lbs),
    colour = "red", size = 6)+
  labs(title = 'Probability Histogram for \nthe sum of two 6-sided dice')+
  theme_classic(base_size = 14)

###############################################################
