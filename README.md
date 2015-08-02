# vagrant_dnn

This is a virtual machine encapsulating https://github.com/karpathy/char-rnn
which became known because of its use in creating new Magic The Gathering-Cards.

## What is done
* installing torch and its dependencies
* cloning char-rnn

## Usage
1. clone the repository
2. `vagrant up`
3. wait quite a bit
4. put your training data in to the shared folder `/training_data` (there already is example data from `char-rnn`)
5. `vagrant ssh`
6. `cd char-rnn`
7. use `char-rnn` as per that README.md

## Licence
* char-rnn: MIT
* this: MIT
