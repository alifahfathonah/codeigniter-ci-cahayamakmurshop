<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Email_model extends CI_Model
{
	public function sendemail($email,$subject,$isiemail){
	$config['protocol']    = 'smtp';
        $config['smtp_host']    = 'mail.sipuma.net';
        $config['smtp_port']    = '25';
        $config['smtp_timeout'] = '7';
        $config['smtp_user']    = 'contact@sipuma.net';
        $config['smtp_pass']    = 'hRu*Os(T--5(';
        $config['charset']    = 'utf-8';
        $config['newline']    = "\r\n";
        $config['mailtype'] = 'html'; // or html
        $config['validation'] = TRUE; // bool whether to validate email or not      
        $this->load->library("email");
        $this->email->initialize($config);
        $this->email->to($email);
        $this->email->from('contact@sipuma.net','SIPUMA');
        
        $this->email->subject($subject);
        $this->email->message($isiemail);
        $this->email->send();

        echo $this->email->print_debugger();

	}

}
