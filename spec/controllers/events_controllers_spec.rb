require 'rails_helper'

describe EventsController, 'GET#index' do
  before { get :index }

  it 'retrives all the events' do
    expect(assigns(:events)).to eq(Event.all)
  end

  it 'render index template' do
    expect(response).to render_template(:index)
  end
end

describe EventsController, 'GET#new' do
  before { get :new }

  it 'creates a new Event instance' do
    expect(assigns(:event)).to be_a_new(Event)
  end

  it 'renders new template' do
    expect(response).to render_template(:new)
  end
end

describe EventsController, 'POST#create' do
  context 'when has valid attributes' do
    it 'creates a new event' do
      expect{
        post :create, event: attributes_for(:event)
      }.to change(Event, :count).by(1)
    end

    it 'redirects to the event' do
      post :create, event: attributes_for(:event)
      expect(response).to redirect_to(Event.last)
    end
  end

  context 'when hasn\'t valid attributes' do
    before do
      post :create, event: attributes_for(:event, name: '')
    end

    it 'doesn\'t create the event' do
      expect(assigns(:event)).to be_a_new(Event)
    end

    it 'renders new tempalte' do
      expect(response).to render_template(:new)
    end
  end
end
