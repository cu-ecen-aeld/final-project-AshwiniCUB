<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home</title>
</head>
<body>
    <main role="main">
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading display-2">AESD FINAL PROJECT</h1>
            </div>
        </section>
        <div class="modal-body row">
            <div class="col-md-6">
                <section class="jumbotron text-center">
                    <div class="container">
                        <h1 class="jumbotron-heading">Sensor Data:</h1>
                        <?php
                        $file_location = "/etc/tmpdir/sensordata.txt";
                        $open_file = fopen($file_location, "r");
                        if ($open_file) {
                            $file_contents = fread($open_file, filesize($file_location));
                            fclose($open_file);
                            echo nl2br($file_contents);
                        } else {
                            echo "Failed to open the file.";
                        }
                        ?>
                    </div>
                </section>
            </div>
        </div>
    </main>
</body>
</html>
