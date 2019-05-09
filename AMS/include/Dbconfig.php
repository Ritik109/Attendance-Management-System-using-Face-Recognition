<?php

class Dbconfig{
    protected $serverName;
    protected $userNmae;
    protected $passCode;
    protected$dbName;

    function Dbconfig(){
        $this->serverName = 'localhost';
        $this->userName ='root';
        $this->passCode='';
        $this->dbName='ams_db';
    }
}
?>