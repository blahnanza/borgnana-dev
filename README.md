borgnana development environment
--------------------------------

This is a vagrant-based dev environment. In order to use this, you'll need to install the latest vagrant and virtualbox.

The Vagrant file defines 2 VMs, one is just an Ansible controller that exists solely to allow for
ansible provisioning under Windows. Playbooks are run from here against the main VM via the
Vagrant provisioning process.

The second runs a small IRCd (miniircd - https://github.com/jrosdahl/miniircd) and
borgnana (https://github.com/blahnanza/borgnana)

borgnana is a straight fork of Alia (a fork of PyBorg) with very few changes presently.


Getting Started
---------------

The normal process is to create and provision the development VMs with:

    vagrant up

 in this directory.

This will create and start the VMs and borgnana and miniircd.

Port 6667 on localhost will be mapped through to the IRCd on the borgnana VM, if
you connect your IRC client to localhost:6667 and join the channel #test you'll see
borgnana already there. The bot doesn't respond at first due to a lack of wordlist,
but if you just want to see it respond you can change nick to one of the recognised
"owners" (vagrant, bossman) and issue !help into the channel.

If you don't have an IRC client, or you wish to start/stop borgnana, you can issue:

    vagrant ssh [borgnana]

In order to get access to the VM running borgnana. borgnana is running under supervisor
from /srv/borgnana

borgnana's source is editable there or through the directory "borgnana" in the same place as this
file. It's a shared directory with the VM.

In order to restart borgnana, use "vagrant ssh" and then

    sudo supervisorctl restart borgnana

I recommend working on the bot out of supervisord though, vagrant ssh and then:

    sudo supervisorctl stop borgnana
    cd /srv/borgnana
    python pyborg-irc.py


Then you can edit the files in borgnana-dev/borgnana with your favourite editor on your local machine, and restart the bot
in your vagrant ssh window with Ctrl-C to stop it, Up->Enter to run it again.

It may be helpful to use the bot's !loadurl command to load in external URLs using urllib2. An attempt is made to strip
html tags from any URL given to it, but be wise about what you load in to avoid polluting the dictionary with rubbish.

I've had fun loading stuff from the gutenberg project (https://www.gutenberg.org/) and similar.
