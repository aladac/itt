require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start
require "rspec"
require 'itt'
include ITT

describe 'itt' do
  describe 'running w/o params' do
    before do
      @itt = `bin/itt`
    end
    it 'returns help' do
      expect(@itt).to eq(HELP)
    end
  end

  describe 'running with color argument' do
    before do
      @itt = `bin/itt red`
    end
    it 'should return color setting escape sequence' do
      expect(@itt).to eq(set_color(*COLORS[:red]))
    end
  end

  describe 'running with color argument and title' do
    before do
      @itt = `bin/itt red title`
    end
    it 'should return color and title setting escape sequence' do
      expect(@itt).to eq(set_color(*COLORS[:red]) + set_title('title'))
    end
  end

  describe 'running with title argument' do
    before do
      @itt = `bin/itt title`
    end
    it 'should return title setting escape sequence' do
      expect(@itt).to eq(set_title('title'))
    end
  end

  describe 'running with clear argument' do
    before do
      @itt = `bin/itt clear`
    end
    it 'should return the escape sequences to clear title and color' do
      expect(@itt).to eq(clear_color + clear_title)
    end
  end
end
