class ApplicationController < ActionController::Base
    def paginate
        @page = params.fetch(:page, 0).to_i
        @DATAS_PER_PAGE = 3
    end
end
