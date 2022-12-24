<?php 
$ch = curl_init();

$key = "myDowj9KhUfBs8qTR7M31Sra2dYHLVt4PFuiQplxWGZI0kEeJbNAg5cnvOCX";
$sign = md5("sh0kHFzc0islzin8CqysxUNpsLxJRomdqPweMbQqzBVXeyXKtT1sgUKk3UF45bdLBU0Pax9p");
$game = "mobile legends";
$uid = 38925868;
$zone = 2058;

curl_setopt($ch, CURLOPT_URL,"https://api.shenn.id/v1/game-checker");
curl_setopt($ch, CURLOPT_POST, 1);

curl_setopt($ch, CURLOPT_POSTFIELDS, 
http_build_query(array('key' => $key, 'sign' => $sign, 'game' => $game, 'data' => $uid, 'zone' => $zone)));

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$server_output = curl_exec($ch);

curl_close ($ch);

echo "<pre>";
print_r($server_output);
echo "</pre>";
?>