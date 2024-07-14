<?php 
    session_start();
    if(isset($_SESSION['unique_id'])){
        include_once "config.php";
        $incoming_id = mysqli_real_escape_string($conn, $_POST['incoming_id']);
        $outgoing_id = $_SESSION['unique_id'];
        $output = "";
        $sql = "SELECT messages.*, users.img FROM messages 
        LEFT JOIN users ON users.unique_id = messages.outgoing_msg_id
        WHERE (messages.outgoing_msg_id = {$outgoing_id} AND messages.incoming_msg_id = {$incoming_id})
        OR (messages.outgoing_msg_id = {$incoming_id} AND messages.incoming_msg_id = {$outgoing_id}) 
        ORDER BY messages.msg_id";

        $query = mysqli_query($conn, $sql);
        if(mysqli_num_rows($query) > 0){
            while($row = mysqli_fetch_assoc($query)){
                if(array_key_exists('outgoing_msg_id', $row)) {
                    $output = '<div class="chat outgoing">
                                <div class="details">
                                    <p>'. $row['msg'] .'</p>
                                </div>
                                </div>';
                }else{
                    $output = '<div class="chat incoming">
                                <img src="php/images/'.$row['img'].'" alt="">
                                <div class="details">
                                    <p>'. $row['msg'] .'</p>
                                </div>
                                </div>';
                }
                echo $output;
            }
         
        }
     
    }else{
        header("location: ../login.php");
    }

?>