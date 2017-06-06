module ApplicationHelper
  def flash_class(level)
    case level
    when "alert" then "alert alert-danger"
    when "success" then "alert alert-success"
    when "error" then "alert alert-warning"
    end
  end
end
