require 'sinatra/base'
require 'json'

module ExpenseTracker
  class API < Sinatra::Base

    def initialize(ledger: Ledger.new)
      @ledger = ledger
      super()
    end

    get '/expenses/:date' do
      JSON.generate([])
    end

    post '/expenses' do 
      JSON.generate('expense_id' => 42)     
    end

  end
end