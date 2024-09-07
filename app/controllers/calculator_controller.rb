class CalculatorController < ApplicationController
  def index
  end

  def calculate
    @first_number = params[:first_number].to_f
    @second_number = params[:second_number].to_f
    @operation = params[:operation]

    @result = case @operation
              when "add"
                @first_number + @second_number
              when "subtract"
                @first_number - @second_number
              when "multiply"
                @first_number * @second_number
              when "divide"
                @first_number / @second_number
              else
                "Invalid operation"
              end

    render :index
  end
end
