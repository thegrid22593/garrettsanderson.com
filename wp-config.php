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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'garrettsanderson');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '|%N!+=<h3(HNDaSXFPgIb23aq3~~,t@{OF?^.NECF5/JL*Xm_>ifH^j kH#f+cu~');
define('SECURE_AUTH_KEY',  ']MV5<N0}1:BK]sy|$cM+A#snZR!4kqm@GS} /yMFp^ qSnCKq5]7.5g^3(RdJ Fp');
define('LOGGED_IN_KEY',    'CFT0rz^PLaPz$z@:mK:7GQ&SC3Flduno*C=B}(,LU`AtDc5QnW+ikV4qu6,Z&A3$');
define('NONCE_KEY',        'cp&tj(_EgXt*#Y/A9QVRS47 C9 B`H^bHGog1qnUl6}MB3e:Vc?Qqph?hcQ JNSo');
define('AUTH_SALT',        'NYJzJ9Bu$fmMhi_%p,qNNcQYrrqF;[UzF!u#,a*5dq%Y$G6q#&eHb.=H<`9r<|){');
define('SECURE_AUTH_SALT', '%B|r;~)o)WWq2)^:+e8i>@:Q,,4(-7.BIt1R{:{LEYA#BTB!}:#WPA3UjUkb7h.i');
define('LOGGED_IN_SALT',   'ao>ZYKY0s}z?3R#k|UgX)OcZ)Xb4u$S~KytexV]b?<`|n.;)W/rurt4-RC/K5X>3');
define('NONCE_SALT',       'IxvmAiLX+R8ZRSA:6&}P1`9-){5~`IC8R,tp|nG:pJ]n<9GL5eU57uUG{1D.d/Zc');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
