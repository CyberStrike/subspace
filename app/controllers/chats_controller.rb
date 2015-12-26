class ChatsController < ApplicationController
  before_action :set_chat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chats = Chat.all
    respond_with(@chats)
  end

  def show
    MessageRocket.on :subscription_request do |request|
      if request.channel == '/chats/' + @chat.id.to_s

        request.permit
      else
        request.deny
      end
    end

    respond_with(@chat)
  end

  def new
    @chat = Chat.new
    respond_with(@chat)
  end

  def edit
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.save
    respond_with(@chat)
  end

  def update
    @chat.update(chat_params)
    respond_with(@chat)
  end

  def destroy
    @chat.destroy
    respond_with(@chat)
  end

  private
    def set_chat
      @chat = Chat.find(params[:id])
    end

    def chat_params
      params[:chat]
    end
end
