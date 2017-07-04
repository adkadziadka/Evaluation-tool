require 'rails_helper'

RSpec.describe Batch, type: :model do

	let(:batch) {Batch.new(number: 1, start_date: DateTime.parse("2017-05-11"), end_date: DateTime.parse("2017-07-11"))}

	let(:student) {Student.new(picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch1)}

	let(:performance) {Performance.new(student: student1, rate: 1, remarks: "Lorem imsum dolor sin amet", date: Date.today)}
  describe 'get_student' do
  	it 'gets a student' do
  		batch.get_student.class == Student
  	end
  end
end 
