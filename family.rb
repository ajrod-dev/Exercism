family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

# 1stproblem
names = family.select do |k, v| 
  k == :sisters || k == :brothers
end

#p names.values.flatten

# 2nd problem


sisters = {
  jane: 10,
  jill: 15
}

brothers = {
  frank: 18, 
  rob: 21
}
#merge
siblings1 = sisters.merge(brothers)

#merge!
sisters.merge!(brothers)

#p siblings1
#p sisters

#3rd problem

#family.each_key { |k| p k }
#family.each_value { |v| p v }
#family.each { |k,v| p "Here are all the #{k} : #{v.join(", ")}"}

#4th problem
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

#p person[:name]

#5th problem

p person.has_value?('Bob')







