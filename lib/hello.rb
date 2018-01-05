def hello_t(array=[])
  if block_given?
    i = 0
    while i < array.length
      yield array[i]
      i += 1
    end
    return array
  else
    return "Hey! No Block was given!"
  end
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
