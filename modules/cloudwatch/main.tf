resource "aws_cloudwatch_metric_alarm" "cpuUtilization" {
  alarm_name                = var.alarm_name
  comparison_operator       = var.comparison_operator
  evaluation_periods        = var.evaluation_periods
  metric_name               = var.metric_name
  namespace                 = var.namespace
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.threshold
  alarm_description         = var.alarm_description
  insufficient_data_actions = []
  alarm_actions             = [var.alarm_actions]
  dimensions = {
    ClusterName = var.ClusterName
  }
}


