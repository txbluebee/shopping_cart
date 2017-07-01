FactoryGirl.define do
  factory(:product) do
    name('Knit the sock monkey')
    cost(6)
    country('US')
  end

  factory(:user) do
    email('brian@epicodus.com')
    password('12345')
  end  

end
