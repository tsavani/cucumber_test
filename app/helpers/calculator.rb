class Calculator
 def push(arg)
  @arg ||= []
  @arg << arg
 end
end