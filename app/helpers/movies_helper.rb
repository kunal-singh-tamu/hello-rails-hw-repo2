module MoviesHelper
    def sort_direction(column)
      # Determine the current direction; toggle between asc and desc
      if session[:sort] == column
        session[:direction] == 'asc' ? 'desc' : 'asc'
      else
        'asc'
      end
    end
  
    def sort_icon(column)
      # Display an arrow symbol based on the current sort direction
      if session[:sort] == column
        session[:direction] == 'asc' ? '▲' : '▼'
      else
        '' # No symbol if the column is not currently sorted
      end
    end
end
  
