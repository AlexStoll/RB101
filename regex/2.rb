def fields(string)
  string.split(/[ \t,]+/)
end

p fields('my dog has \t   ...  fleas')