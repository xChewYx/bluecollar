<?php

/* ==============================================
Settings
============================================== */

define("MAILTO" , "email@website.com");
define("SUBJECT" , "Approach Web Form");

define("ERROR_MESSAGE" , "Error sending your message");

/* ==============================================
Email Sender
============================================== */

$message = '';
    
$message .= 'Name : ' . $_POST['name'] . "\r\n";

$message .= 'Email : ' . $_POST['email'] . "\r\n";
	
$message .= 'Phone : ' . $_POST['phone'] . "\r\n";

if(isset($_POST['zipcode'])) {
	$message .= 'Zip Code : ' . $_POST['zipcode'] . "\r\n";
}

if(isset($_POST['country'])) {
	$message .= 'Country : ' . $_POST['country'] . "\r\n";
}

if(isset($_POST['message'])) {
	$message .= 'Message : ' . $_POST['message'];
}

$headers = "From: ".$_POST['name']." <".$_POST['email'].">\r\n" ."Reply-To: ".$_POST['email']."\r\n";

function validateEmail($email) {
   if(preg_match("/^[_\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\.)+[a-zA-Z]{2,6}$/i", $email))
		return true;
   else
		return false;
}

if((strlen($_POST['name']) < 1 ) || (strlen($_POST['email']) < 1 ) || validateEmail($_POST['email']) == FALSE ) {

	echo( ERROR_MESSAGE );

} else {

	if( mail( MAILTO ,  SUBJECT , $message, $headers) ) {
		
		echo( "success" );

	} else {

		echo( ERROR_MESSAGE );

	}

}

?>