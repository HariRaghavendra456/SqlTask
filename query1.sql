select test_id from public.test_details
where chapter_tag like 'C8M05' and status = 'Upload done'
order by test_id
