<?php

class Orchid {
    protected $Conn;
    public function __construct($Conn){
        $this->Conn = $Conn;
    }

    public function addorchid($data){    //adding a new orchid into a category as a logged in user.
        $query = "INSERT INTO orchids (cat_id, user_id, orchid_name, orchid_image, orchid_temperature, orchid_requirements) 
        VALUES (:cat_id, :user_id, :orchid_name, :orchid_image, :orchid_temperature, :orchid_requirements)";
        $stmt = $this->Conn->prepare($query);
        $data['user_id'] = $_SESSION['user_data']['user_id'];
        return $stmt->execute($data);
    }


    public function getOrchid($orchid_id){                 //Fetching an individual orchid.
        $query = "SELECT * FROM orchids WHERE orchid_id = :orchid_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "orchid_id" => $orchid_id
        ]);
        $orchid_data = $stmt->fetch(PDO::FETCH_ASSOC);
        $query = "SELECT * FROM orchid_images WHERE orchid_id = :orchid_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "orchid_id" => $orchid_id
        ]);
        $orchid_data['images'] = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $orchid_data;

    }


    public function searchOrchids($query_string) {    //search function
        $query = "SELECT * FROM orchids WHERE orchid_name LIKE :query_string";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "query_string" => "%".$query_string."%"  //allows the return of partial results matching the search input: vanda will also be searched with van
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
        

    }



    
    public function getAllOrchidsForCategory($category_id){   //shows all orchids from a category with the same cat id.
        $query = "SELECT * FROM orchids WHERE cat_id = :cat_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
        "cat_id" => $category_id
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC); 
    }


    public function getFeaturedOrchids(){          //featured orchid slide cards
    $query = "SELECT * FROM orchids WHERE orchid_featured = 1";
    $stmt = $this->Conn->prepare($query);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }

    public function getUserOrchids(){
        $query = "SELECT * FROM orchids WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id']
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
        

    }


    public function randomlySetFeaturedOrchids(){
        $query = "UPDATE orchids SET orchid_featured = 0 WHERE orchid_featured = 1";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
       
        $query = "UPDATE orchids SET orchid_featured = 1 ORDER BY RAND() LIMIT 6";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        


    }

}


