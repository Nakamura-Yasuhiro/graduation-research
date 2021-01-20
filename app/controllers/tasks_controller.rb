class TasksController < ApplicationController
    
    def configuration
    end
  
    def configuration_update
      if current_user.update(bg_color_id: params[:bg_color_id])
        flash[:success] = "壁紙を適用しました"
      else
        flash[:warning] = "壁紙を適用できませんでした"
      end
  
      redirect_to("/top")
    end
end
