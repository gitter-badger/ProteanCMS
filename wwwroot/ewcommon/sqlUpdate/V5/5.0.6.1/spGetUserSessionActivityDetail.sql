ALTER     PROCEDURE [dbo].[spGetUserSessionActivityDetail]
(
	@SessionId nvarchar(255)
)
AS
BEGIN
SELECT  dbo.fxn_SessionsUser(@SessionId) AS nDirKey,
((SELECT cDirName FROM tblDirectory WHERE nDirKey = dbo.fxn_SessionsUser(@SessionId))) AS cDirName,
dDateTime , nActivityType, 
--Activity Type
CASE 
          
WHEN nActivityType = 1 THEN 'Logon'
WHEN nActivityType = 2 THEN 'PageViewed'
WHEN nActivityType = 3 THEN 'Email'
WHEN nActivityType = 4 THEN 'Logoff'
WHEN nActivityType = 5 THEN 'Alert'
WHEN nActivityType = 6 THEN 'ContentDetailViewed'
WHEN nActivityType = 7 THEN 'SessionStart'
WHEN nActivityType = 8 THEN 'SessionEnd'
WHEN nActivityType = 9 THEN 'SessionContinuation'
WHEN nActivityType = 10 THEN 'Register'
WHEN nActivityType = 11 THEN 'DocumentDownloaded'
WHEN nActivityType = 12 THEN 'Search'
WHEN nActivityType = 13 THEN 'FuzzySearch'
WHEN nActivityType = 14 THEN 'ReportDownloaded'
WHEN nActivityType = 15 THEN 'SessionReconnectFromCookie'

WHEN nActivityType = 30 THEN 'StatusChangeLive'
WHEN nActivityType = 31 THEN 'StatusChangeHidden'
WHEN nActivityType = 32 THEN 'StatusChangeApproved'
WHEN nActivityType = 33 THEN 'unknown'
WHEN nActivityType = 34 THEN 'StatusChangePending'
WHEN nActivityType = 35 THEN 'StatusChangeInProgress'
WHEN nActivityType = 36 THEN 'StatusChangeRejected'
WHEN nActivityType = 37 THEN 'StatusChangeSuperceded'
          
WHEN nActivityType = 40 THEN 'ContentAdded'
WHEN nActivityType = 41 THEN 'ContentEdited'
WHEN nActivityType = 42 THEN 'ContentHidden'
WHEN nActivityType = 43 THEN 'ContentDeleted'

WHEN nActivityType = 60 THEN 'PageAdded'
WHEN nActivityType = 61 THEN 'PageEdited'
WHEN nActivityType = 62 THEN 'PageHidden'
WHEN nActivityType = 63 THEN 'PageDeleted'

WHEN nActivityType = 70 THEN 'SetupDataUpgrade'

WHEN nActivityType = 80 THEN 'NewsLetterSent'
WHEN nActivityType = 81 THEN 'PendingNotificationSent'
           
WHEN nActivityType = 98 THEN 'Custom1'
WHEN nActivityType = 99 THEN 'Custom2'

WHEN nActivityType = 110 THEN 'SubmitVote'
WHEN nActivityType = 111 THEN 'VoteExcluded'

WHEN nActivityType = 200 THEN 'SyndicationStarted'
WHEN nActivityType = 201 THEN 'SyndicationInProgress'
WHEN nActivityType = 202 THEN 'SyndicationPartialSuccess'
WHEN nActivityType = 203 THEN 'SyndicationFailed'
WHEN nActivityType = 204 THEN 'SyndicationCompleted'
WHEN nActivityType = 205 THEN 'ContentSyndicated'

WHEN nActivityType = 255 THEN 'ValidationError'

WHEN nActivityType = 901 THEN 'IntegrationTwitterPost'

ELSE 'Undefined'
END
AS cActivityType


,nStructId AS nPrimaryId, dbo.fxn_GetActivityDetail(nActivityType,nStructId) AS cPrimaryDetail, nArtId AS nSecondaryId, cActivityDetail

FROM 	tblActivityLog
WHERE cSessionId = @SessionID
ORDER BY dDateTime
	
END