class School
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def start_time
    @start_time
  end

  def hours_in_school_day
    @hours_in_school_day
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
   final = @start_time.to_i + @hours_in_school_day
   end_time = "#{final}:00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    capitalized_names = []
    student_names.each do |name|
      capitalized_names << name.capitalize
    end
    student_names = capitalized_names
  end

  def convert_end_time_to_clock_time
    final = @start_time.to_i + @hours_in_school_day
    if final > 12
      end_time = "#{final - 12}:00"
    else
      end_time = "#{final}:00"
    end
  end
end
