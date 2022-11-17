=begin
Jenny has written a function that returns a greeting for a user.
However, she's in love with Johnny, and would like to greet him slightly different.
She added a special case to her function, but she made a mistake.
=end

def greet(name)
  name == 'Johnny' ? 'Hello, my love!' : "Hello, #{name}!"
end

p greet("James") == "Hello, James!"
p greet("Jane") == "Hello, Jane!"
p greet("Jim") == "Hello, Jim!"
p greet("Johnny") == "Hello, my love!"