# Description 
A small docker compose setup to run a local webhook on a raspberry pi which is connected and made public securely via [webhookrelay](https://webhookrelay.com/).
As soon as the webhook is called the TV connected via hdmi will receive a "on" signal and be switched on.

It was built to automatically switch on a TV from standby mode via webhooks.

# Setup

Run `setup.sh` - this will
* Install docker
* Install docker-compose
* Create a `.env` file

If you already have docker or docker compose installed you can skip this step and run 
```bash
cp .env.template .env
``` 
to create your `.env` file manually

Now you need to fill in the env variables based on your webhookrelay data
* `BUCKETS`: Name of your webhookrelay bucket
* `RELAY_KEY`: Key of your webhookrelay token
* `RELAY_SECRET`: Secret of your webhookrelay token
* `TV_SHUTDOWN_TIMER` (optional): Seconds until TV should be automatically turned off again. If not set, TV will not be turned off automatically

# Run

As soon as the setup is done you should be able to start the application by running

```
docker-compose up
```

If you want to run it on startup of your raspberry pi just add the following line to your crontab by running `sudo crontab -e`
```
@reboot cd /path/to/your/repo/webhook-hdmi-tv-control && docker-compose up -d &
```