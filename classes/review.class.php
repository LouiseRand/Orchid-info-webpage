<?php
class Review {
    protected $Conn;

    public function __construct($Conn){
        $this->Conn = $Conn;
    }

    public function createReview($review_data){
        $query = "INSERT INTO orchid_reviews (user_id, orchid_id, review_rating) VALUES (:user_id, :orchid_id, :review_rating)";
        $stmt = $this->Conn->prepare($query);
    
        return $stmt->execute(array(
            'user_id' => $_SESSION['user_data']['user_id'],
            'orchid_id' => $review_data['orchid_id'],
            'review_rating' => $review_data['review_rating']
        ));
    }
    
    public function calculateRating($orchid_id){
        $query = "SELECT AVG(review_rating) AS avg_rating FROM orchid_reviews WHERE orchid_id = :orchid_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(
            'orchid_id' => $orchid_id,
        ));
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
    


}