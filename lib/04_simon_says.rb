def echo(name)
return name
end

def shout(name)
return name.upcase
end

def repeat(name,x=2) #mets 2 en valeurs par défauts de x
return Array.new(x,name).join(" ")
end

def start_of_word(name, x)
return name.slice(0..(x-1))
end

def first_word(name)
  return name.split.first
end

## titleize from here


def titleize(string)
  list = string.split(" ")
  list[0].capitalize!
  list[1..-1].each do |word|
    word.capitalize! unless little_word?(word)
  end
  if list.length > 1
    final_list = list.inject(""){ |line, word| line + " #{word}"}.strip
  else
    string.capitalize
  end
end

private

def little_word?(string)
  ["and", "or", "of", "in", "a", "the", "over"].include?(string)
end
