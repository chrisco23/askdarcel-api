# Configure delayed_job output to appear in stdout, allowing it to appear in
# k8s logs:
Delayed::Worker.logger = Logger.new(STDOUT)
