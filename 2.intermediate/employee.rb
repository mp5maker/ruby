class Employee
    attr_reader :name, :salary

    ## Similar to php contructor method
    def initialize(name = 'John Doe', salary = 0.0)
        self.name = name
        self.salary = salary
    end

    def name=(name)
        if(name == '')
            raise "Name cannot be empty"
        end
        @name = name
    end

    def salary=(salary)
        if(salary < 0)
            raise "A salary of #{salary} is not valid"
        end
        @salary = salary
    end

    def print_pay_stub
        puts "Name: #{@name}"
        ## This gives a fixnum 365 value
        # pay_for_period = (@salary/365) * 14

        ## This gives a float 365.0 value
        pay_for_period = (@salary/365.0) * 14
        pay_for_period = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{pay_for_period}"
    end

    def print_name
        puts("Name: #{@name}")
    end
end

photon = Employee.new
photon.name = "Photon Khan"
photon.salary = 50000
photon.print_pay_stub

samith = Employee.new
samith.print_pay_stub

quraishi = Employee.new('Quraishi', 1000.00)
quraishi.print_pay_stub

class SalariedEmployee < Employee
    def initialize(name = 'John Doe', salary = 0.0)
        super
    end

    def print_pay_stub
        print_name
        pay_for_period = (@salary/365.0) * 14
        pay_for_period = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{pay_for_period}"
    end
end

sami = SalariedEmployee.new("Shahriar Sami", 280.00)
sami.print_pay_stub

class HourlyEmployee < Employee
    attr_reader :hourly_wage, :hours_per_week

    def initialize(name = 'John Doe', hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def hourly_wage=(hourly_wage)
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        @hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = (@hourly_wage*@hours_per_week*14)/365
        pay_for_period = format("%.2f", pay_for_period)
        puts "Pay this period: $#{pay_for_period}"
    end
end

erfan = HourlyEmployee.new("Erfan Mahmud", 8.0, 40.0)
erfan.print_pay_stub
