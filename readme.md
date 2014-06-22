# NetGuard 🔑

This is a handy little script that will respond with 2 Factor Authentication
details for a system called NetGuard that some banks use.  The card consists of
a grid of numbers and letters and these must be configured into a file called
`secret.yml`, of which an example `secret.yml.example` is provided as I don't
know what is on your card.

## Installation

To use this, simply clone the source code:

    git clone https://github.com/parndt/netguard

Afterward, enter the directory and configure `secret.yml` with the actual values
from your card.

    cp secret.yml.example secret.yml

Make sure to keep this safe: don't commit it to source control!

## Usage

To ask the script for a particular set of codes simply invoke it at command line
like so, where `a1`, `b2`, `c3` are example co-ordinates from your card:

    ruby /path/to/code.rb a1 b2 c3

You can request as many co-ordinates as you like and the script will print them
out in the order that they were requested.  If you request invalid co-ordinates
then you won't get anything back, so please be reasonable 😉.

It might be useful to add an alias for this command in your profile, such as:

    alias netguard='ruby /path/to/code.rb '

This means it can be invoked more easily:

    netguard a1 b2 c3

## Future

It would be great if the co-ordinates were stored encrypted, but this was beyond
my initial scope of requirements.  Using this is currently a little safer if you
encrypt the contents of your file system already.