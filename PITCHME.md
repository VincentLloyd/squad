# SQUAD
### Fitness as a team sport

---

## The Problem With Gym Memberships

* Monolithic gym memberships are...
  * monotonous
  * expensive
  * contract based
  * franchise oriented

---

## Why Squad?

* Squad allows for the creation of fitness experiences that are...
  * spontaneous
  * demand driven
  * consumer oriented

---

## User Stories

### Personal Trainers

---

1. To build a large client base, as a personal trainer, I want to be **visible to a large audience** of potential clients.

2. To attract result oriented clients, as a personal trainer, I want my **clients' performance** to be **publicly available**.

---

3. To help motivate my clients, as a personal trainer, I want to be able to **compare my group's progress** against that of other groups.

4. In order to differentiate myself from other personal trainers, as a PT, I want potential clients to be able to **find and choose me** based on the type of exercise experience/expertise I specialise in.

---

5. In order to differentiate myself from other personal trainers, as a personal trainer, I want to be able to **determine the key characteristics of my groups** (e.g. price, exercise format, group size, admission criteria, etc.)

6. In order to maximise my earning potential, as a personal trainer, I want to be able to **lead multiple groups**.

---

## User Stories

### Exercisers

---

1. To maximise the value of my workout experience, as an exerciser, I want to workout with **people of a similar physical capability** to mine.

2. To maximise my choice, as an exerciser, I want to be able to **find PTs/groups based on a wide range of metrics** (e.g. geography, group size, training format, rating, etc.)

---

3. To help me choose, as an exerciser, I want to be able to **read reviews of a group and/or trainer** of interest.

4. To avoid boredom, as an exerciser, I want to be able to be a member of **many different groups simultaneously**.

---

5. To keep track of my progress, as an exerciser, I want to be able to see my **physical performance charted over time**.

---

## Ruby Gems

### Development

---

##### [annotate models](https://github.com/ctran/annotate_models)

##### [better errors](https://github.com/charliesome/better_errors) and [binding of caller](https://github.com/banister/binding_of_caller)

##### [simple form](https://github.com/plataformatec/simple_form)

---

## Ruby Gems

### Testing

---

######[factory girl rails](https://github.com/thoughtbot/factory_girl_rails)

##### [faker](https://github.com/stympy/faker)

##### [rspec-rails](https://github.com/rspec/rspec-rails)

---

```ruby
FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    password              "password"
    password_confirmation "password"
  end
end
```

---

```ruby
RSpec.describe Profile, type: :model do
  # Create Users
  before :each do
    @user = FactoryGirl.create(:user)
  end
  
  it "is invalid without a first_name" do
    profile = Profile.new(
    user_id: @user.id,
    first_name: nil)
    profile.valid?
    byebug
    expect(profile.errors[:first_name]).to 
     include("can't be blank")
  end
```
---

## Ruby Gems

### Production & Security

##### [exception notification](https://github.com/smartinez87/exception_notification)

##### [bundler-audit](https://github.com/rubysec/bundler-audit)

##### [brakeman](https://github.com/presidentbeef/brakeman)

---

```
Controller Warnings:
+------------+-----------------------+
| Confidence | Controller            |
+------------+-----------------------+
| Medium     | ApplicationController |
+------------+-----------------------+

+------------------------------------------------+
| Message                                        |
+------------------------------------------------+
| protect_from_forgery should be configured with | 
| 'with: :exception' near line 2:			    |
| protect_from_forgery(:with => :null_session)   |
+------------------------------------------------+
```

---