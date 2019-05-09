<?php
include 'Dbconfig.php';



class DbHandler extends Dbconfig{

    public $connectionString;
    public $dataSet;
    private $sqlQuery;

        protected $databaseName;
        protected $hostName;
        protected $userName;
        protected $passCode;

        function DbHandler()
        {
            $this->connectionString=NULL;
            $this->dataSet=NULL;
            $this->sqlQuery=NULL;

            $dbPara=new Dbconfig();
            $this->databaseName=$dbPara->dbName;
            $this->hostName=$dbPara->serverName;
            $this->userName=$dbPara->userName;
            $this->passCode=$dbPara->passCode;
            $dbPara=NULL;
        }
        function dbConnect(){
            $this->connectionString=mysqli_connect($this->hostName,$this->userName,$this->passCode,$this->databaseName);
            return $this->connectionString;
        }

        function dbDisconnect(){
            $this->connectionString=NULL;
            $this->sqlQuery=NULL;
            $this->dataSet=NULL;
            $this->databseName=NULL;
            $this->hostName=NULL;
            $this->userName=NULL;
            $this->passCode=NULL;
        }
        function selectAll($tableName){
            $this->sqlQuery='SELECT * FROM '.$this->databaseName.'.'.$tableName;
            $this->dataSet=mysqli_query($this->connectionString,$this->sqlQuery);
            return $this->dataSet;
        }
        function selectWhere($tableName,$rowName,$operator,$value,$valueType){
            $this->sqlQuery='SELECT * FROM '.$tableName.' WHERE '.$rowName.' '.$operator.' ';
            if($valueType=='int'){
                $htis->sqlQuery.=$value;
            }
            else if($valueType=='char'){
                $this->sqlQuery.="'".$value."'";

            }
            $this->dataSet=mysqli_query($this->connectionString,$this->sqlQuery);
            $this->sqlQuery=NULL;
            return $this->dataSet;

        }
        function insertInto($tableName,$values){
            $i=NULL;
            $this->sqlQuery='INSERT INTO '.$tableName.' VALUES (';
            $i=0;
            while($values[$i]["val"]!=NULL && $values[$i]["type"]!=NULL)
            {
               if($values[i]["type"]=="char"){
                   $this->sqlQuery.="'";
                   $this->sqlQuery.=$values[$i]["val"];
                   $this->sqlQuery.="'";
               } 
               else if($values[$i]["type"]=='int'){
                   $this->sqlQuery.=$values[$i]["val"];
               }
               $i++;
               if($values[$i]["val"]!=NULL){
                   $this->sqlQuery.=',';
               }
            }
            $this->sqlQuery.=')';
            mysqli_query($this->connectionSrting,$this->sqlQuery);
            return $this->sqlQuery;
        }

        function selectFreeRun($query){
            $this->dataSet=mysqli_query($this->connectionString,$query);
            return $this->dataSet;

        }
        function freeRun($query){
            return mysqli_query($this->connectionString,$query);
            
        }



}


?>