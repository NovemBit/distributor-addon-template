<?php
/**
 * Require add-on files and perform their initial setup
 *
 * @package distributor-{ Add-on name }
 */

/* Require plug-in files */
require_once __DIR__ . '/includes/woocommerce-hub.php';

/* Call the setup functions */
\Distributor\WoocommerceHub\setup();
