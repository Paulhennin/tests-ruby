def ftoc(temperature)
  celcius = (temperature.to_i - 32 ) * 5.0/9.0
  celcius.round
end

def ctof(temp)
  farn=( temp.to_i * 9.0/5.0 ) + 32
farn.round(1)
end
