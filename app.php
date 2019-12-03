<?php
$date = date("Y-m-d");
$cityName = trim(htmlentities($_POST['city']));
$countryName = trim(htmlentities($_POST['countries']));
//логика поведения скрипта
if (!$cityName == null) {
    if ($countryName == 'ru' || $countryName == 'ua') {
        $data = getDataDB($cityName, $countryName, $date);
        if ($data == null){
            $getApiData = getApiData($cityName, $countryName);
            if ($getApiData == 3) {
                echo  $getApiData; //3 - ошибка о ненайденом городе
            } else {
                setDataDB ($getApiData);
                $result = getDataDB($cityName, $countryName, $date);
                $newData = json_encode($result);
                print_r($newData);
            }

        } else {
            $result = json_encode($data);
            print_r($result);
        }
    }   else {
        echo '2'; // 2 - ошибка о неверном значении в country
    }
} else {
    echo '1'; // 1 - ошибка о незаполненных поле(ях)
}
//---

function getApiData ($city, $country) {

    $countryName = $country;
    $cityName = $city;
    $apiKey = "731fdb9f46272f54a8b68c894765410b";
    $apiUrl = "http://api.openweathermap.org/data/2.5/forecast?q={$cityName},{$countryName}&units=metric&appid={$apiKey}";

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_URL, $apiUrl);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_VERBOSE, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    $data = curl_exec($ch);
    if ($data == '{"cod":"404","message":"city not found"}') {
        return $err = 3;
    } else {
        $decData = json_decode($data,true);
        curl_close($ch);
        return($decData);
    }
}

function DBConnect () {
    $dsn = 'mysql:host=127.0.0.1;port=3306;dbname=weather;charset=utf8';
    $user = 'root';
    $pass = '';
    $options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
    $DBH = new PDO ($dsn, $user, $pass, $options);
    return $DBH;
}

function setDataDB ($row) {

    $country = $row['city']['country'];

    for ($i=0; isset($row['list'][$i]) == true; $i++) {

        $DBH = DBConnect()->prepare("INSERT INTO {$country} VALUES (:data, :city, :humidity, :temp, :AtmPressure)");

        $DBH->bindParam(':data', $row['list'][$i]['dt_txt']);
        $DBH->bindParam(':city', $row['city']['name']);
        $DBH->bindParam(':humidity', $row['list'][$i]['main']['humidity']);
        $DBH->bindParam(':temp', $row['list'][$i]['main']['temp']);
        $DBH->bindParam(':AtmPressure', $row['list'][$i]['main']['pressure']);


        $DBH->execute();
    }



}

function getDataDB ($city, $country, $date) {

    $DBH = DBConnect()->query("SELECT * FROM {$country} WHERE date LIKE '{$date}%' AND city = '{$city}'");
    $result = $DBH->fetchAll();
    $DBH = null;
    return $result;

}
