This is made for the raspberry pi

# Setup

Run `setup.sh` - this will
* Install docker
* Install docker-compose
* Create a `.env` file

If you already have docker or docker compose installed you can skip this step and run `cp .env.template .env` to create your `.env` file manually

Now you need to fill in the env variables based on your webhookrelay data
* `BUCKETS`: Name of your bucket
* `RELAY_KEY`: Key of your token
*  `RELAY_SECRET`: Secret of your token

# Run

As soon as the setup is done you should be able to start the application by running

```
docker-compose up
```

If you want to run it on startup of your raspberry pi just add the following line to your crontab by running sudo crontab -e
```
@reboot cd /path/to/your/repo/webhook-hdmi-tv-control && docker-compose up -d &
```