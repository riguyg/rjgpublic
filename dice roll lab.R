

#make a random sample of rolling a 6-sided dice 5 times
set.seed(2) #returns the same value every time
dice_roll <- sample(1:6, 5, replace=TRUE)
dice_roll
mean(dice_roll)

my_dice_roll <- function(x, y) {
  values <- sample(x, y, replace=TRUE)
  print(mean(values))
  print(sum(values))
  hist(values)
}

#want to calculate the expected value over the course of many trials of rolling a six-sided dice 5 times, so write another function
dice_with_EV <- function(a) {
  values <- replicate(a, sum(sample(1:6, 5, replace=TRUE)))
  hist(values)
}
dice_with_EV(1000000)
my_dice_roll(10)
my_dice_roll(100)
my_dice_roll(1000)
