<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress' );

/** Database password */
define( 'DB_PASSWORD', 'wordpress' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '|A8#+*`Nqm1%xd|##px.mUZFtJuGyff {-`By2B$$mLh)F=h<=>j5(I3|nV$D `J');
define('SECURE_AUTH_KEY',  '6An[]s](!v()9uL(Ra[O)(#-ut_~p8Li[FSz~4=k$xQOJ;q vZ+<~gqE?V*ys3=+');
define('LOGGED_IN_KEY',    'QuUBKDIOo~I(,p]cZ%uf;MGu8|#~|zDn>B=>I7mah>nM )an+6kVeTpc8aAwc})<');
define('NONCE_KEY',        ',{=4>4P$a)n72x6ppZLk5yV1MW ~_V}g^w8m0-&q@IYu52n7k9.q70DMIXZAxmF3');
define('AUTH_SALT',        '5C*ZS=APUI*vMSj8<dm..U)j3Ezx>k-`ei;QseQP&Zb-9osBJ8-,OBW{1]|c_+e9');
define('SECURE_AUTH_SALT', '7P~}0uX)*tOP[F`O1lqCSR}y}^*X!dHyg;IIz)m++`P,=uc,_bzhdmUh3pg[6Z[[');
define('LOGGED_IN_SALT',   'QX#KAs@BzZ|@e|HL0;uAT-vUVW<5yMB7Tw6,j@ME6B(/vc-D%0,Ml|S(!Cg85KQE');
define('NONCE_SALT',       '?,jd6]MJB1me}PPgn!_b+5~T+Z|)guDU.y(|IZa&.PEaVhBq/m/TDQ u[g/GfjDy');

/**#@-*/

/**
 * WordPress database table prefix.
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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';