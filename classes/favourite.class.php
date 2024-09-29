<?php
class Favourite {
    protected $Conn;

    public function __construct($Conn){
        $this->Conn = $Conn;
    }

    public function isFavourite($orchid_id){
        $query = "SELECT * FROM user_favs WHERE user_id = :user_id AND orchid_id = :orchid_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id'],
            "orchid_id" => $orchid_id
        ]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function toggleFavourite($orchid_id){
        // Check if orchid is already favourite
        $is_favourite = $this->isFavourite($orchid_id);

        if($is_favourite) {
            // Is already favourite - so remove.
            $query = "DELETE FROM user_favs WHERE user_fav_id = :fav_id";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute([
                "fav_id" => $is_favourite['user_fav_id']
            ]);
            return false; // Return false for "removed"
        }else{
            // Is not favourite - so add
            $query = "INSERT INTO user_favs (user_id, orchid_id) VALUES (:user_id, :orchid_id)";
            $stmt = $this->Conn->prepare($query);

            return $stmt->execute(array(
                "user_id" => $_SESSION['user_data']['user_id'],
                "orchid_id" => $orchid_id
            ));
            return true; // Return false for "added"
        }
    }
    public function getAllFavouritesForUser(){
        $query = "SELECT * FROM user_favs LEFT JOIN orchids ON user_favs.orchid_id = orchids.orchid_id WHERE user_favs.user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id']
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

}