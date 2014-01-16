#(1) - Hello World

#Traditionally, when learning a new computer language, the first task one undertakes is writing a Hello World application. In this part of the lab a Hello World program will be given to you:

# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("{type your name here}")
hello.sayHi

#Dissecting the above code, please note the following: a class named HelloWorldClass has been created, initializeis a class constructor which takes a parameter named name, all comments begin with a '#' character, and writes text to #the screen.

 

