select distinct lb_school_details.school_name, school_class_info.std , section_master.section , course_theory_track.section_id ,
course_theory_track.chapter_tag , chapter_details_master.chapter_name ,((count(course_theory_track.chapter_tag)*100)/22) as percentage
from course_theory_track inner join topic_detail_master
on course_theory_track.chapter_tag = topic_detail_master.chapter_tag
inner join chapter_details_master 
on chapter_details_master.chapter_tag = course_theory_track.chapter_tag
inner join section_master 
on section_master.section_id = course_theory_track.section_id
inner join school_class_info 
on school_class_info.class_id = section_master.class_id 
inner join lb_school_details
on lb_school_details.school_id = school_class_info.school_id
group by course_theory_track.chapter_tag ,lb_school_details.school_name, school_class_info.std , section_master.section ,
course_theory_track.chapter_tag , chapter_details_master.chapter_name ,
topic_detail_master.cd_id, course_theory_track.section_id
order by course_theory_track.section_id , course_theory_track.chapter_tag 
