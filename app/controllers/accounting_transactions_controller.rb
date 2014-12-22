class AccountingTransactionsController < ApplicationController

  def index
    @transactions = AccountingTransaction.all
    @income = AccountingTransaction.income
    @expenses = AccountingTransaction.expense
  end

  def show
  end

  def new
    @accounting_transaction = AccountingTransaction.new
  end

  def edit
  end

  def create
    @accounting_transaction = AccountingTransaction.new(accounting_transaction_params)
      if @accounting_transaction.save
        redirect_to accounting_transactions_path
      else
        render :new
      end
  end

  def update
      if @accounting_transaction.update(accounting_transaction_params)
        redirect_to accounting_transactions_path
      else
        render :edit
    end
  end

  def destroy
    @accounting_transaction.destroy
      redirect_to accounting_transactions_url
  end

  private

    def set_accounting_transaction
      @accounting_transaction = AccountingTransaction.find(params[:id])
    end

    def accounting_transaction_params
      params.require(:accounting_transaction).permit(:notes, :ammount, :p_method, :category, :for, :reff_number, :property_id)
    end

end
