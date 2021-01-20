require 'rails_helper'

RSpec.describe "FoodEnquetes", type: :system do
  describe '正常' do
    context "アンケートに回答する" do
      it "回答できること" do
        enquete = FactoryBot.build(:food_enquete_tanaka)
        visit "/home/index"
        visit "/guest_login"
        visit "/posts/index"

        fill_in "content", with: "波乗りジョニー"
        sleep 2
        click_on '投稿'

        sleep 2


      end
    end
  end

  describe '異常' do
    context "必須項目が未入力" do
      it "エラーメッセージが表示され、回答できないこと" do
        visit "/home/index"
        visit "/guest_login"
        visit "/posts/index"
        fill_in "content", with: "波乗りジョニー"
        sleep 2
        click_on '投稿'
        sleep 2


      end
    end
  end
end
