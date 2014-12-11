class RentPaymentsController < ApplicationController
  before_action :set_rent_payment, only: [:show, :edit, :update, :destroy]


  def index
    @rent_payments = RentPayment.all
  end

  def show
  end

  def new
    @rent_payment = RentPayment.new
  end

  def edit
  end

  def create
    @rent_payment = RentPayment.new(rent_payment_params)

      if @rent_payment.save
        redirect_to @rent_payment, notice: 'Rent payment was successfully created.'
      else
        render :new
    end
  end

  def update
      if @rent_payment.update(rent_payment_params)
        redirect_to @rent_payment, notice: 'Rent payment was successfully updated.' 
      else
        render :edit
    end
  end

  def destroy
    @rent_payment.destroy
      redirect_to rent_payments_url, notice: 'Rent payment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_payment
      @rent_payment = RentPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_payment_params
      params.require(:rent_payment).permit(:ammount, :date_due, :date_paid, :status, :reff, :method, :tenant_id)
    end
end
