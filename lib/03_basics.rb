def who_is_bigger (a, b, c)
  array = [a, b, c]
  if a == nil || b == nil || c == nil
     return "nil detected"
  else
      case array.max
      when a
        "a is bigger"
      when b
        "b is bigger"
      when c
        "c is bigger"
      end
  end
end

def reverse_upcase_noLTA(string)
  string_upcase = string.upcase
  string_upcase_noLTA = string_upcase.tr("LTA", "")
  string_upcase_noLTA_reverse = string_upcase_noLTA.reverse
  return string_upcase_noLTA_reverse
end

def array_42(array)
return array.include?(42)
end

def magic_array(array)
  tab = array.flatten.sort.map{ |a| a*=2}.reject{|a| a%3==0}.uniq
  return tab
end
