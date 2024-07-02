resource "google_logging_metric" "my_log_metrics" {
  project = var.project_id
  name = "my-log-metric"
  filter = "..."
  description = "..."
  metric_descriptor {
    metric_kind = "..."
    value_type = "..."
  }
}

resource "google_monitoring_alert_policy" "my_policy" {
  project = var.project_id
  display_name = "my-policy"
  combiner = "OR"
  conditions {
    display_name = "my-policy"
    condition_threshold {
      filter = "metric.type=\"logging.googleapis.com/user/my-log-metric\" AND resource.type=\"cloud_composer_environment\""
    ...
    }
}
