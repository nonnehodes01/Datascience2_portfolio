#Functie 1: Calculator
calculator <- function(num1, num2, operator) {
  result <- 0
  
  if (operator == "+") {
    result <- num1 + num2
  } else if (operator == "-") {
    result <- num1 - num2
  } else if (operator == "*") {
    result <- num1 * num2
  } else if (operator == "/") {
    result <- num1 / num2
  } else {
    print("Ongeldige operator")
    return(NULL)
  }
  
  return(result)
}

calculator(1, 2, "*")

