# frozen_string_literal: true

CronKubernetes.configuration do |config|
  # Prefix added to the name of each CronJob
  config.identifier = 'askdarcel-api-cronjobs'

  # Base k8s template to use for each CronJob.
  config.manifest = YAML.load_file('./config/k8s-cron-template.yml')
end
