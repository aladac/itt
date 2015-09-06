require 'minitest/autorun'
require 'itt'
include ITT

describe 'itt' do
  before do
    @itt_no_params = `bin/itt`
    @itt_just_title = `bin/itt title`
  end

  describe 'running w/o params' do
    it 'returns help' do
      @itt_no_params.must_equal HELP
    end
  end

  describe 'running with color argument' do
    before do
      @itt = `bin/itt red`
    end
    it 'should return color setting escape sequence' do
      @itt.must_equal set_color(*COLORS[:red])
    end
  end

  describe 'running with color argument and title' do
    before do
      @itt = `bin/itt red title`
    end
    it 'should return color and title setting escape sequence' do
      @itt.must_equal set_color(*COLORS[:red]) + set_title('title')
    end
  end

  describe 'running with title argument' do
    before do
      @itt = `bin/itt title`
    end
    it 'should return title setting escape sequence' do
      @itt.must_equal set_title('title')
    end
  end
end
