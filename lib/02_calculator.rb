def add (x,y)
  c = x + y
  return c
end

def subtract (x, y)
  s = x - y
  return s
end

def sum (array)
add=0
array.each { |a| add += a }
  return add
end

def multiply (x, y)
  m= x * y
  return m
end

def power (x, y)
  p = x**y
  return p
end

def factorial (x)
 fact=(1..x).inject(:*) || 1
 return fact
end
