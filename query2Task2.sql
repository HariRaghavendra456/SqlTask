select course_test_track.id , course_test_track.track_id ,course_test_track.section_id,
course_test_track.chapter_tag , course_test_track.test_id , course_test_track.start_date ,
	   course_test_track.end_date, course_test_track.ly_lesson_id, course_test_track.test_url,
	   course_test_track.active, course_test_track.test_schedule_status,course_test_track.created_at,
	   course_test_track.updated_at,course_test_track.released_at, test_details.test_name,
	   test_details.status,test_details.cd_id_list,test_details.comment, test_details.deadline,
	   test_details.tags, test_details.questions_requested,chapter_details_master.chapter_name,section_master.section,chapter_details_master.std ,
	   lb_school_details.school_name
from course_test_track full outer join test_details
on test_details.chapter_tag = course_test_track.chapter_tag 
inner join chapter_details_master 
on test_details.chapter_tag = chapter_details_master.chapter_tag 
inner join section_master 
on course_test_track.section_id = section_master.section_id
inner join school_class_info 
on school_class_info.class_id = section_master.class_id 
inner join lb_school_details 
on lb_school_details.school_id = school_class_info.school_id
where test_details.chapter_tag = 'C6M01' 
order by course_test_track.id