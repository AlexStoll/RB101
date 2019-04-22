# check whether paren use is valid
# expand to account for '' "" {} and []

def balanced?(string)
  return false if string.count('(') != string.count(')')

  count_paren, count_brack, count_curl, count_single_quote, count_double_quote = 0, 0, 0, 0, 0
  
  string.chars.each do |char|
    count_paren += 1 if char == '('
    count_paren -= 1 if char == ')'
    return false if count_paren < 0

    count_brack += 1 if char == '['
    count_brack -= 1 if char == ']'
    return false if count_brack < 0

    count_curl += 1 if char == '{'
    count_curl -= 1 if char == '}'
    return false if count_curl < 0

    count_single_quote += 1 if char == '\''
    count_single_quote -= 1 if char == '\''
    return false if count_single_quote < 0

    count_double_quote += 1 if char == "\""
    count_double_quote -= 1 if char == "\""
    return false if count_double_quote < 0
  end
  true
end
p balanced?('What ()))((()')
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false