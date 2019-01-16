<?php
class Conexion{
	private static $host ="localhost";
	private static $user = "root";
	private static $static = password ="";
	private static $base ="erp";
	private $sentencias;
	private $conexion;
	privte fuction abrir_conexion(){
		$this -> conexion = new mysqlt(self::$host,self::$user,self::$password;self::$base);

	}
	private fuction cerrar_conexion(){
		$this ->conexion->close();
		//conexion.close();
	}

       protected fuction ejecutar_sentencia(){
       	//insertar,modificar,eliminar
       	$this ->abrir_conexion();
       	$this ->conexion->query($this->sentencia);
       	$this ->cerrar_conexion();
       	}
       	protected fuction obtener_sentencia(){
       		//consultar
       	$this ->abrir_conexion();
       	$resultado = $this->this->conexion->query($this->sentencia);
       	return $resultado;

       }
       
}
?>