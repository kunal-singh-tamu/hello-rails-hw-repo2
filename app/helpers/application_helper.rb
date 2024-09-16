module ApplicationHelper
    def sort_link(column, title)
        direction = (column == params[:sort] && params[:direction] == 'asc') ? 'desc' : 'asc'
        link_to title, movies_path(sort: column, direction: direction)
      end
end
