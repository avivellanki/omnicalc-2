class ApplicationController < ActionController::Base
  layout ("application.html.erb")

  def add
    render({:template => "layouts/omnical_add.html.erb"})
  end
  
  def wizard_add
    @num1 = params.fetch("first_num").to_f.round(2)
    @num2 = params.fetch("second_num").to_f.round(2)
    @ans = @num1 + @num2
    render({:template => "layouts/wizard_add.html.erb"})
  end 

  def subtract
    render({:template => "layouts/omnical_sub.html.erb"})
  end
  
  def wizard_subtract
    @num1 = params.fetch("first_num").to_f.round(2)
    @num2 = params.fetch("second_num").to_f.round(2)
    @ans = (@num1 - @num2).to_f.round(2)
    render({:template => "layouts/wizard_subtract.html.erb"})
  end 

  def multiply
    render({:template => "layouts/omnical_mul.html.erb"})
  end
  
  def wizard_multiply
    @num1 = params.fetch("first_num").to_f.round(2)
    @num2 = params.fetch("second_num").to_f.round(2)
    @ans = (@num1 * @num2).to_f.round(2)
    render({:template => "layouts/wizard_multiply.html.erb"})
  end  
  
  def divide
    render({:template => "layouts/omnical_div.html.erb"})
  end
  
  def wizard_divide
    @num1 = params.fetch("first_num").to_f.round(2)
    @num2 = params.fetch("second_num").to_f.round(2)
    @ans = (@num1 / @num2).to_f.round(2)
    render({:template => "layouts/wizard_divide.html.erb"})
  end
end
