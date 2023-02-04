<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => '<i class="fa fa-home "></i>'
		),
		
		array(
			'path' => 'barang', 
			'label' => 'Barang', 
			'icon' => '<i class="fa fa-automobile "></i>'
		),
		
		array(
			'path' => 'buku', 
			'label' => 'Dokumen', 
			'icon' => '<i class="fa fa-book "></i>'
		),
		
		array(
			'path' => 'ruangan', 
			'label' => 'Ruangan', 
			'icon' => '<i class="fa fa-briefcase "></i>'
		),
		
		array(
			'path' => 'tanah', 
			'label' => 'Tanah', 
			'icon' => '<i class="fa fa-adjust "></i>'
		),
		
		array(
			'path' => 'peminjaman', 
			'label' => 'Peminjaman', 
			'icon' => '<i class="fa fa-shopping-basket "></i>'
		),
		
		array(
			'path' => 'user', 
			'label' => 'User', 
			'icon' => '<i class="fa fa-user "></i>'
		),
		
		array(
			'path' => 'role_permissions', 
			'label' => 'Role Permissions', 
			'icon' => ''
		),
		
		array(
			'path' => 'roles', 
			'label' => 'Roles', 
			'icon' => ''
		)
	);
		
	
	
			public static $account_status = array(
		array(
			"value" => "Active", 
			"label" => "Active", 
		),
		array(
			"value" => "Pending", 
			"label" => "Pending", 
		),
		array(
			"value" => "Blocked", 
			"label" => "Blocked", 
		),);
		
}