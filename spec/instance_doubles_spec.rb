class Person
  def a(seconds)
    sleep(seconds)
    "Hello"
  end
end



RSpec.describe do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instance double' do
    it'can only implement methods that are defined on the class' do
      # -- will raise an error about the method b not existing in actual class --
      # person = instance_double(Person, {a: "Hello", b: 20})  
      person = instance_double(Person)
      # -- will raise error about how many arguments in comparisson to actual class --
      #allow(person).to receive(:a).with(3, 10).and_return("Hello")   
      allow(person).to receive(:a).with(3).and_return("Hello")
      expect(person.a(3)).to eq("Hello")
    end
  end
end


