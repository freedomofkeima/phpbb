<?php
/**
*
* @package phpBB3
* @copyright (c) 2005 phpBB Group
* @license http://opensource.org/licenses/gpl-2.0.php GNU General Public License v2
*
*/

/**
* @ignore
*/
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
include($phpbb_root_path . 'includes/bbcode.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);

$sql = 'SELECT COUNT(*) as jmlUser FROM phpbb_topic_voter where id_voter='.$user->data['user_id'];
$result = $db->sql_query($sql);
$row = $db->sql_fetchrow($result);
$db->sql_freeresult($result);

if ($row['jmlUser'] > 0) {
	echo "maaf, anda sudah memberi rating"; //jika sudah memilih
	exit(0);
}

$id_topic = intval(request_var('id_topic',0));
$rate = intval(request_var('rate',1));
if (($rate < 1) || ($rate > 5)) {
	echo "maaf, nilai rating salah";
	exit(0);
}

$sql_insert = "insert into phpbb_topic_voter (id_voter,id_topic,rate) values ('".$user->data['user_id']."','".$id_topic."','".$rate."')";
$result = $db->sql_query($sql_insert);
echo "OK";
?>
