<?php

namespace App\Controllers;
use App\Models\Home_model;

class Home extends BaseController
{
    public function index()
    {
        return view('Homepage.tpl');
    }

	public function user_view($email){
		$Home_model = new Home_model();		
		
		$result['status']= $Home_model->user_data($email);
		return view('user/view.tpl',$result);	   

	}
	public function status_view($email){
		$Home_model = new Home_model();		
		
		$result['status']= $Home_model->user_data($email);
		return view('user/status.tpl',$result);	   

	}
	public function add_page(){
		return view('admin/adminadd.tpl');
	}
	public function user_update($email){
		$Home_model = new Home_model();		
		
		$result['status']= $Home_model->user_data($email);
		return view('user\update.tpl',$result);	   

	}

	public function login_page(){
		return view('login.tpl');
		
	}
	public function list_page(){
		$Home_model = new Home_model();
            $data['status']=$Home_model->list_data();


			return view('admin/pages-blank.tpl',$data);
	}
	public function admin_page(){
		return view('admin/admin.tpl');
	}
	public function forget_page(){
		return view('forget_password.tpl');
		
	}

    public function registration_page(){
		return view('signup.tpl');

		
	}
	public function about_page(){
		return view('about.tpl');
	}
	public function index_page(){
		return view('index.tpl');
	}
	public function service_page(){
		return view('service.tpl');
	}
	public function user_page(){
		return view('user/userpage.tpl');
	}
	public function login_process(){

		$Home_model = new Home_model();
		
		$email=$this->request->getPost('email');
		$pass=$this->request->getPost('pass');
		
		$data=['email'=>$email, 'pass'=>$pass];

		$result = $Home_model->login_data($data);
		
		if ($result==1) {
			$data['login_error'] = true;          
			
            
			return view('login.tpl',$data);
        } elseif($result==2){
			session()->set('is_admin', true);
        session()->set('email', $email);
			return view('admin/admin.tpl');

		}else{ 
			session()->set('is_admin', false);
        session()->set('email', $email);
			return view('index.tpl');		
			
        }
}
public function nsap_form(){
	return view('user/form/nsapform.tpl');
}
public function instruct_page(){
	return view('user/application.tpl');
}
public function form_details(){
	return view('user/applydetails.tpl');
}


	public function registration_process(){

		$Home_model = new Home_model();
		
		
		$name=$this->request->getPost('name');
		$email=$this->request->getPost('email');
		$pass=$this->request->getPost('pass');
		$cpass=$this->request->getPost('cpass');
		

		

		$data=['name'=>$name,'email'=>$email, 'pass'=>$pass,'cpass'=>$cpass];

		$status = $Home_model->insert_data($data);

		if($status==TRUE){
			
			return view('login.tpl');
		}
		else{
			return view('signup.tpl');
	}
		}

		public function list_process(){
			return view('student_list.tpl');
		}
		public function view_process($app_id){
            $Home_model = new Home_model();
            
           
            $data['status']=$Home_model->view_data($app_id);
            return view('admin/view.tpl',$data);
           

        }
		
		
		public function form_process(){
			    // Load the model
				$Home_model = new Home_model();

				// Get the form data
				
				$email = $this->request->getPost('email');
				$schemeName = $this->request->getPost('scheme_name');
				$schemeType = $this->request->getPost('scheme_type');
				$state = $this->request->getPost('state');
				$district = $this->request->getPost('district');
				$area = $this->request->getPost('area');
				$name = $this->request->getPost('name');
				$dob = $this->request->getPost('dob');
				$age = $this->request->getPost('age');
				$father_name = $this->request->getPost('father_name');
				$gender = $this->request->getPost('gender');
				$caste = $this->request->getPost('caste');
				$address = $this->request->getPost('address');
				$benNo = $this->request->getPost('ben_no');
				$phNo = $this->request->getPost('ph_no');
				$payMode = $this->request->getPost('pay_mode');
				$aadharName = $this->request->getPost('aadhar_name');
				$aadharNo = $this->request->getPost('aadhar_no');

				// Create an array with the data
				$data = [
					
					'email' => $email,
					'scheme_name' => $schemeName,
					'scheme_type' => $schemeType,
					'state' => $state,
					'district' => $district,
					'area' => $area,
					'name' => $name,
					'dob' => $dob,
					'age' => $age,
					'father_name' => $father_name,
					'gender' => $gender,
					'caste' => $caste,
					'address' => $address,
					'ben_no' => $benNo,
					'ph_no' => $phNo,
					'pay_mode' => $payMode,
					'aadhar_name' => $aadharName,
					'aadhar_no' => $aadharNo
				];

				// Call the model function to insert the data
				$status = $Home_model->insert_scheme($data);

				if ($status==TRUE) {
					
					echo "<script>alert('Failed to insert data.');</script>";
					return view('user/applydetails.tpl');
					
				} else {
					// Failed to insert data
					echo "<script>alert('Successfully Applied');</script>";
					return view('user/applydetails.tpl');
				}
			
				// Return the message to the view
				
			}
			public function confirm_process($app_id)
			{
				$Home_model = new Home_model();
				$approve = $this->request->getPost('approve');
				
			$result=$Home_model->update_status($app_id, $approve);
			return redirect()->to(base_url('Home/view_process/'.$app_id));
				
			}
			/*public function user_view(){
				$Home_model = new Home_model();
				$email=$this->request->getPost('email');
				$data=['email'=>$email];
				$result['status']=$Home_model->user_data($data);
				return view('user/view.tpl',$result);
			}*/
			public function update_process(){
			    // Load the model
				$Home_model = new Home_model();

				// Get the form data
				
				$email = $this->request->getPost('email');
				$schemeName = $this->request->getPost('scheme_name');
				$schemeType = $this->request->getPost('scheme_type');
				$state = $this->request->getPost('state');
				$district = $this->request->getPost('district');
				$area = $this->request->getPost('area');
				$name = $this->request->getPost('name');
				$dob = $this->request->getPost('dob');
				$age = $this->request->getPost('age');
				$father_name = $this->request->getPost('father_name');
				$gender = $this->request->getPost('gender');
				$caste = $this->request->getPost('caste');
				$address = $this->request->getPost('address');
				$benNo = $this->request->getPost('ben_no');
				$phNo = $this->request->getPost('ph_no');
				$payMode = $this->request->getPost('pay_mode');
				$aadharName = $this->request->getPost('aadhar_name');
				$aadharNo = $this->request->getPost('aadhar_no');

				// Create an array with the data
				$data = [
					
					'email' => $email,
					'scheme_name' => $schemeName,
					'scheme_type' => $schemeType,
					'state' => $state,
					'district' => $district,
					'area' => $area,
					'name' => $name,
					'dob' => $dob,
					'age' => $age,
					'father_name' => $father_name,
					'gender' => $gender,
					'caste' => $caste,
					'address' => $address,
					'ben_no' => $benNo,
					'ph_no' => $phNo,
					'pay_mode' => $payMode,
					'aadhar_name' => $aadharName,
					'aadhar_no' => $aadharNo
				];

				// Call the model function to insert the data
				$status = $Home_model->update_data($data);

				if ($status==TRUE) {
					// Data successfully inserted
					return view('user/userpage.tpl');

					
				} else {
					echo "<script>alert('Failed to insert data.');</script>";
					return redirect()->to(base_url('Home/user_update/'.$email));
					
				}
			
				// Return the message to the view
				
			}
			public function add_process(){

				$Home_model = new Home_model();
				
				
				$name=$this->request->getPost('name');
				$email=$this->request->getPost('email');
				$pass=$this->request->getPost('pass');
						
				$data=['name'=>$name,'email'=>$email, 'pass'=>$pass];
		
				$status = $Home_model->add_data($data);
				return view('admin/adminadd.tpl');
				
				}
			public function update_pass(){
			$Home_model = new Home_model();
			$email=$this->request->getPost('email');
			$result = $Home_model->check_pass($email);
			if ($result==1) {		
				echo "<script>alert('Invalid Email');</script>";	
				return view('forget_password.tpl');
			} else{
				session()->set('is_admin', true);
			session()->set('email', $email);
				return view('change_pass.tpl');
			}
			}
			public function change_pass(){
				$Home_model = new Home_model();
				$email=$this->request->getPost('email');
				$pass=$this->request->getPost('pass');
				$data=['email'=>$email, 'pass'=>$pass];
				$result = $Home_model->pass_change($data);
				if ($result==1) {		
					echo "<script>alert('Password Cannot Change Retry');</script>";	
					return view('forget_password.tpl');
				} else{
					echo "<script>alert('Password Successfully Change');</script>";
					return view('change_pass.tpl');
				}
				}

		
}

