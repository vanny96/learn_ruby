#write your code here
def add number1, number2
    number1 + number2
end

def subtract (number1, number2)
    number1 - number2
end

def sum numbers
    result = 0
    numbers.each  do |number|
        result = result + number
    end
    result
end

def multiply numbers
    result = 1
    numbers.each do |number|
        result = result * number
    end
    result
end

def power number1, number2
    number1 ** number2
end

def factorial number
    result = 1
    for i in 1..number do
        result = result * i
    end
    result
end
