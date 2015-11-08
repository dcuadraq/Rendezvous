describe Assistant do
  it { should have_many :time_ranges }

  it { should validate_presence_of :name }

  describe 'method' do
    it 'initial times returns all initial times from his time ranges' do
      assistant = FactoryGirl.create(:assistant)
      initial_times = []
      5.times do
        minutes = rand(1..50)
        initial_times << Time.new(2015, 1, 2, 3, minutes, 0, "+00:00")
        assistant.time_ranges << FactoryGirl.create(:time_range, initial_time: initial_times.last)
      end
      expect(assistant.initial_times).to match_array(initial_times)
    end

  end
end
