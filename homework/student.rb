class Student
  def initialize name, cohort
    @name = name
    @cohort = cohort
  end

  def talk()
    return "Hi, I am #{@name} and I am in cohort #{@cohort}."
  end

  def get_name()
    @name
  end

  def get_cohort()
    @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end
