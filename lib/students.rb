class Students
  def all
    [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 22},
    ]
  end

  def average_age
    sum = 0
    all.each do |student|
      sum = sum + student[:age]
      end
      sum / all.count

    end



  def name_string
    all.map { |student| student[:name] }.join(' ')
  end

  def find_first_older_than(age)
    array = []
    all.each do |student|
      if student[:age] > age
        array << student
      end

    end
    array.first
  end

  def any_older_than?(age)

    all.each do |student|
      if student[:age] > age
        return true
      end
    end
    false

  end

  def find_student(student_to_find)

    all.each do |student|
      if student == student_to_find
        return student
      end
    end
    nil
  end

  def student_present?(student_to_find)
    all.each do |student|
      if student == student_to_find
        return true
      end
    end
    false

  end

  def grouped_by_age





  end
  end
