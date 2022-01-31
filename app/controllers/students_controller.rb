class StudentsController < ApplicationController
    def index  
        students = Student.all
        render json: students
    end
    def grades
        students = Student.order(grade: :desc)
        render json: students
      end
    
      def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
      end
      def show
        student = Student.find_by(id:params[:id])
        render json: student
      end
end
