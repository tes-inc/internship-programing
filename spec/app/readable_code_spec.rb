require 'spec_helper'
require './app/readable_code'

RSpec.describe ReadableCode do
  let(:instance) { described_class.new(args) }

  describe '#execute' do
    subject { instance.execute }

    context '引数を指定しない場合' do
      let(:args) { {} }

      it 'デフォルトの配列要素が返却されること' do
        is_expected.to match(%w(one two three four five six))
      end
    end

    context '引数を指定する場合' do
      let(:args) { { key => 'TEST' } }

      context '引数の0キーに値を設定した場合' do
        let(:key) { 0 }

        it '配列の添字0要素に変換後の値が設定されて返却されること' do
          is_expected.to match(%w(test two three four five six))
        end
      end

      context '引数の1キーに値を設定した場合' do
        let(:key) { 1 }

        it '配列の添字1要素に変換後の値が設定されて返却されること' do
          is_expected.to match(%w(one test three four five six))
        end
      end
      
      context '引数の2キーに値を設定した場合' do
        let(:key) { 2 }

        it '配列の添字2要素に変換後の値が設定されて返却されること' do
          is_expected.to match(%w(one two test four five six))
        end
      end
      
      context '引数の3キーに値を設定した場合' do
        let(:key) { 3 }

        it '配列の添字3要素に変換後の値が設定されて返却されること' do
          is_expected.to match(%w(one two three test five six))
        end
      end
      
      context '引数の4キーに値を設定した場合' do
        let(:key) { 4 }

        it '配列の添字4要素に変換後の値が設定されて返却されること' do
          is_expected.to match(%w(one two three four test six))
        end
      end
      
      context '引数の5キーに値を設定した場合' do
        let(:key) { 5 }

        it '配列の添字5要素に変換後の値が設定されて返却されること' do
          is_expected.to match(%w(one two three four five test))
        end
      end
    end
  end
end
