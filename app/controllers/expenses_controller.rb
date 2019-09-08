class ExpensesController < ApplicationController

  before_action :correct_income, only: [:create, :new, :destroy]


  def new
    @expense = @income.expenses.build

  end

  def index
    @expenses = Expense.all

  end



  def create

    expense =  @income.expenses.build(expense_params)


    if expense.save

      flash[:sucess] = "入力完了"
      redirect_to expense_index_path
    else

      render "expenses/new"

    end



  end

  def destroy
    if @expense.destroy
      flash[:sucess] = "deleted!"
    else
      redirecto_to expense_index_path
  end
end


  private
    def expense_params
      params.require(:expense).permit(:expense, :name, :food_expense, :entertaiment_expense, :mobile_bill, :card_fee)
    end




  def correct_income
    @income = Income.find(params[:income_id])
  end
end
