class LecturesController < InheritedResources::Base
 load_and_authorize_resource
 before_action :authenticate_user!

   def like
      lecture = Lecture.find(params[:lecture_id])
      lecture.like_by current_user
      redirect_to :back
    end

    def dislike
      lecture = Lecture.find(params[:lecture_id])
      lecture.dislike_by current_user
      redirect_to :back
    end
 	def spam
      lecture = Lecture.find(params[:lecture_id])
	   unless current_user.lectures.include?(lecture)
	    	current_user.lectures << lecture
	    	end
      redirect_to :back
    end

   def create
    @lecture= Lecture.new(lecture_params)
    @lecture.user_id=current_user.id
    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'lecture was successfully created.' }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

def show
    @lecture = Lecture.find(params[:id])
    commontator_thread_show(@lecture)
end


  private

    def lecture_params
      params.require(:lecture).permit(:content,:attachment ,:course_id , :user_id)
    end



end

