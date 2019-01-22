# frozen_string_literal: true

# Defines Kubernetes CronJobs for our cluster. Names can contain letters,
# numbers, hyphens, and periods. Notably, they cannot contain underscores.
#
# Note: Crontab Guru (https://crontab.guru) is a useful resource to generate
# cron schedule strings (eg. '0 * * * *').
#
# Example commands:
#
# 1. `bin/rails runner ...`
#
#    runner 'AlgoliaReindexJob.perform_async', name: 'algolia-reindex', schedule: '0 * * * *'
#
# 2. `bundle exec rake ...`
#
#    rake 'audit:state', name: 'audit-state', schedule: '0 20 1 * *'
#
# 3. Run command directly from bash.
#
#    command 'ls -l', name: 'run-ls', schedule: '0 12 * * *'
#
CronKubernetes.schedule do
  # Enqueue an algolia reindex job every hour. The job will be performed
  # asynchronously by a DelayedJob worker.
  runner 'AlgoliaReindexJob.perform_async', name: 'algolia-reindex', schedule: '0 * * * *'
end
