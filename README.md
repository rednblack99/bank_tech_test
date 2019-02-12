# Bank Tech Test

```
         _._._                       _._._
        _|   |_                     _|   |_
        | ... |_._._._._._._._._._._| ... |
        | ||| |  o NATIONAL BANK o  | ||| |
        | """ |  """    """    """  | """ |
   ())  |[-|-]| [-|-]  [-|-]  [-|-] |[-|-]|  ())
  (())) |     |---------------------|     | (()))
 (())())| """ |  """    """    """  | """ |(())())
 (()))()|[-|-]|  :::   .-"-.   :::  |[-|-]|(()))()
 ()))(()|     | |~|~|  |_|_|  |~|~| |     |()))(()
    ||  |_____|_|_|_|__|_|_|__|_|_|_|_____|  ||
 ~ ~^^ @@@@@@@@@@@@@@/=======\@@@@@@@@@@@@@@ ^^~ ~
      ^~^~                                ~^~^
```

## Description

A basic banking application built in Ruby to be used on the command line. Users can:

* Create an account
* Deposit money
* Withdraw money
* Display their balance along with a history of all transactions made on their account

## Tech Stack
Ruby 
Rspec  

## Installation

```bash
$ git clone https://github.com/rednblack99/bank_tech_test
$ cd bank_tech_test
$ bundle install

$ bundle exec rspec # Run the tests to ensure it works
$ rubocop # To confirm the code is fully linted
```

## How to Use

This app is run entirely from the command line. To begin:

```bash
$ irb
$ require './lib/Account.rb'
$ require './lib/Transaction.rb'
$ require './lib/TransactionHistory.rb'
$ account = Account.new
```

You can then run the following commands to interact with your account (`amount` should be replaced with the integer you could like to deposit or withdraw from your account):

```bash
$ account.deposit(amount) # Deposits a specified value in your account
$ account.withdraw(amount) # Withdraws a specified value from your account
$ account.show_balance # Displays your balance and a record of all transactions
```

## Screenshot

![Banking Tech Test Screenshot](https://i.imgur.com/8UNqliN.png)

![Current Test Results and Coverage](https://i.imgur.com/dQIo62E.png)