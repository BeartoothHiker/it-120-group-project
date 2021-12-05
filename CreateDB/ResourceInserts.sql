INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 100, 
 1, 
 "https://www.pepnw.org/about-us/",
 "Partnership for Energy progress",
 "The Partnership for Energy Progress is a collaboration of utilities, farmers, workers, small and large businesses, and community advocates across the Northwest. Our goal is to communicate the work we do to provide reliable, affordable energy to homes and businesses, and highlight the progress we’re making to address climate change.", 
 '09/12/2020 12:00 PM',
 false
);

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 101, 
 1, 
 "https://new.siemens.com/us/en/company/sustainability/environmental-action.html",
 "Siemens Company",
 "Siemens is supporting the Decade of Action to accelerate the adoption of sustainable technologies so our customers, our communities and our employees can lead the U.S. towards a low-carbon future", 
 '10/09/2020 12:00 PM',
 false
);

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 102, 
 1, 
 "https://www.unep-wcmc.org/",
 "UN Environment Program",
 "UN Environment Programme World Conservation Monitoring Centre is a world leader in biodiversity knowledge. It works with scientists and policy makers worldwide to place biodiversity at the heart of environment and development decision-making to enable enlightened choices for people and the planet.", 
 '10/18/2020 12:00 PM',
 false
);

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 103, 
 1, 
 "https://climate.nasa.gov/ ",
 "Nasa on Climate Change",
 "Explore a real-time data visualization of NASA’s Earth-orbiting satellites and the data they collect about climate change." 
 '10/25/2020 12:00 PM',
 false
);

INSERT INTO ResourceComment
    (ResourceCommentID, ResourceID, CommentID)
VALUES(1001, 103, 1);
