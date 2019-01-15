def url?(text)
  text.match(/\Ahttps?:\/\/\S+\z/i) ? true : false
end
  
p url?('http://launchschool.com')
p url?('https://example.com hello')
p url?('   https://example.com')