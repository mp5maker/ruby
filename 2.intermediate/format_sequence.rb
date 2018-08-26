class Me
    attr_reader :name, :age, :salary
    
    def name=(name)
        if(name == '')
            raise "You cannot have an empty field"
        end
        @name = name
    end

    def age=(age)
        age = age.to_i
        if(age < 18)
            raise "You need to be at least 18 to enter in this job!"
        end
        @age = age
    end

    def salary=(salary)
        salary = salary.to_f
        if(salary < 0)
            raise "Invalid Salary"
        end
        @salary = salary
    end

    def information
        puts(format("%s is %i-years-old whose salary is %.2f", @name, @age, @salary))
    end
end

photon = Me.new
photon.name = "Shabuktagin Photon Khan"
photon.age = "28"
photon.salary = "5000"
photon.information