<?php
/**
 * Require add-on files and perform their initial setup
 *
 * @package distributor-{ Add-on name }
 */

/* Require plug-in files */
require_once __DIR__ . '/includes/add-on-hub.php';
require_once __DIR__ . '/includes/add-on-spoke.php';

/* Call the setup functions */
\Distributor\AddOnHub\setup();
\Distributor\AddOnSpoke\setup();
