def hello_t(array)
  if not block_given?
    puts "Hey! No block was given!"
    return
  end
  array.each do |elem|
    yield elem
  end
  array
end

# call your method here!

