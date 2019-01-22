#!/bin/bash

# Update CronJobs for this Kubernetes cluster
bundle exec cron_kubernetes --configuration config/initializers/cron_kubernetes.rb --schedule config/cron_schedule.rb

# Restart delayed_job worker process
./bin/delayed_job restart
