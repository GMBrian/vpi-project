<div class="wrap">
	<h1><?php _e('Student Enrollments', 'namaste')?></h1>
	
	<div class="postbox-container">
	<?php if(!sizeof($courses)):?>
	<p><?php _e('Nothing to do here as you have not created any courses yet!')?></p>
	<?php return true;
	endif;?>
	
	<?php if(!empty($error)):?>
		<div class="namaste-error"><?php echo $error?></div>
	<?php endif;?>
	
	<form method="get">
		<input type="hidden" name="page" value="namaste_students">
		<div class="wp-admin namaste-form">
			<p><label><?php _e('Select course:', 'namaste')?></label>
			<select name='course_id' onchange="this.form.submit();">
			<option value=""></option>
			<?php foreach($courses as $course):?>
				<option value="<?php echo $course->ID?>" <?php if(!empty($_GET['course_id']) and $course->ID == $_GET['course_id']) echo 'selected'?>><?php echo $course->post_title?></option>
			<?php endforeach;?>
			</select></p>
			<?php if(!empty($_GET['course_id'])):?>
				<p><label><?php _e('Enroll student in the course:', 'namaste')?></label>
				 <input type="text" name="email" size="30" placeholder="<?php _e('Enter email or user login', 'namaste')?>"> 
				<input type="submit" name="enroll" value="<?php _e('Enroll', 'namaste')?>">
				&nbsp; <a href="admin.php?page=namaste_mass_enroll&course_id=<?php echo $_GET['course_id']?>"><?php _e('[Mass enroll students]', 'namaste');?></a>				
				</p>
			<?php endif;?>
		</div>
	
	
	<p><?php _e('Filter by student/course status:', 'namaste')?> <select name="status">
		<option value="" <?php if(empty($_GET['status'])) echo 'selected'?>><?php _e('Any status', 'namaste')?></option>
		<option value="pending" <?php if(!empty($_GET['status']) and $_GET['status']=='pending') echo 'selected'?>><?php _e('Pending', 'namaste')?></option>
		<option value="enrolled" <?php if(!empty($_GET['status']) and $_GET['status']=='enrolled') echo 'selected'?>><?php _e('Enrolled', 'namaste')?></option>
		<option value="rejected" <?php if(!empty($_GET['status']) and $_GET['status']=='rejected') echo 'selected'?>><?php _e('Rejected', 'namaste')?></option>
		<option value="completed" <?php if(!empty($_GET['status']) and $_GET['status']=='completed') echo 'selected'?>><?php _e('Completed', 'namaste')?></option>
	</select>
   <?php _e('Filter by user login:', 'namaste');?> <input type="text" name="user_login" value="<?php echo @$_GET['user_login']?>">
   <?php _e('Filter by email:', 'namaste');?> <input type="text" name="user_email" value="<?php echo @$_GET['user_email']?>">
   <input type="submit" name="filter" value="<?php _e('Filter students', 'namaste');?>">	
	</p>
	
	<?php do_action('namaste-show-students-filter');?>
	</form>
	
	<?php if(!empty($_GET['course_id'])):?>
		<?php if(!sizeof($students)):?>
		<p><?php _e('There are no students enrolled in this course yet.', 'namaste')?></p>
		<?php return false;
		endif;?>
		
		<p><?php _e('The below table shows all students enrolled in this course allong with the status for every lesson in it', 'namaste')?></p>
		<p><a href="<?php echo basename($_SERVER['REQUEST_URI']);?>&export=1&noheader=1"><?php echo _e('Export students table', 'namaste');?></a> <?php _e('(will export a comma delimited CSV file)', 'namaste');?></p>
		<form method="post" action="admin.php?page=namaste_students&course_id=<?php echo $_GET['course_id']?>">
		<table class="widefat">
			<tr>
				<?php if($multiuser_access != 'view'):?>
					<th><input type="checkbox" onclick="namasteSelectAll(this.checked);"></th>
				<?php endif;?>
				<th><?php _e('Student', 'namaste')?></th>
				<?php do_action('namaste_manage_students_extra_th');?>
				<?php foreach($lessons as $lesson):?>
					<th><?php echo stripslashes($lesson->post_title);?></th>					
				<?php endforeach;?>		
				<th><?php _e('Status in course', 'namaste')?></th>
				<?php	if($use_grading_system):?>
					<th><?php _e('Final grade', 'namaste');?></th>
				<?php endif;?>
			</tr>	
			<?php foreach($students as $student):
				// this page linked in the first cell will be the same for student - when student clicks on enrolled course, 
				// they'll see the same table as the admin will see here
				$class = ('alternate' == @$class) ? '' : 'alternate';?>
				<tr class="<?php echo $class?>">
				<?php if($multiuser_access != 'view'):?>
					<td><input type="checkbox" name="student_ids[]" value="<?php echo $student->ID?>" class="namaste_chk" onclick="namasteShowHideMassButton();"></td>
				<?php endif;?>
				<td><a href="admin.php?page=namaste_student_lessons&course_id=<?php echo $_GET['course_id']?>&student_id=<?php echo $student->ID?>"><?php echo $student->user_login;
				echo '</a>';
				if($student->user_login != $student->display_name) echo "<br>" . $student->display_name;?></td>
				<?php do_action('namaste_manage_students_extra_td', $student);?>
				<?php foreach($lessons as $lesson):?>
					<td><?php if(in_array($lesson->ID, $student->completed_lessons)): _e('Completed', 'namaste');
					elseif(in_array($lesson->ID, $student->incomplete_lessons)): echo "<a href='#' onclick='namasteInProgress(".$lesson->ID.", ".$student->ID."); return false;'>".__('In progress', 'namaste')."</a>";
					else: _e('Not started', 'namaste'); endif;?>
					<?php	if($use_grading_system and !empty($student->relations[$lesson->ID]->grade)):?><br><?php printf(__('Grade: %s', 'namaste'), $student->relations[$lesson->ID]->grade);?><?php endif;?></td>
				<?php endforeach;?>		
				<td><?php switch($student->namaste_status):
					case 'pending': _e('Pending', 'namaste'); break;
					case 'enrolled': _e('Enrolled', 'namaste'); break;
					case 'rejected': _e('Rejected', 'namaste'); break;
					case 'completed': _e('Completed', 'namaste'); break;
					case 'frozen': _e('Frozen', 'namaste'); break;
				endswitch;
				if($multiuser_access != 'view' and $student->namaste_status=='pending'):?>
					(<a href="#" onclick="namasteConfirmStatus('enrolled',<?php echo $student->ID?>);return false;"><?php _e('approve', 'namaste')?></a> | <a href="#" onclick="namasteConfirmStatus('rejected',<?php echo $student->ID?>);return false;"><?php _e('reject', 'namaste')?></a>)
				<?php endif;
				if($multiuser_access != 'view' and ($student->namaste_status == 'completed' or $student->namaste_status == 'rejected' 
					or $student->namaste_status == 'enrolled' or $student->namaste_status == 'frozen')):?>
				(<a href="#" onclick="namasteConfirmCleanup('<?php echo $student->ID?>');return false;"><?php _e('Cleanup', 'namaste')?></a>)
				<?php endif;?></td>
				<td><?php echo empty($student->grade) ? __('n/a', 'namaste') : $student->grade;?></td></tr>
			<?php endforeach;?>
		</table>
		
		<p align="center" id="namasteMassBtn" style="display:none;"><input type="button" value="<?php _e('Mass cleanup selected students', 'namaste');?>" onclick="namasteMassCleanup(this.form);">
			<?php if(!empty($any_pending)):?>
				<input type="button" value="<?php _e('Mass approve', 'namaste');?>" onclick="namasteMassProcess(this.form, true);">
				<input type="button" value="<?php _e('Mass reject', 'namaste');?>" onclick="namasteMassProcess(this.form, false);">
				<input type="hidden" name="mass_approve" value="0">
				<input type="hidden" name="mass_reject" value="0">
			<?php endif;?>		
		</p>
		<input type="hidden" name="mass_cleanup" value="0">

		<?php wp_nonce_field('namaste_manage_students');?>
		</form>
		
		<p align="center"><?php if($offset > 0):?>
			<a href="admin.php?page=namaste_students&course_id=<?php echo $_GET['course_id']?>&status=<?php echo @$_GET['status']?>&offset=<?php echo $offset - $page_limit?>"><?php _e('[previous page]', 'namaste')?></a>
		<?php endif;?> 
		<?php if($count > ($page_limit + $offset)):?>
			<a href="admin.php?page=namaste_students&course_id=<?php echo $_GET['course_id']?>&status=<?php echo @$_GET['status']?>&offset=<?php echo $offset + $page_limit?>"><?php _e('[next page]', 'namaste')?></a>
		<?php endif;?>	
		</p>
	<?php endif;?>
	
	<?php if(is_plugin_active('namaste-reports/namaste-reports.php')):?>
		<p><?php printf(__("Don't forget that you can get <a href='%s'>Advanced Reports</a> for your students performance.", 'namaste'), "admin.php?page=namasterep")?></p>
	<?php else:?>
		<p><?php printf(__("You can get advanced reports and ranking shortcodes with the <a href='%s' target='_blank'>Namaste! Reports</a> plugin.", 'namaste'), "http://namaste-lms.org/reports.php")?></p>
	<?php endif;?>
	
	</div>
</div>
<script type="text/javascript" >
function namasteConfirmStatus(status, id) {	
	if(!confirm("<?php _e('Are you sure?','namaste')?>")) return false;
	
	window.location="admin.php?page=namaste_students&course_id=<?php echo $_GET['course_id']?>&change_status=1&status="+status	
		+ "&student_id="+id;	
}

function namasteInProgress(lessonID, studentID) {
	tb_show("<?php _e('Lesson progress', 'namaste')?>", 
		'<?php echo admin_url("admin-ajax.php?action=namaste_ajax&type=lesson_progress")?>&lesson_id=' + lessonID + 
		'&student_id=' + studentID);
}

function namasteConfirmCleanup(studentID) {
	if(confirm("<?php _e('Are you sure to cleanup this record? It will be removed from the system and history and the user will be able to enroll or request enrollment again', 'namaste')?>")) {
		window.location = 'admin.php?page=namaste_students&course_id=<?php echo @$_GET["course_id"]?>&status=<?php echo @$_GET["status"]?>&cleanup=1&student_id='+studentID;
	}
}

function namasteSelectAll(status) {
	if(status) jQuery('.namaste_chk').attr('checked', true);
	else jQuery('.namaste_chk').removeAttr('checked');
	
	namasteShowHideMassButton();
}

function namasteShowHideMassButton() {	
	var anyChecked = false;
	jQuery('.namaste_chk').each(function(index){
		if(jQuery(this).is(':checked')) anyChecked = true;
	});
	
	if(anyChecked) jQuery('#namasteMassBtn').show();
	else jQuery('#namasteMassBtn').hide();
}

function namasteMassCleanup(frm) {
	if(confirm("<?php _e('Are you sure?', 'namaste');?>")) {
		frm.mass_cleanup.value = 1;
		frm.submit();
	}
}

// mass approve or reject
function namasteMassProcess(frm, approve) {
	if(confirm("<?php _e('Are you sure?', 'namaste');?>")) {
		if(approve) frm.mass_approve.value = 1;
		else frm.mass_reject.value = 1;
		frm.submit();
	}
}
</script>