<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
define('WP_CACHE_KEY_SALT', getenv(DOMAIN_NAME));
define('WP_CACHE', true);
/** The name of the database for WordPress */
define( 'DB_NAME', getenv(MYSQL_DATABASE) );

/** MySQL database username */
define( 'DB_USER', getenv(MYSQL_USER) );
/** MySQL database password */
define( 'DB_PASSWORD', getenv(MYSQL_PASSWORD));
/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '#juPmKUckn03PCCa) ~c|+w-nRe:Fi_Vme[Oa|A%{5<{W$`X$W}0VkEg1X/x#zj|');
define('SECURE_AUTH_KEY',  'oG`oB#JB{Hho&I]7fb<lpo3B|vGrKmF<Y.z&lK8hUXS*e?o:]W-AMu>D.IIJ^Fl=');
define('LOGGED_IN_KEY',    'TA0u&:&!}@Fd+oc1 q%W]m%(z?=5!RD-W4hBm-F4_~Q)TGyrAnD/Ntt$SQtE,1D*');
define('NONCE_KEY',        '-J6`7u9nA|KZtRo}399R ]k>f9Mu0t+m+I|A,NK+-)uEpht*mux~R41xkx%iZw7u');
define('AUTH_SALT',        'v;K.y)J-=s^?@tzP+4T*+8Sh:`Huv]_g.x=q+A*3d9VA{PnDCc|EerT1}Fe[`l|Z');
define('SECURE_AUTH_SALT', 'z^0G%06w[.@S+-Y==K9!6dUv{o_Sh.pH-|<C{m|Y6ejzIHf52]lb-N-=SKa|U/|-');
define('LOGGED_IN_SALT',   'h>,%GC~6k;d`U2pzAe{ZAXtQ8[GYJjlF D)T>+QfduT7I$%ki[@)8guxp~HQ%&iB');
define('NONCE_SALT',       'tpr?--tUC*),%(KCF%)W.69_1s+VZ4>q,,2/8YA+D+*6DIk(WF9RqfxCpx-;-4pO');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
