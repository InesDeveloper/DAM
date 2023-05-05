<?php 

    class Persona{
   //   Propiedades
            private $edad = 0;
            private $pelo = "no mucho";
            private $nombre = "JV";
    //  Metodos 
        public function diHoli(){
            echo "Te estoy diciendo Holi <br>";
        }  
        public function getNombre(){
            echo "Me llamo ".$this->nombre."<br>";
        } 
        public function setNombre($nuevonombre){
            $this->nombre = $nuevonombre;
        }
    }

    $jv = new Persona();
    /*
    echo "La edad de JV es ".$jv->edad."<br>";
    echo "El pelo de JV es ".$jv->pelo."<br>";
    echo "El nombre de JV es ".$jv->nombre."<br>";

    $jv->nombre = "Jose Vicente";
    echo "El nombre de JV es ".$jv->nombre."<br>";
    */
    $jv->diHoli();
    $jv->getNombre();
    $jv->setNombre("Ines");
    $jv->getNombre();


?>