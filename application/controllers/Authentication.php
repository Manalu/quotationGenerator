<?php



defined('BASEPATH') OR exit('No direct script access allowed');

class Authentication extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('AuthModel');
    }
    

    public function login()
    {

        // Redirect to dasboard if already logged in
        if ($this->session->userdata('type')=='authorized') {
            
            redirect(site_url());
            
        }

        // Getting values from form fields
        $entered_email = $this->input->post('user-email');
        $entered_password = $this->input->post('user-password');

        // Email address check
        $user_data = $this->AuthModel->fetch_user_by_email($entered_email);

        if ($user_data) {
            
            // Password check
            $password_correct = password_verify($entered_password,$user_data['password']);

            if ($password_correct) {
            
                
                $array = array(
                    'first_name' => $user_data['fname'],
                    'last_name' => $user_data['lname'],
                    'email' => $user_data['email'],
                    'type' => 'authorized'
                );
                
                // Set session data
                $this->session->set_userdata( $array );
                
                // Redirect to dashboard

                redirect(site_url());

            } else {

                // Show error that password is incorrect
                $data['title'] = 'Login';
                $data['error'] = 'The password is incorrect';
                $this->load->view('templates/header', $data);
                $this->load->view('public_pages/login', $data);
                $this->load->view('templates/footer', $data);
            
            }
            
        } else {
            // Show error that email address is incorrect
            $data['title'] = 'Login';
            $data['error'] = 'The email address is incorrect';
            $this->load->view('templates/header', $data);
            $this->load->view('public_pages/login', $data);
            $this->load->view('templates/footer', $data);
        }
        

    }

    public function logout(){
        
        $this->session->sess_destroy();
        
        redirect(site_url('login'));

    }

}

/* End of file Authentication.php */
