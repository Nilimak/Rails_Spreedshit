class Student < ActiveRecord::Base

  def self.csv_report(student)
    @std = []
    unless student.nil?
      student.each do |std| 
        students = Student.find(std)
        @std << students 
      end
    end
    @std
  end

end
