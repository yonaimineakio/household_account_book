class IncomesController < ApplicationController



   def new
     @income = Income.new
   end



  def create
    income =Income.new(income_params)


    if income.save

      flash[:sucess] = "入力完了"
      redirect_to "/incomes/#{income.id}/expenses/new"

    else

      render new_income_path

    end

  end


  private
    def income_params
      params.require(:income).permit(:income)
    end
end
