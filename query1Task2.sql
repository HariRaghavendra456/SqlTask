select std,subject_name,chapter_details_master.chapter_tag, chapter_name , cd_id_list
from chapter_details_master 
inner join test_details
	  on chapter_details_master.chapter_tag = test_details.chapter_tag inner join subject_master 
on chapter_details_master.subject_id = subject_master.subject_id
where subject_name = 'science' and std=8 and
chapter_details_master.chapter_tag like 'C8S10' and chapter_name = 'Reaching the Age of Adolescence'
and cd_id_list <> '{0,1,2,3,4,5,6,7,8,9,10,11}'