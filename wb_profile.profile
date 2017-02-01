<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */
use Drupal\Core\Form\FormStateInterface;

// Add any custom code here like hook implementations.
function wb_profile_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {

  // Site name and email address
  $form['site_information']['site_name']['#default_value'] = 'test';
  $form['site_information']['site_mail']['#default_value'] = 'test@willbe.it';

  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['password']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'test@willbe.it';

  // Date/time settings
  $form['regional_settings']['site_default_country']['#default_value'] = 'IT';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'Europe/Rome';

  // Don't check for updates, no need for email notifications
  $form['update_notifications']['update_status_module']['#default_value'] = array(0);
}
