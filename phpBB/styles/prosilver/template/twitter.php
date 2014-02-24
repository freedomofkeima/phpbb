<!-- PHP -->
	include "lib/twitteroauth.php";
	$consumer = "62kJHzgEaFbbPNHYjgo5cw";
	$consumer_secret = "pVcSDABw3y5lf4r6qK5LlPtwpNhtGJ3il8celDejXz0";
	$accesstoken = "2341760491-QTt4ia2EuEiS3Wm8hXYLkfsNxheEwmJxJ6JnOFT";
	$accesstokensecret = "FiawRqaGHhjhRKps6j9f4diBohYpzhZuzSJeKtau8bonM";

	$i = 0;

	$twitter = new TwitterOAuth($consumer, $consumer_secret, $accesstoken, $accesstokensecret);
	$tweets = $twitter->get("https://api.twitter.com/1.1/search/tweets.json?q=detik.com&result_type=recent&count=11");
	foreach ($tweets as $tweet) {
		foreach ($tweet as $text) {
			if ($i < 10)
				echo "<li>".$text->text."<br>";
			$i = $i + 1;
		}
	}
<!-- ENDPHP -->