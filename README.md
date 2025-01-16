# stop-remove-container
Stop &amp; remove a docker container with one command!

## What is this?
This is a script to make it easier to stop and remove/delete a docker container running on your machine.

## How to use this?
You can use this script by copying this repo like this: ```git clone git@github.com:HowlingArcher/stop-remove-container.git```

Then you need to make the script an executable. You can do that like this:
```sudo chmod +x ./stop-remove-docker-container.sh```

After that you can copy it over to the /usr/local/bin folder like this:
```sudo cp ./stop-remove-docker-container.sh /usr/local/bin/stop-remove-container```

And now you can use the `stop-remove-container` command globally in your system!


## How does it work?
This tool works fairly simple. It checks if you have given an id, if you didn't it runs the `docker ps -a` command to show you all containers so you can copy and paste the id into the terminal and press enter.


After you've given the script the ID it'll run a couple commands starting with
`docker stop $ID`

After it's stopped it will run this command:
`docker remove $ID`

To remove all files associated with this container

Then it's done :)
