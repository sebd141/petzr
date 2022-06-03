class ContractChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    contract = Contract.find(params[:id])
    stream_for contract
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
