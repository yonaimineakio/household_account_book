class ExpensesController < ApplicationController

  before_action :correct_income, only: [:create, :new]


  def new

    @expense = @income.expenses.build

  end

  def index
    @q = Expense.ransack(params[:q])
    @expenses = @q.result(distinct: true).page(params[:page])
  end



  def create

    expense =  @income.expenses.build(expense_params)


    if expense.save

      flash[:sucess] = "入力完了"
      redirect_to expenses_index_path
    else
      render "expenses/new"
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    if @expense.destroy
      flash[:sucess] = "deleted!"
      redirect_to expenses_index_path
    else
      print "乙wwwwwwwwwwwwwww"
    end

  end


  private
    def expense_params
      params.require(:expense).permit(:food_expense, :entertaiment_expense, :mobile_bill, :card_fee, :income_id)
    end




  def correct_income
    @income = Income.find(params[:income_id])
  end
end
