require 'rails_helper'


RSpec.describe Person, type: :model do
  describe '#create' do

    it "nameが空では登録不可" do
      person = build(:person, name: nil)
      person.valid?
      expect(person.errors[:name]).to include("を入力してください")
    end

    it "ageが空では登録不可" do
      person = build(:person, age: nil)
      person.valid?
      expect(person.errors[:age]).to include("を入力してください")
    end

    it "genderが空では登録不可" do
      person = build(:person, gender: nil)
      person.valid?
      expect(person.errors[:gender]).to include("を入力してください")
    end

    it "heightが空では登録不可" do
      person = build(:person, height: nil)
      person.valid?
      expect(person.errors[:height]).to include("を入力してください")
    end

    it "bodyが空では登録不可" do
      person = build(:person, body: nil)
      person.valid?
      expect(person.errors[:body]).to include("を入力してください")
    end


    it "hairが空では登録不可" do
      person = build(:person, hair: nil)
      person.valid?
      expect(person.errors[:hair]).to include("を入力してください")
    end

  end
end