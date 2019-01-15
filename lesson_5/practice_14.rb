hsh = {
  'grape' =>   {type: 'fruit',     colors: ['red', 'green'], size: 'small'},
  'carrot' =>  {type: 'vegetable', colors: ['orange'],       size: 'medium'},
  'apple' =>   {type: 'fruit',     colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit',     colors: ['orange'],       size: 'medium'},
  'marrow' =>  {type: 'vegetable', colors: ['green'],        size: 'large'},
}
# Return an array containing the colors of the fruits and sizes of vegetables

# Sizes should be uppercase, colors capitalized

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].uppercase
  end
end


