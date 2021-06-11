<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<div class="container">
<h2><div class="well text-center"> Recommendation For You </div></h2>
<?php
	include("db.php");
	include("recommend.php");
	$movies=mysqli_query($con,"select * from user_movies");
	$matrix=array();
	while($movie=mysqli_fetch_array($movies))
	{
		$users=mysqli_query($con,"select username from users where id=$movie[user_id]");
		$username=mysqli_fetch_array($users);
		$matrix[$username['username']][$movie['movie_name']]=$movie['movie_rating'];
	}
	$users=mysqli_query($con,"select username from users where id=$_GET[id]");
	$username=mysqli_fetch_array($users);

?>
 <div class="panel panel-default">
    <div class="panel-heading">
		<h2>
		<a class="btn btn-success" href="add_users.php"> Add Users</a>
		<a class="btn btn-info pull-right" href="index.php"> Back </a>
		</h2>
	</div>
	<div class="panel-body">
	<table class="table table-striped">
		<th> Movie Name </th>
		<th> Movie Rating </th>
		<?php 
		$recommedation=array();
		$recommedation=getRecommendation($matrix,$username['username']);
		foreach($recommedation as $movie=>$rating)
		{
		?>
		<tr>
			<td><?php echo $movie; ?> </td>
			<td><?php echo $rating; ?> </td>
		</tr>
  <?php } ?>
    </table>	
	</div>
 </div>
