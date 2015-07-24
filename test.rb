require_relative 'app'


#driver code
#------------------------------------
# testing update! method
cohort = Cohort.find(1)
p cohort
cohort[:name] = 'Best Cohort Ever'
cohort.save
p Cohort.find(1)[:name] == 'Best Cohort Ever' #it will return true

# #------------------------------------
# # testing where method
p Cohort.where('name = ?', 'Zeta').first # it will return result

#------------------------------------
# testing insert! method
z = Student.new
z[:first_name] = 'testname'
puts " OK" if z.save
p Student.find(1)[:first_name]
p Student.where('first_name = ?', 'testname').first

#--------------------------------------