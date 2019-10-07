def time_string(x)
time= Time.at(x).utc.strftime("%H:%M:%S")
return time
end
