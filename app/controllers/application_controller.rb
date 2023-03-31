class ApplicationController < ActionController::Base

  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    # params = {"elephant"=>"42"}

    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_root_form

    render({ :template => "calculation_templates/root_form.html.erb"})
  end

  def calculate_root
    # params = {"root"=>"9"}

    @num = params.fetch("root").to_f
    @root_of_num = @num ** (0.5)
    render({ :template => "calculation_templates/root_results.html.erb"})
  end

  def blank_rand_form

    render({ :template => "calculation_templates/rand_form.html.erb"})
  end

  def calculate_random
    
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @results = rand(@lower..@upper)

    render({ :template => "calculation_templates/rand_results.html.erb"})
  end

  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    # params {"user_apr"=>"5.42", "user_years"=>"4", "user_pv"=>"5"}

    @apr = 
    @years = 
    @principal =
    @payment =
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
end
