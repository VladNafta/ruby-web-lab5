# Клас Worker (завдання 9); підключається в task9.rb і task10.rb через require_relative
class Worker
  def initialize(name, age, salary)
    setName(name)
    setAge(age)
    setSalary(salary)
  end

  def setName(name)
    @name = name
  end

  def getName
    @name
  end

  def setAge(age)
    @age = age
  end

  def getAge
    @age
  end

  def setSalary(salary)
    @salary = salary
  end

  def getSalary
    @salary
  end
end
