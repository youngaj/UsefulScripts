
-- Get count of all git pull requests
select count(*) from tbl_GitPullRequest pr

-- Get all Code Reviews
select * from CodeReview.tbl_Review r

-- Get count of all comments on code reviews
select count(*) from CodeReview.tbl_Comment c

