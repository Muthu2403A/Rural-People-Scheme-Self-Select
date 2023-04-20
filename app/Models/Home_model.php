<?php

namespace App\Models;

use CodeIgniter\Model;

class Home_model extends Model
{
    function insert_data($data = NULL)
	{
		$sql = "INSERT INTO persons(name,email,pass,cpass) VALUES('".$data['name']."','".$data['email']."','".$data['pass']."','".$data['cpass']."')";
		$query = $this->db->query($sql);
		return $query;		
	}
	function add_data($data = NULL)
	{
		$sql = "INSERT INTO admins(name,email,pass) VALUES('".$data['name']."','".$data['email']."','".$data['pass']."')";
		$query = $this->db->query($sql);
		return $query;		
	}

	function login_data($data) {
		$sql = "SELECT * FROM persons WHERE email='".$data['email']."' and pass='".$data['pass']."' ";
		$query = $this->db->query($sql);
	
		if ($query->getNumRows() > 0) {
			return '0';
		} else {
			$sql = "SELECT * FROM admins WHERE email='".$data['email']."' and pass='".$data['pass']."' ";
			$query = $this->db->query($sql);
			if ($query->getNumRows() > 0) {
				return '2';
			} else {
				return '1';

			}
		}
	}
	function list_data()
	{
		$sql = "SELECT * FROM scheme ";
		
		$query = $this->db->query($sql);
		return $query;
	}
	function view_data($app_id)
	{
		$sql = "SELECT * FROM scheme WHERE app_id ='".$app_id."' ";
		
		$query = $this->db->query($sql);
		return $query;
	}
	function apply_data($data)
	{
		$sql = "UPDATE scheme SET confirm='".$data['confirm']."' WHERE app_id ='".$data['app_id']."'  ";
		
		$query = $this->db->query($sql);
		return $query;
	}
	function insert_scheme($data = NULL)
	{
		$sql = "INSERT INTO scheme( email, scheme_name, scheme_type, state, district, area, name, dob, age, father_name, gender, caste, address, ben_no, ph_no, pay_mode, aadhar_name, aadhar_no) VALUES ( '".$data['email']."', '".$data['scheme_name']."', '".$data['scheme_type']."', '".$data['state']."', '".$data['district']."', '".$data['area']."', '".$data['name']."', '".$data['dob']."', '".$data['age']."', '".$data['father_name']."', '".$data['gender']."', '".$data['caste']."', '".$data['address']."', '".$data['ben_no']."', '".$data['ph_no']."', '".$data['pay_mode']."', '".$data['aadhar_name']."', '".$data['aadhar_no']."')";
		$query = $this->db->query($sql);
		if ($query) 
		{

			return '0';
		} else {
			$sql = "SELECT app_id FROM scheme WHERE email='".$data['email']."'";
			$query = $this->db->query($sql);
			return $query;
			
		}
	}
	function update_status($app_id, $approve){
		$sql = "UPDATE `scheme` SET `approve`='".$approve."' WHERE `app_id`='".$app_id."'";
		$query = $this->db->query($sql);
		return $query;

	}
	
	function user_data($email)
	{
		$sql = "SELECT * FROM scheme WHERE email='".$email."' ";
		
		$query = $this->db->query($sql);
		
		log_message('error',$sql);
		return $query;
	}
	function update_data($data = NULL)
{
    $sql = "UPDATE scheme SET email='".$data['email']."', scheme_name='".$data['scheme_name']."', scheme_type='".$data['scheme_type']."', state='".$data['state']."', district='".$data['district']."', area='".$data['area']."', name='".$data['name']."', dob='".$data['dob']."', age='".$data['age']."', father_name='".$data['father_name']."', gender='".$data['gender']."', caste='".$data['caste']."', address='".$data['address']."', ben_no='".$data['ben_no']."', ph_no='".$data['ph_no']."', pay_mode='".$data['pay_mode']."', aadhar_name='".$data['aadhar_name']."', aadhar_no='".$data['aadhar_no']."' WHERE email='".$data['email']."'";
    $query = $this->db->query($sql);
    return $query;
}
function check_pass($email) {
	$sql = "SELECT * FROM persons WHERE email='".$email."'";
	$query = $this->db->query($sql);

	if ($query->getNumRows() > 0) {
		return '0';
	} else {
		$sql = "SELECT * FROM admins WHERE email='".$email."' ";
		$query = $this->db->query($sql);
		if ($query->getNumRows() > 0) {
			return '2';
		} else {
			return '1';

		}
	}
}
function pass_change($data) {
	$sql = "UPDATE persons SET pass = '".$data['pass']."' WHERE email = '".$data['email']."'";
	$query = $this->db->query($sql);

	if ($query == FALSE) {
		return '0';
	} else {
		$sql = "UPDATE admins SET pass = '".$data['pass']."' WHERE email = '".$data['email']."'";
		$query = $this->db->query($sql);
		if ($query == TRUE) {
			return '2';
		} else {
			return '1';

		}
	}
}


	


	
}
