<!-- PHP -->
	include "lib/twitteroauth.php";
	$consumer = "62kJHzgEaFbbPNHYjgo5cw";
	$consumer_secret = "pVcSDABw3y5lf4r6qK5LlPtwpNhtGJ3il8celDejXz0";
	$accesstoken = "2341760491-QTt4ia2EuEiS3Wm8hXYLkfsNxheEwmJxJ6JnOFT";
	$accesstokensecret = "FiawRqaGHhjhRKps6j9f4diBohYpzhZuzSJeKtau8bonM";

	$twitter = new TwitterOAuth($consumer, $consumer_secret, $accesstoken, $accesstokensecret);
	$tweets = $twitter->get("https://api.twitter.com/1.1/search/tweets.json?q=fathan&result_type=recent&count=10");
	foreach ($tweets as $tweet) {
		foreach ($tweet as $text) {
			echo $text->text."<br>";
		}
		exit();
	}
<!-- ENDPHP -->