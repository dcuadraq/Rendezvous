describe Event do
  it { should have_many :time_ranges }

  it { should validate_presence_of :name }
  it { should validate_presence_of :password }

  describe 'method' do
    it 'assistants_time_ranges returns array with all time ranges from its participants' do
      event = FactoryGirl.create(:event)
      5.times do
        event.assistants << FactoryGirl.create(:assistant, time_ranges: FactoryGirl.create_list(:time_range, 5))
      end
      expect(event.assistants_time_ranges.count).to eq(25)
    end
  end
end
