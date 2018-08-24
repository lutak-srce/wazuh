# Define an email alert
define wazuh::email_alert(
  $alert_email,
  $alert_group = false, 
  $event_location = false,
  $do_not_delay = false,
  $do_not_group = false,
  $rule_id = false,
) {
  require wazuh::params

  concat::fragment { $name:
    target  => 'ossec.conf',
    order   => 65,
    content => template('wazuh/email_alert.erb'),
  }
}
