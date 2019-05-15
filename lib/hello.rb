# def hello_t(array, name)
#   array.each do |name|
#     if name.start_with?("T")
#       yield(name)
#     end
# end

# hello_t(names) { puts "Hi, #{name}!"

def hello_t(array)
  if block_given?
    i = 0
    while i < array.length
     yield array[i]
     i = i + 1
    end
  else
    puts "Hey! No block was given!\n"
  end
  array
end  

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
# call your method here!

