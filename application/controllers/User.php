<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->load->view('template/header');
        $this->load->view('auth/login');
        $this->load->view('template/footer');
    }
    public function register()
    {
        $this->load->view('template/header');
        $this->load->view('auth/register');
        $this->load->view('template/footer');
    }
    public function registration()
    {

        $data = [
            'name_user' => htmlspecialchars($this->input->post('name', true)),
            'email_user' => htmlspecialchars($this->input->post('email', true)),
            'username_user' => htmlspecialchars($this->input->post('username', true)),
            'image_user' => 'user.jpg',
            'password_user' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
            'id_role' => '2',
            'is_active' => '1',
            'datecreated' => time()
        ];
        $this->db->insert('user', $data);

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Your account has been created! 
      </div>');
        redirect('user');
    }
}

/*$this->form_validation->set_rules('name_user', 'Name', 'required|trim');
$this->form_validation->set_rules('email_user', 'Email', 'required|trim|valid_email|is_unique[user.email_user]');
$this->form_validation->set_rules(
    'passwor_user',
    'Password',
    'required|trim|min_length[5]|matches[password2]',
    [
        'matches' => 'Password dont match', 'min_length' => 'Password to short'
    ]
);
$this->form_validation->set_rules('password_user', 'Password', 'required|trim|matches[password]');

if ($this->form_validation->run() == false) {
    $data['title'] = 'Register';
    redirect('user/register');
} else {}*/