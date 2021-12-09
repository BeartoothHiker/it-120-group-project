INSERT INTO Comment
    (CommentID, MemberID, Date, Comment)
VALUES
    (1, 1, '10/22/2020 1:00 PM', 'I attended the Convention on Climate policy last year and it was quite enlightening. They had discussions from several high ranking scientists and politicians. Worth the price.')
;

INSERT INTO Comment
    (CommentID, MemberID, Date, Comment)
VALUES
    (2, 7, '10/20/2020', 'This sight is gorgeous and useful. Well worth the time to visit and explore its features.')
;

INSERT INTO ResourceComment
    (ResourceCommentID, ResourceID, CommentID)
VALUES(1, 4, 2)
;
