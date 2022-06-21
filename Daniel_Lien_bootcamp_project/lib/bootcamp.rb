class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{ |hash,key| hash[key] = []}
    end
    #getters
    def name
        @name
    end
    def slogan
        @slogan
    end
    def student_capacity
        @student_capacity
    end

    def teachers
        @teachers
    end
    def students 
        @students
    end
    def hire(name)
        @teachers << name
    end
    def enroll(student_name)
        if @students.length < student_capacity 
            @students << student_name
            return true
        end
        return false
    end
    def enrolled?(student_name)
        if @students.include?(student_name)
            return true
        else
            return false
        end
    end

    def student_to_teacher_ratio
        return @students.length / @teachers.length
    end
    
    def add_grade(student_name, grade)
        if self.enrolled?(student_name) #call self!
            @grades[student_name] << grade #@grades is hash
            return true
        else
            return false
        end
    end
    def num_grades(student_name)
        @grades[student_name].length
    end
    def average_grade(student_name) #return average grade
        if num_grades(student_name) == 0 || !self.enrolled?(student_name)
            return nil
        end
        @grades[student_name].sum / @grades[student_name].length
    end
end
