class MarksController < ApplicationController
    before_action :paginate, only:[:index]
    before_action :set_mark, only: [:show, :edit, :update, :destroy]

    def index
      @marks = Mark.offset(@page * @DATAS_PER_PAGE).limit(@DATAS_PER_PAGE)
    end

  
    def show
    end
  
    def new
      @mark = Mark.new
    end
  
    def create
        @mark = Mark.new(mark_params)
        respond_to do |format|
            if @mark.save
                format.html { redirect_to @mark, notice: 'Mark was successfully created.' }
                format.json { render :show, status: :created, location: @mark }
            else
                format.html { render :new }
                format.json { render json: @mark.errors, status: :unprocessable_entity }
            end
        end
    end
  
    def edit
    end
  
    def update
        
      respond_to do |format|
            if @mark.update(mark_params)
              format.html { redirect_to @mark, notice: 'Mark was successfully updated.' }
              format.json { render :show, status: :ok, location: @mark }
            else
              format.html { render :edit }
              format.json { render json: @mark.errors, status: :unprocessable_entity }
            end
        end
    end
  
    def destroy
        @mark.destroy
        respond_to do |format|
            format.html { redirect_to marks_url, notice: 'Mark was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
  
    private
  
    def mark_params
      params.require(:mark).permit(:marks,:student_id)
      # params.require(:mark).permit(:marks,:student_id => student_id)

    end
  
    def set_mark
      @mark = Mark.find(params[:id])
    end
end
