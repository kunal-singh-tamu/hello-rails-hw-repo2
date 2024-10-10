module MoviesHelper
    def sort_direction(column)
      # TO decide the order of sort between ascending or descending
      if session[:sort] == column
        session[:direction] == 'asc' ? 'desc' : 'asc'
      else
        'asc'
      end
    end
  
    def sort_icon(column)
      # using arrow symbols to find the direction of sort
      if session[:sort] == column
        session[:direction] == 'asc' ? '▲' : '▼'
      else
        '' # Empty for unsorted column
      end
    end

    def column_class(column)
        if session[:sort] == column
          session[:direction] == 'asc' ? 'sorted-asc' : 'sorted-desc'
        else
          ''
        end
      end

end
  
