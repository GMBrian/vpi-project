<div class="wrap">
	<h1><?php printf(__('Mass enroll students in course "%s"', 'namaste'), stripslashes($course->post_title));?></h1>
	
	<p><a href="admin.php?page=namaste_students&course_id=<?php echo $_GET['course_id']?>"><?php _e('Back to Manage Students', 'namaste');?></a></p>
	
	<form method="post">
	<table class="widefat">
		<tr><th><input type="checkbox" onclick="namasteSelectAll(this);"></th><th><?php _e('ID', 'namaste');?></th><th><?php _e('User Login', 'namaste');?></th>
		<th><?php _e('User Email', 'namaste');?></th></tr>
		<?php foreach($users as $user):
			$class = ('alternate' == @$class) ? '' : 'alternate';?>
			<tr class="<?php echo $class?>">
				<td><input type="checkbox" name="uids[]" value="<?php echo $user->ID?>" class="namaste_uid"></td>
				<td><?php echo $user->ID?></td>
				<td><?php echo $user->user_login;?></td>
				<td><?php echo $user->user_email;?></td>
			</tr>
		<?php endforeach;?>
	</table>
	
	<p align="center"><input type="submit" class="btn btn-primary" value="<?php _e('Enroll Selected Users', 'namaste');?>" name="mass_enroll"></p>
	<?php wp_nonce_field('namaste_mass_enroll');?>
	</form>
	
	<p align="center">
		<?php if($offset > 0):?>
			<a href="admin.php?page=namaste_mass_enroll&course_id=<?php echo $_GET['course_id']?>&offset=<?php echo $offset-$page_limit;?>"><?php _e('Previous page', 'namaste');?></a>
		<?php endif;?>
		&nbsp;
		<?php if($total_users > $offset + $page_limit):?>
			<a href="admin.php?page=namaste_mass_enroll&course_id=<?php echo $_GET['course_id']?>&offset=<?php echo $offset+$page_limit;?>"><?php _e('Next page', 'namaste');?></a>
		<?php endif;?>			
	</p>
</div>

<script type="text/javascript" >
function namasteSelectAll(chk) {
	if(chk.checked) jQuery('.namaste_uid').attr('checked', true);
	else jQuery('.namaste_uid').removeAttr('checked');
}
</script>