INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'06e96400-a3fc-4cbc-97ac-fe56a8b01563', N'applicant', N'applicant', N'dd733482-d41a-41f1-ad16-81cfd0a3f7f3')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'86d3b705-0446-49aa-90d0-bfc2c4602096', N'admin', N'admin', N'8d94c96c-320e-4296-885e-1fc677bf8aaf')
INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62ceda14-7c30-4bba-a39d-7c6d829d18d2', N'jim@applyjobs.com', N'JIM@APPLYJOBS.COM', N'jim@applyjobs.com', N'JIM@APPLYJOBS.COM', 1, N'AQAAAAEAACcQAAAAEAtlCqm3ulocRaYViQby9Z31MmMtzKJ987K9PNzIV2MFarkHbhpp/Wt286pxT5kTEQ==', N'H6HYDMR6QMSUSC4QTQTTFABUMCREWAAV', N'cebbf011-ce8c-4147-ad50-f27f0338b616', NULL, 0, 0, NULL, 1, 0)
INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'781a0760-c44b-4f2a-a8b2-96973a0fbf4d', N'admin@applyjobs.com', N'ADMIN@APPLYJOBS.COM', N'admin@applyjobs.com', N'ADMIN@APPLYJOBS.COM', 1, N'AQAAAAEAACcQAAAAEPIWqPckNU6K3GUe+TtsIkrwwY4ZeQV4t32pOSTBEcPVdwdQca9QON18fUvtveygyA==', N'EQ7WBXO625AYNC5HO4SJ34QMSCTTCBQ3', N'27fb0f62-257a-45d1-8840-2aa7c7123a4a', NULL, 0, 0, NULL, 1, 0)
INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f26e2408-28eb-4fb0-b4fe-3aad1adcb7f5', N'dave@applyjobs.com', N'DAVE@APPLYJOBS.COM', N'dave@applyjobs.com', N'DAVE@APPLYJOBS.COM', 1, N'AQAAAAEAACcQAAAAEKJbyo+zckUkwOLG8Yse8RjgvzYjdMrXYTc6i1imic/NfD06EcYaZ/mF1NF/4q283g==', N'QFDGHHI6X33DWKW7X5LBZOE4GDYO6PF5', N'b2c1844c-cff6-4515-b1e8-4f0bb285be86', NULL, 0, 0, NULL, 1, 0)
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62ceda14-7c30-4bba-a39d-7c6d829d18d2', N'06e96400-a3fc-4cbc-97ac-fe56a8b01563')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f26e2408-28eb-4fb0-b4fe-3aad1adcb7f5', N'06e96400-a3fc-4cbc-97ac-fe56a8b01563')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'781a0760-c44b-4f2a-a8b2-96973a0fbf4d', N'86d3b705-0446-49aa-90d0-bfc2c4602096')
SET IDENTITY_INSERT [dbo].[Applicant] ON
INSERT INTO [dbo].[Applicant] ([Id], [Name], [Email]) VALUES (1, N'James Atkinson', N'jim@applyjobs.com')
INSERT INTO [dbo].[Applicant] ([Id], [Name], [Email]) VALUES (2, N'Dave Fleming', N'dave@applyjobs.com')
SET IDENTITY_INSERT [dbo].[Applicant] OFF
SET IDENTITY_INSERT [dbo].[Advertisement] ON
INSERT INTO [dbo].[Advertisement] ([Id], [Title], [Content], [AdvertiserEmail]) VALUES (1, N'UI/UX  Engineer', N'We are seeking a skilled UI/UX designer /Engineer with more than 5 years of experience working on  large scale web application development projects', N'cto@webapps.com')
INSERT INTO [dbo].[Advertisement] ([Id], [Title], [Content], [AdvertiserEmail]) VALUES (2, N'Project Manager -Software', N'A project manager position has become available that should be filled immediately. Candidate should have right to live and work in New Zealand', N'hr@prm.com')
INSERT INTO [dbo].[Advertisement] ([Id], [Title], [Content], [AdvertiserEmail]) VALUES (3, N'Civil Engineer', N'Civil Engineering opportunity for a person who has an interest to move to New Zealand We will be happy to help you with relocation', N'eng@construction.com')
SET IDENTITY_INSERT [dbo].[Advertisement] OFF
SET IDENTITY_INSERT [dbo].[Application] ON
INSERT INTO [dbo].[Application] ([Id], [AdvertisementId], [ApplicantId]) VALUES (1, 1, 1)
INSERT INTO [dbo].[Application] ([Id], [AdvertisementId], [ApplicantId]) VALUES (2, 2, 2)
INSERT INTO [dbo].[Application] ([Id], [AdvertisementId], [ApplicantId]) VALUES (3, 1, 2)
SET IDENTITY_INSERT [dbo].[Application] OFF
