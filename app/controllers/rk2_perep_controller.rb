class Rk2PerepController < ApplicationController
  def index
  end

  def view
    @initial_array = [] # начальный массив
    @modified_array = @initial_array.dup # копия начального массива
      @k = -10
      @min = 0
    @last_number_3 = 0
    if params[:new_elements]
      if params[:new_elements].match?(/[^-0-9,]/)
        flash.now[:notice] = "Warning"
      else
        new_elements = params[:new_elements].split(',').map(&:to_i)
        @initial_array.concat(new_elements)
        @modified_array.concat(new_elements)
        @min = @initial_array.min
        @initial_array.each_with_index do |num, index|
          if num % 3 == 0 && index > @k && num < 0
            @k = index
            @last_number_3 = num
          end
        end
        @modified_array[@k] = @min if @k>=0
      end
    end
  end
end
