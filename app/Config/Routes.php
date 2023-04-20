<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
$routes->get('index_page','Home::index_page');



$routes->get('login_page','Home::login_page');
$routes->get('registration','Home::registration_page');
$routes->get('user_page','Home::user_page');
$routes->get('add_page','Home::add_page');

$routes->get('forget_page','Home::forget_page');
$routes->get('service_page','Home::service_page');
$routes->get('instruct_page','Home::instruct_page');
$routes->get('form_details','Home::form_details');
$routes->get('nsap_form','Home::nsap_form');
$routes->get('list_page','Home::list_page');

$routes->get('view_process/(:num)','Home::view_process/$1');
$routes->get('user_view/(:num)','Home::user_view/$1');
$routes->get('user_update/(:num)','Home::user_update/$1');

$routes->get('status_view/(:num)','Home::status_view/$1');
$routes->post('confirm_process/(:num)','Home::confirm_process/$1');
$routes->post('form_process','Home::form_process');


$routes->get('about_page','Home::about_page');
$routes->get('admin_page','Home::admin_page');

$routes->post('login_process','Home::login_process');
$routes->post('update_process','Home::update_process');
$routes->post('registration_process','Home::registration_process');
$routes->post('add_process','Home::add_process');
$routes->post('update_pass','Home::update_pass');
$routes->post('change_pass','Home::change_pass');



/*;
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
