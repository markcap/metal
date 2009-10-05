# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper  
  def nice_date(d)
    return d.strftime("%B %d, %Y")
  end
  
  def show_date(d)
    return d.strftime("%B %e")
  end
end
