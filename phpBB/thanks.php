<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup();

page_header('Thanks');

if ($user->data['user_id'] == ANONYMOUS) {
	$template->set_filenames(array(
			'body' => 'declined_thanks.html',
	));
} else {
	$user_id = utf8_normalize_nfc(request_var('thanker','', true));
	$post_id = utf8_normalize_nfc(request_var('postid','', true));
	
	$sql = "SELECT * FROM `phpbb_thanks` WHERE `user_id` = '".$user_id."' AND `post_id` = '".$post_id."'";
	$result = $db->sql_query($sql);
    $row = $db->sql_fetchrow($result);
    $userz = $row['user_id'];
	
	if (isset($userz)) { // Had thanked before
		$template->set_filenames(array(
				'body' => 'twice_thanks.html',
		));
	} else {	
		$template->set_filenames(array(
			'body' => 'thanks.html',
		));
		
		$sql = "INSERT INTO `phpbb_thanks` (`user_id` ,`post_id`)
				VALUES ('".$user_id."' ,'".$post_id."')";
		$result = $db->sql_query($sql);	
	}
}

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>