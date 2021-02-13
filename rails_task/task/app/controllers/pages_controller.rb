class PagesController < ApplicationController
    before_action :paginate, only:[:search]
    
    def search
        if params[:search].blank?
            redirect_to(root_path, notice: "Empty keyword") && return
        else
            @parameter = params[:search]
            # @results = Student.all.where("lower(first_name) LIKE :search", search: "%#{@parameter}%")
            @results = Mark.joins(:student).offset(@page * @DATAS_PER_PAGE).limit(@DATAS_PER_PAGE).search(params[:search])
        end
    end
end
