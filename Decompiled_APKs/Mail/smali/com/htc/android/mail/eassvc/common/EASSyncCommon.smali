.class public final Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$FolderType_SyncUp_List;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$FolderType_SyncDown_List;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;,
        Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DirectpushItem;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_START:Ljava/lang/String; = "com.htc.eas.boot.start"

.field public static final ACTION_DELETE_ACCOUNT:Ljava/lang/String; = "com.htc.eas.deleteaccount"

.field public static final ACTION_PEAK_TIME_CHECK:Ljava/lang/String; = "com.htc.eas.peaktime.check.action"

.field public static final ACTION_SCHEDULED_SYNC:Ljava/lang/String; = "com.htc.eas.scheduled.sync.action"

.field public static final ACTION_SCHEDULE_POWER_SAVING:Ljava/lang/String; = "com.htc.eas.schedule.power_saving.action"

.field public static final ANDROID_INTENT_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ANDROID_INTENT_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"

.field public static final ANDROID_INTENT_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static EASMAILBOXS_URI:Landroid/net/Uri; = null

.field public static EASMESSAGES_URI:Landroid/net/Uri; = null

.field public static EASPARTS_URI:Landroid/net/Uri; = null

.field public static EASTRACKING_URI:Landroid/net/Uri; = null

.field public static final EAS_2WAY_SYNC:I = 0x1

.field public static final EAS_ACK_POLICY_FAIL:I = 0xc8

.field public static final EAS_AIR_SYNC_BASE_CP:I = 0x11

.field public static final EAS_AIR_SYNC_BASE_TBL:[Ljava/lang/String; = null

.field public static final EAS_AUTD_STATE:Ljava/lang/String; = "AutdState"

.field public static final EAS_CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final EAS_CALENDAR_ALL_DAY_EVENT:Ljava/lang/String; = "AllDayEvent"

.field public static final EAS_CALENDAR_ATTENDEE:Ljava/lang/String; = "Attendee"

.field public static final EAS_CALENDAR_ATTENDEES:Ljava/lang/String; = "Attendees"

.field public static final EAS_CALENDAR_ATTENDEE_EMAIL:Ljava/lang/String; = "Attendee_Email"

.field public static final EAS_CALENDAR_ATTENDEE_NAME:Ljava/lang/String; = "Attendee_Name"

.field public static final EAS_CALENDAR_ATTENDEE_STATUS:Ljava/lang/String; = "Attendee_Status"

.field public static final EAS_CALENDAR_ATTENDEE_TYPE:Ljava/lang/String; = "Attendee_Type"

.field public static final EAS_CALENDAR_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_CALENDAR_BODYTYPE:Ljava/lang/String; = "Type"

.field public static final EAS_CALENDAR_BODY_TRUNCATED:Ljava/lang/String; = "BodyTruncated"

.field public static final EAS_CALENDAR_BUSY_STATUS:Ljava/lang/String; = "BusyStatus"

.field public static final EAS_CALENDAR_CATEGORIES:Ljava/lang/String; = "Categories"

.field public static final EAS_CALENDAR_CATEGORY:Ljava/lang/String; = "Category"

.field public static final EAS_CALENDAR_CP:I = 0x4

.field public static final EAS_CALENDAR_DB_FREEBUSY_OOF:I = 0x65

.field public static final EAS_CALENDAR_DB_FREEBUSY_TENTATIVE:I = 0x64

.field public static final EAS_CALENDAR_DTSTAMP:Ljava/lang/String; = "DTStamp"

.field public static final EAS_CALENDAR_END_TIME:Ljava/lang/String; = "EndTime"

.field public static final EAS_CALENDAR_EXCEPTION:Ljava/lang/String; = "Exception"

.field public static final EAS_CALENDAR_EXCEPTIONS:Ljava/lang/String; = "Exceptions"

.field public static final EAS_CALENDAR_EXCEPTION_DELETED:Ljava/lang/String; = "Exception_IsDeleted"

.field public static final EAS_CALENDAR_EXCEPTION_STARTTIME:Ljava/lang/String; = "Exception_StartTime"

.field public static final EAS_CALENDAR_FREEBUSY_BUSY:Ljava/lang/String; = "2"

.field public static final EAS_CALENDAR_FREEBUSY_FREE:Ljava/lang/String; = "0"

.field public static final EAS_CALENDAR_FREEBUSY_OOF:Ljava/lang/String; = "3"

.field public static final EAS_CALENDAR_FREEBUSY_TENTATIVE:Ljava/lang/String; = "1"

.field public static final EAS_CALENDAR_LOCATION:Ljava/lang/String; = "Location"

.field public static final EAS_CALENDAR_MEETING_STATUS:Ljava/lang/String; = "MeetingStatus"

.field public static final EAS_CALENDAR_MEETING_STATUS_IS_CANCELED:Ljava/lang/String; = "5"

.field public static final EAS_CALENDAR_MEETING_STATUS_IS_CANCELED_RECVD:Ljava/lang/String; = "7"

.field public static final EAS_CALENDAR_MEETING_STATUS_IS_MEETING:Ljava/lang/String; = "1"

.field public static final EAS_CALENDAR_MEETING_STATUS_MEETING_RECVD:Ljava/lang/String; = "3"

.field public static final EAS_CALENDAR_MEETING_STATUS_NOT_MEETING:Ljava/lang/String; = "0"

.field public static final EAS_CALENDAR_NATIVE_BODY_TYPE:Ljava/lang/String; = "NativeBodyType"

.field public static final EAS_CALENDAR_ORGANIZER_EMAIL:Ljava/lang/String; = "Organizer_Email"

.field public static final EAS_CALENDAR_ORGANIZER_NAME:Ljava/lang/String; = "Organizer_Name"

.field public static final EAS_CALENDAR_RECURRENCE:Ljava/lang/String; = "Recurrence"

.field public static final EAS_CALENDAR_RECURRENCE_DOM:Ljava/lang/String; = "Recurrence_DayOfMonth"

.field public static final EAS_CALENDAR_RECURRENCE_DOW:Ljava/lang/String; = "Recurrence_DayOfWeek"

.field public static final EAS_CALENDAR_RECURRENCE_INTERVAL:Ljava/lang/String; = "Recurrence_Interval"

.field public static final EAS_CALENDAR_RECURRENCE_MOY:Ljava/lang/String; = "Recurrence_MonthOfYear"

.field public static final EAS_CALENDAR_RECURRENCE_OCCURENCES:Ljava/lang/String; = "Recurrence_Occurrences"

.field public static final EAS_CALENDAR_RECURRENCE_TYPE:Ljava/lang/String; = "Recurrence_Type"

.field public static final EAS_CALENDAR_RECURRENCE_UNTIL:Ljava/lang/String; = "Recurrence_Until"

.field public static final EAS_CALENDAR_RECURRENCE_WOM:Ljava/lang/String; = "Recurrence_WeekOfMonth"

.field public static final EAS_CALENDAR_REMINDER:Ljava/lang/String; = "Reminder_MinsBefore"

.field public static final EAS_CALENDAR_SENSITIVITY:Ljava/lang/String; = "Sensitivity"

.field public static final EAS_CALENDAR_SENSITIVITY_CONFIDENTIAL:Ljava/lang/String; = "3"

.field public static final EAS_CALENDAR_SENSITIVITY_NORMAL:Ljava/lang/String; = "0"

.field public static final EAS_CALENDAR_SENSITIVITY_PERSONAL:Ljava/lang/String; = "1"

.field public static final EAS_CALENDAR_SENSITIVITY_PRIVATE:Ljava/lang/String; = "2"

.field public static final EAS_CALENDAR_START_TIME:Ljava/lang/String; = "StartTime"

.field public static final EAS_CALENDAR_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final EAS_CALENDAR_TBL:[Ljava/lang/String; = null

.field public static final EAS_CALENDAR_TIMEZONE:Ljava/lang/String; = "TimeZone"

.field public static final EAS_CALENDAR_TZ_UTC:Ljava/lang/String; = "UTC"

.field public static final EAS_CALENDAR_UID:Ljava/lang/String; = "UID"

.field public static final EAS_CANCEL_MODE_AFTET_SYNCKEY_UPDATE:I = 0x3

.field public static final EAS_CANCEL_MODE_CANCEL_BY_NETWORK:I = 0x1

.field public static final EAS_CANCEL_MODE_IMMEDIATELY:I = 0x0

.field public static final EAS_CHECK_POLICY_FAIL:I = 0x3c

.field public static final EAS_CLASS:Ljava/lang/String; = "Class"

.field public static final EAS_CLIENTID:Ljava/lang/String; = "ClientId"

.field public static final EAS_CMD_FOLDER_SYNC:Ljava/lang/String; = "FolderSync"

.field public static final EAS_CMD_GET_ATTACHMENT:Ljava/lang/String; = "GetAttachment"

.field public static final EAS_CMD_GET_ITEM_ESTIMATE:Ljava/lang/String; = "GetItemEstimate"

.field public static final EAS_CMD_ITEM_OPERATIONS:Ljava/lang/String; = "ItemOperations"

.field public static final EAS_CMD_MEETING_RESPONSE:Ljava/lang/String; = "MeetingResponse"

.field public static final EAS_CMD_MOVE_ITEM:Ljava/lang/String; = "MoveItems"

.field public static final EAS_CMD_PROVISION:Ljava/lang/String; = "Provision"

.field public static final EAS_CMD_SEARCH:Ljava/lang/String; = "Search"

.field public static final EAS_CMD_SEND_MAIL:Ljava/lang/String; = "SendMail"

.field public static final EAS_CMD_SMART_FORWARD:Ljava/lang/String; = "SmartForward"

.field public static final EAS_CMD_SMART_REPLY:Ljava/lang/String; = "SmartReply"

.field public static final EAS_CMD_SYNC:Ljava/lang/String; = "Sync"

.field public static final EAS_COLLECTIONID:Ljava/lang/String; = "CollectionId"

.field public static final EAS_COMMAND:Ljava/lang/String; = "Command"

.field public static final EAS_COMPOSE_MAIL_CP:I = 0x15

.field public static final EAS_COMPOSE_MAIL_TBL:[Ljava/lang/String; = null

.field public static final EAS_CONFLICT_CLIENT_WIN:Ljava/lang/String; = "0"

.field public static final EAS_CONFLICT_SERVER_WIN:Ljava/lang/String; = "1"

.field public static final EAS_CONTACT2_CP:I = 0xc

.field public static final EAS_CONTACT2_TBL:[Ljava/lang/String; = null

.field public static final EAS_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final EAS_CONTACTS_SUPPORTED_120:[Ljava/lang/String; = null

.field public static final EAS_CONTACTS_SUPPORTED_25:[Ljava/lang/String; = null

.field public static final EAS_CONTACTS_UPLOAD_WINDOW_SIZE:Ljava/lang/String; = "25"

.field public static final EAS_CONTACT_ANNIVERSARY:Ljava/lang/String; = "Anniversary"

.field public static final EAS_CONTACT_ASSIST_NAME:Ljava/lang/String; = "AssistantName"

.field public static final EAS_CONTACT_ASSIST_TEL:Ljava/lang/String; = "AssistantTelephoneNumber"

.field public static final EAS_CONTACT_BIZ_ADDR_CITY:Ljava/lang/String; = "BusinessAddressCity"

.field public static final EAS_CONTACT_BIZ_ADDR_COUNTRY:Ljava/lang/String; = "BusinessAddressCountry"

.field public static final EAS_CONTACT_BIZ_ADDR_POSTAL:Ljava/lang/String; = "BusinessAddressPostalCode"

.field public static final EAS_CONTACT_BIZ_ADDR_STATE:Ljava/lang/String; = "BusinessAddressState"

.field public static final EAS_CONTACT_BIZ_ADDR_STREET:Ljava/lang/String; = "BusinessAddressStreet"

.field public static final EAS_CONTACT_BIZ_FAX:Ljava/lang/String; = "BusinessFaxNumber"

.field public static final EAS_CONTACT_BIZ_PHONE:Ljava/lang/String; = "BusinessTelephoneNumber"

.field public static final EAS_CONTACT_BIZ_TWO_TEL:Ljava/lang/String; = "Business2TelephoneNumber"

.field public static final EAS_CONTACT_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_CONTACT_BODY_SIZE:Ljava/lang/String; = "BodySize"

.field public static final EAS_CONTACT_BODY_TRUNCAT:Ljava/lang/String; = "BodyTruncated"

.field public static final EAS_CONTACT_BRITHDAY:Ljava/lang/String; = "Birthday"

.field public static final EAS_CONTACT_CAR_PHONE:Ljava/lang/String; = "CarTelephoneNumber"

.field public static final EAS_CONTACT_CATAGORIES:Ljava/lang/String; = "Categories"

.field public static final EAS_CONTACT_CATEGORY:Ljava/lang/String; = "Category"

.field public static final EAS_CONTACT_CHILD:Ljava/lang/String; = "Child"

.field public static final EAS_CONTACT_CHILDREN:Ljava/lang/String; = "Children"

.field public static final EAS_CONTACT_COMPRESS_RTF:Ljava/lang/String; = "CompressedRTF"

.field public static final EAS_CONTACT_COMP_NAME:Ljava/lang/String; = "CompanyName"

.field public static final EAS_CONTACT_COMP_PHONE:Ljava/lang/String; = "CompanyMainPhone"

.field public static final EAS_CONTACT_CP:I = 0x1

.field public static final EAS_CONTACT_DEP:Ljava/lang/String; = "Department"

.field public static final EAS_CONTACT_EMAIL_1:Ljava/lang/String; = "Email1Address"

.field public static final EAS_CONTACT_EMAIL_2:Ljava/lang/String; = "Email2Address"

.field public static final EAS_CONTACT_EMAIL_3:Ljava/lang/String; = "Email3Address"

.field public static final EAS_CONTACT_FILE_AS:Ljava/lang/String; = "FileAs"

.field public static final EAS_CONTACT_FIRST_NAME:Ljava/lang/String; = "FirstName"

.field public static final EAS_CONTACT_HOME_2_PHONE:Ljava/lang/String; = "Home2TelephoneNumber"

.field public static final EAS_CONTACT_HOME_ADDR_CITY:Ljava/lang/String; = "HomeAddressCity"

.field public static final EAS_CONTACT_HOME_ADDR_COUNTRY:Ljava/lang/String; = "HomeAddressCountry"

.field public static final EAS_CONTACT_HOME_ADDR_POSTAL:Ljava/lang/String; = "HomeAddressPostalCode"

.field public static final EAS_CONTACT_HOME_ADDR_STATE:Ljava/lang/String; = "HomeAddressState"

.field public static final EAS_CONTACT_HOME_ADDR_STREET:Ljava/lang/String; = "HomeAddressStreet"

.field public static final EAS_CONTACT_HOME_FAX:Ljava/lang/String; = "HomeFaxNumber"

.field public static final EAS_CONTACT_HOME_PHONE:Ljava/lang/String; = "HomeTelephoneNumber"

.field public static final EAS_CONTACT_IM_ADDR:Ljava/lang/String; = "IMAddress"

.field public static final EAS_CONTACT_JOB_TITLE:Ljava/lang/String; = "JobTitle"

.field public static final EAS_CONTACT_LAST_NAME:Ljava/lang/String; = "LastName"

.field public static final EAS_CONTACT_MANAGER_NAME:Ljava/lang/String; = "ManagerName"

.field public static final EAS_CONTACT_MIDDLE_NAME:Ljava/lang/String; = "MiddleName"

.field public static final EAS_CONTACT_MOBILE_PHONE:Ljava/lang/String; = "MobileTelephoneNumber"

.field public static final EAS_CONTACT_OFFICE_LOC:Ljava/lang/String; = "OfficeLocation"

.field public static final EAS_CONTACT_OTHER_ADDR_CITY:Ljava/lang/String; = "OtherAddressCity"

.field public static final EAS_CONTACT_OTHER_ADDR_COUNTRY:Ljava/lang/String; = "OtherAddressCountry"

.field public static final EAS_CONTACT_OTHER_ADDR_POSTAL:Ljava/lang/String; = "OtherAddressPostalCode"

.field public static final EAS_CONTACT_OTHER_ADDR_STATE:Ljava/lang/String; = "OtherAddressState"

.field public static final EAS_CONTACT_OTHER_ADDR_STREET:Ljava/lang/String; = "OtherAddressStreet"

.field public static final EAS_CONTACT_PAGER:Ljava/lang/String; = "PagerNumber"

.field public static final EAS_CONTACT_PICTURE:Ljava/lang/String; = "Picture"

.field public static final EAS_CONTACT_RADIO:Ljava/lang/String; = "RadioTelephoneNumber"

.field public static final EAS_CONTACT_SPOUSE:Ljava/lang/String; = "Spouse"

.field public static final EAS_CONTACT_SUFFIX:Ljava/lang/String; = "Suffix"

.field public static final EAS_CONTACT_TBL:[Ljava/lang/String; = null

.field public static final EAS_CONTACT_TITLE:Ljava/lang/String; = "Title"

.field public static final EAS_CONTACT_WEBPAGE:Ljava/lang/String; = "Webpage"

.field public static final EAS_CONTACT_YOMI_COMP_NAME:Ljava/lang/String; = "YomiCompanyName"

.field public static final EAS_CONTACT_YOMI_FIRST_NAME:Ljava/lang/String; = "YomiFirstName"

.field public static final EAS_CONTACT_YOMI_LAST_NAME:Ljava/lang/String; = "YomiLastName"

.field public static final EAS_CONTENT_TYPE:Ljava/lang/String; = "ContentType"

.field public static final EAS_DEFAULT_DORMANT_TIMER:I = 0x14

.field public static final EAS_DIRECTPUSH_CONFIG_FILE:Ljava/lang/String; = "dp_config.prefs"

.field public static final EAS_DO_NOT_FETCH_ONE_DAY_MAIL:[Ljava/lang/String; = null

.field public static final EAS_DP_CHANGE_OCCURRED:I = 0x2

.field public static final EAS_DP_ERROR:I = 0x8

.field public static final EAS_DP_HEARTBEAT_OUT_RANGE:I = 0x5

.field public static final EAS_DP_HTC_EXT_ERR_NETWORK:I = 0xc

.field public static final EAS_DP_HTC_EXT_FORCE_SHUTDOWN:I = 0x14

.field public static final EAS_DP_HTC_EXT_RETRY_NOW:I = 0xb

.field public static final EAS_DP_NEED_FOLDER_SYNC:I = 0x7

.field public static final EAS_DP_TIMEOUT:I = 0x1

.field public static final EAS_EMAIL:Ljava/lang/String; = "Email"

.field public static final EAS_EMAIL_ALL_DAY_EVENT:Ljava/lang/String; = "AllDayEvent"

.field public static final EAS_EMAIL_ATTACHMENT:Ljava/lang/String; = "Attachment"

.field public static final EAS_EMAIL_ATTACHMENTS:Ljava/lang/String; = "Attachments"

.field public static final EAS_EMAIL_ATT_METHOD:Ljava/lang/String; = "AttMethod"

.field public static final EAS_EMAIL_ATT_NAME:Ljava/lang/String; = "AttName"

.field public static final EAS_EMAIL_ATT_OID:Ljava/lang/String; = "AttOid"

.field public static final EAS_EMAIL_ATT_REMOVED:Ljava/lang/String; = "AttRemoved"

.field public static final EAS_EMAIL_ATT_SIZE:Ljava/lang/String; = "AttSize"

.field public static final EAS_EMAIL_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_EMAIL_BODY_SIZE:Ljava/lang/String; = "BodySize"

.field public static final EAS_EMAIL_BODY_TRUNCATED:Ljava/lang/String; = "BodyTruncated"

.field public static final EAS_EMAIL_CATEGORIES:Ljava/lang/String; = "Categories"

.field public static final EAS_EMAIL_CATEGORY:Ljava/lang/String; = "Category"

.field public static final EAS_EMAIL_CC:Ljava/lang/String; = "CC"

.field public static final EAS_EMAIL_COMPLETE_TIME:Ljava/lang/String; = "CompleteTime"

.field public static final EAS_EMAIL_CONTENT_CLASS:Ljava/lang/String; = "ContentClass"

.field public static final EAS_EMAIL_CONTENT_ID:Ljava/lang/String; = "ContentId"

.field public static final EAS_EMAIL_CP:I = 0x2

.field public static final EAS_EMAIL_DATA:Ljava/lang/String; = "Data"

.field public static final EAS_EMAIL_DATE_RECEIVED:Ljava/lang/String; = "DateReceived"

.field public static final EAS_EMAIL_DISPLAY_NAME:Ljava/lang/String; = "DisplayName"

.field public static final EAS_EMAIL_DISPLAY_TO:Ljava/lang/String; = "DisplayTo"

.field public static final EAS_EMAIL_DT_STAMP:Ljava/lang/String; = "DTStamp"

.field public static final EAS_EMAIL_END_TIME:Ljava/lang/String; = "EndTime"

.field public static final EAS_EMAIL_ESTIMATED_DATA_SIZE:Ljava/lang/String; = "EstimatedDataSize"

.field public static final EAS_EMAIL_FILE_REFERENCE:Ljava/lang/String; = "FileReference"

.field public static final EAS_EMAIL_FLAG:Ljava/lang/String; = "Flag"

.field public static final EAS_EMAIL_FLAG_STATUS:Ljava/lang/String; = "FlagStatus"

.field public static final EAS_EMAIL_FLAG_TYPE:Ljava/lang/String; = "FlagType"

.field public static final EAS_EMAIL_FROM:Ljava/lang/String; = "From"

.field public static final EAS_EMAIL_GLOBAL_OBJ_ID:Ljava/lang/String; = "GlobalObjId"

.field public static final EAS_EMAIL_IMPORTANCE:Ljava/lang/String; = "Importance"

.field public static final EAS_EMAIL_INLINE:Ljava/lang/String; = "Inline"

.field public static final EAS_EMAIL_INSTANCE_TYPE:Ljava/lang/String; = "InstanceType"

.field public static final EAS_EMAIL_INTERNET_CPID:Ljava/lang/String; = "InternetCPID"

.field public static final EAS_EMAIL_INT_DBUSY_STATUS:Ljava/lang/String; = "IntDBusyStatus"

.field public static final EAS_EMAIL_IS_INLINE:Ljava/lang/String; = "IsInline"

.field public static final EAS_EMAIL_LOCATION:Ljava/lang/String; = "Location"

.field public static final EAS_EMAIL_MESSAGE_CLASS:Ljava/lang/String; = "MessageClass"

.field public static final EAS_EMAIL_METHOD:Ljava/lang/String; = "Method"

.field public static final EAS_EMAIL_METTING_REQUEST:Ljava/lang/String; = "MeetingRequest"

.field public static final EAS_EMAIL_MIME_DATE:Ljava/lang/String; = "MIMEData"

.field public static final EAS_EMAIL_MIME_SIZE:Ljava/lang/String; = "MIMESize"

.field public static final EAS_EMAIL_MIME_TRUNCATED:Ljava/lang/String; = "MIMETruncated"

.field public static final EAS_EMAIL_NATIVE_BODY_TYPE:Ljava/lang/String; = "NativeBodyType"

.field public static final EAS_EMAIL_ORGANIZER:Ljava/lang/String; = "Organizer"

.field public static final EAS_EMAIL_READ:Ljava/lang/String; = "Read"

.field public static final EAS_EMAIL_RECURRENCE:Ljava/lang/String; = "Recurrence"

.field public static final EAS_EMAIL_RECURRENCE_DAY_OF_MONTH:Ljava/lang/String; = "Recurrence_DayOfMonth"

.field public static final EAS_EMAIL_RECURRENCE_DAY_OF_WEEK:Ljava/lang/String; = "Recurrence_DayOfWeek"

.field public static final EAS_EMAIL_RECURRENCE_ID:Ljava/lang/String; = "RecurrenceId"

.field public static final EAS_EMAIL_RECURRENCE_INTERVAL:Ljava/lang/String; = "Recurrence_Interval"

.field public static final EAS_EMAIL_RECURRENCE_MONTH_OF_YEAR:Ljava/lang/String; = "Recurrence_MonthOfYear"

.field public static final EAS_EMAIL_RECURRENCE_OCCURRENCES:Ljava/lang/String; = "Recurrence_Occurrences"

.field public static final EAS_EMAIL_RECURRENCE_TYPE:Ljava/lang/String; = "Recurrence_Type"

.field public static final EAS_EMAIL_RECURRENCE_UNTIL:Ljava/lang/String; = "Recurrence_Until"

.field public static final EAS_EMAIL_RECURRENCE_WEEK_OF_MONTH:Ljava/lang/String; = "Recurrence_WeekOfMonth"

.field public static final EAS_EMAIL_REMINDER:Ljava/lang/String; = "Reminder"

.field public static final EAS_EMAIL_REPLY_TO:Ljava/lang/String; = "ReplyTo"

.field public static final EAS_EMAIL_RERCURRENCES:Ljava/lang/String; = "Recurrences"

.field public static final EAS_EMAIL_RESPINSE_REQUEST:Ljava/lang/String; = "ResponseRequested"

.field public static final EAS_EMAIL_SENSITIVITY:Ljava/lang/String; = "Sensitivity"

.field public static final EAS_EMAIL_STRING_TIME:Ljava/lang/String; = "StartTime"

.field public static final EAS_EMAIL_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final EAS_EMAIL_TBL:[Ljava/lang/String; = null

.field public static final EAS_EMAIL_THREAD_TOPIC:Ljava/lang/String; = "ThreadTopic"

.field public static final EAS_EMAIL_TIME_ZONE:Ljava/lang/String; = "TimeZone"

.field public static final EAS_EMAIL_TO:Ljava/lang/String; = "To"

.field public static final EAS_EMAIL_TRUNCATED:Ljava/lang/String; = "Truncated"

.field public static final EAS_EMAIL_TYPE:Ljava/lang/String; = "Type"

.field public static final EAS_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EAS_ESTIMATE:Ljava/lang/String; = "Estimate"

.field public static final EAS_EVENT_LOG_TAG:I = 0xf42a4

.field public static final EAS_FETCH_RESPONSE:Ljava/lang/String; = "Responses"

.field public static final EAS_FOLDER:Ljava/lang/String; = "Folder"

.field public static final EAS_FOLDERS:Ljava/lang/String; = "Folders"

.field public static final EAS_FOLDERSYNC_ADD:Ljava/lang/String; = "Add"

.field public static final EAS_FOLDERSYNC_DELETE:Ljava/lang/String; = "Delete"

.field public static final EAS_FOLDERSYNC_DISPNAME:Ljava/lang/String; = "DisplayName"

.field public static final EAS_FOLDERSYNC_KEY:Ljava/lang/String; = "SyncKey"

.field public static final EAS_FOLDERSYNC_PARENTID:Ljava/lang/String; = "ParentId"

.field public static final EAS_FOLDERSYNC_SVRID:Ljava/lang/String; = "ServerId"

.field public static final EAS_FOLDERSYNC_TYPE:Ljava/lang/String; = "Type"

.field public static final EAS_FOLDERSYNC_UPDATE:Ljava/lang/String; = "Update"

.field public static final EAS_FOLDER_CALENDARS_TYPE:I = 0x8

.field public static final EAS_FOLDER_CONTACTS_TYPE:I = 0x9

.field public static final EAS_FOLDER_DELETE_ITEMS_TYPE:I = 0x4

.field public static final EAS_FOLDER_DRAFTS_TYPE:I = 0x3

.field public static final EAS_FOLDER_INBOX_TYPE:I = 0x2

.field public static final EAS_FOLDER_JOURNAL_TYPE:I = 0xb

.field public static final EAS_FOLDER_NOTES_TYPE:I = 0xa

.field public static final EAS_FOLDER_OUTBOX_TYPE:I = 0x6

.field public static final EAS_FOLDER_ROOT_ID:I = 0x0

.field public static final EAS_FOLDER_SENT_ITEMS_TYPE:I = 0x5

.field public static final EAS_FOLDER_SYNC_CP:I = 0x7

.field public static final EAS_FOLDER_SYNC_TBL:[Ljava/lang/String; = null

.field public static final EAS_FOLDER_TASKS_TYPE:I = 0x7

.field public static final EAS_FOLDER_UNKNOWN_TYPE:I = 0x12

.field public static final EAS_FOLDER_USER_CREATE_CALENDAR:I = 0xd

.field public static final EAS_FOLDER_USER_CREATE_CONTACTS:I = 0xe

.field public static final EAS_FOLDER_USER_CREATE_JOURNAL:I = 0x10

.field public static final EAS_FOLDER_USER_CREATE_MAIL_TYPE:I = 0xc

.field public static final EAS_FOLDER_USER_CREATE_NOTES:I = 0x11

.field public static final EAS_FOLDER_USER_CREATE_TASKS:I = 0xf

.field public static final EAS_FOLDER_USER_CREATE_TYPE:I = 0x1

.field public static final EAS_GAL_CP:I = 0x10

.field public static final EAS_GAL_TBL:[Ljava/lang/String; = null

.field public static final EAS_GET_POLICY_FAIL:I = 0x64

.field public static final EAS_HB_INTVAL:Ljava/lang/String; = "HeartbeatInterval"

.field public static EAS_HTTP_AGENT:Ljava/lang/String; = null

.field public static final EAS_HTTP_DEFAULT_AGENT:Ljava/lang/String; = "Android-EAS/4.50"

.field public static final EAS_ID:Ljava/lang/String; = "Id"

.field public static final EAS_INIT_SYNC:I = 0x0

.field public static final EAS_INSTANCE_TYPE_EXCEPTION:I = 0x3

.field public static final EAS_INSTANCE_TYPE_MASTER_RECUEEING:I = 0x1

.field public static final EAS_INSTANCE_TYPE_SINGLE:I = 0x0

.field public static final EAS_INSTANCE_TYPE_SINGLE_INSTANCE:I = 0x2

.field public static final EAS_ITEM_ESTIMATE_CP:I = 0x6

.field public static final EAS_ITEM_ESTIMATE_TBL:[Ljava/lang/String; = null

.field public static final EAS_ITEM_OPERATION:Ljava/lang/String; = "ItemOperations"

.field public static final EAS_ITEM_OPERATIONS_CP:I = 0x14

.field public static final EAS_ITEM_OPERATIONS_TBL:[Ljava/lang/String; = null

.field public static final EAS_ITEM_OPERATION_FETCH:Ljava/lang/String; = "Fetch"

.field public static final EAS_ITEM_OPERATION_PROPERTIES:Ljava/lang/String; = "Properties"

.field public static final EAS_ITEM_OPERATION_RESPONSE:Ljava/lang/String; = "Response"

.field public static final EAS_ITEM_OPERATION_STORE:Ljava/lang/String; = "Store"

.field public static final EAS_MAIL2_CP:I = 0x16

.field public static final EAS_MAIL2_TBL:[Ljava/lang/String; = null

.field public static final EAS_MAIL_MAXIMUM_BODY_SIZE:I = 0xc8000

.field public static final EAS_MAIL_WINDOW_SIZE_DOWN:Ljava/lang/String; = "50"

.field public static final EAS_MAIL_WINDOW_SIZE_UP:Ljava/lang/String; = "50"

.field public static final EAS_MAIL_WINDOW_SIZE_WIFI:Ljava/lang/String; = "50"

.field public static final EAS_MAX_FOLDERS:Ljava/lang/String; = "MaxFolders"

.field public static final EAS_MEETING_RESP_CP:I = 0x8

.field public static final EAS_MEETING_RESP_TBL:[Ljava/lang/String; = null

.field public static final EAS_MESSAGE_CLASS_INT_CUSTOM_Meeting_Fordward:I = 0x15

.field public static final EAS_MESSAGE_CLASS_INT_CUSTOM_Meeting_ProposeNewTime:I = 0x14

.field public static final EAS_MESSAGE_CLASS_INT_IPM_IPM_Octel_Voice:I = 0x5

.field public static final EAS_MESSAGE_CLASS_INT_IPM_InfoPathForm:I = 0xc

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Note:I = 0x0

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Note_Rules_OofTemplate_Microsoft:I = 0x1

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Note_SMIME:I = 0x2

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Note_SMIME_MultipartSigned:I = 0x3

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Notification_Meeting:I = 0x4

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Post:I = 0xb

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Canceled:I = 0x7

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Request:I = 0x6

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Resp_Neg:I = 0xa

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Resp_Pos:I = 0x8

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Resp_Tent:I = 0x9

.field public static final EAS_MESSAGE_CLASS_INT_IPM_Sharing:I = 0xe

.field public static final EAS_MESSAGE_CLASS_INT_IPM_VoiceNotes:I = 0xd

.field public static final EAS_MESSAGE_CLASS_IPM_IPM_Octel_Voice:Ljava/lang/String; = "IPM.Octel.Voice"

.field public static final EAS_MESSAGE_CLASS_IPM_InfoPathForm:Ljava/lang/String; = "IPM.InfoPathForm"

.field public static final EAS_MESSAGE_CLASS_IPM_Note:Ljava/lang/String; = "IPM.Note"

.field public static final EAS_MESSAGE_CLASS_IPM_Note_Rules_OofTemplate_Microsoft:Ljava/lang/String; = "IPM.Note.Rules.OofTemplate.Microsoft"

.field public static final EAS_MESSAGE_CLASS_IPM_Note_SMIME:Ljava/lang/String; = "IPM.Note.SMIME"

.field public static final EAS_MESSAGE_CLASS_IPM_Note_SMIME_MultipartSigned:Ljava/lang/String; = "IPM.Note.SMIME.MultipartSigned"

.field public static final EAS_MESSAGE_CLASS_IPM_Notification_Meeting:Ljava/lang/String; = "IPM.Notification.Meeting"

.field public static final EAS_MESSAGE_CLASS_IPM_Post:Ljava/lang/String; = "IPM.Post"

.field public static final EAS_MESSAGE_CLASS_IPM_Schedule_Meeting_Canceled:Ljava/lang/String; = "IPM.Schedule.Meeting.Canceled"

.field public static final EAS_MESSAGE_CLASS_IPM_Schedule_Meeting_Request:Ljava/lang/String; = "IPM.Schedule.Meeting.Request"

.field public static final EAS_MESSAGE_CLASS_IPM_Schedule_Meeting_Resp_Neg:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Neg"

.field public static final EAS_MESSAGE_CLASS_IPM_Schedule_Meeting_Resp_Pos:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Pos"

.field public static final EAS_MESSAGE_CLASS_IPM_Schedule_Meeting_Resp_Tent:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Tent"

.field public static final EAS_MESSAGE_CLASS_IPM_Sharing:Ljava/lang/String; = "IPM.Sharing"

.field public static final EAS_MESSAGE_CLASS_IPM_VoiceNotes:Ljava/lang/String; = "IPM.VoiceNotes"

.field public static final EAS_MOVEITEMS_DST_MSG_ID:Ljava/lang/String; = "DstMsgId"

.field public static final EAS_MOVEITEMS_INVALID_SRC_COLID:Ljava/lang/String; = "1"

.field public static final EAS_MOVEITEMS_SRC_MSG_ID:Ljava/lang/String; = "SrcMsgId"

.field public static final EAS_MOVEITEMS_STATUS_OK:Ljava/lang/String; = "3"

.field public static final EAS_MOVE_CP:I = 0x5

.field public static final EAS_MOVE_MAIL_DONE:I = 0x3

.field public static final EAS_MOVE_MAIL_EXECUTE:I = 0x2

.field public static final EAS_MOVE_MAIL_PENDDING:I = 0x1

.field public static final EAS_MOVE_TBL:[Ljava/lang/String; = null

.field public static final EAS_NOTIFICATION_ID:I = 0x9

.field public static final EAS_PING:Ljava/lang/String; = "Ping"

.field public static final EAS_PING_CHANGE_OCCURRED:Ljava/lang/String; = "2"

.field public static final EAS_PING_CP:I = 0xd

.field public static final EAS_PING_HB_INTVAL:I = 0x4b0

.field public static final EAS_PING_HEARTBEAT_OUT_RANGE:Ljava/lang/String; = "5"

.field public static final EAS_PING_NEED_FOLDER_SYNC:Ljava/lang/String; = "7"

.field public static final EAS_PING_TBL:[Ljava/lang/String; = null

.field public static final EAS_PING_TIMEOUT:Ljava/lang/String; = "1"

.field public static final EAS_POLICY_NEED_WIPE:I = 0xa

.field public static final EAS_POLICY_NOT_APPLY:I = 0x3

.field public static final EAS_POLICY_PARTIAL:I = 0x2

.field public static final EAS_POLICY_PASS:I = 0x0

.field public static final EAS_POLICY_PASSWORD_CHANGE_FILE:Ljava/lang/String; = "pass_change"

.field public static final EAS_POLICY_SUCCESS:I = 0x1

.field public static final EAS_PROGRESS_AUTO_DISCOVER:I = 0x3

.field public static final EAS_PROGRESS_CREATE_ACCOUNT:I = 0x1

.field public static final EAS_PROGRESS_DELETE_ACCOUNT:I = 0x2

.field public static final EAS_PROGRESS_NOTHING:I = 0x0

.field public static final EAS_PROGRESS_RESET_ACCOUNT:I = 0x5

.field public static final EAS_PROGRESS_TEST_SERVER:I = 0x4

.field public static final EAS_PROVISION_CP:I = 0xe

.field public static final EAS_PROVISION_FILE_NAME:Ljava/lang/String; = "eas_provision.prefs"

.field public static final EAS_PROVISION_SUPPORTED:[Ljava/lang/String; = null

.field public static final EAS_PROVISION_TBL:[Ljava/lang/String; = null

.field public static final EAS_RECUR_DAY_OF_MONTH:I = 0x7f

.field public static final EAS_RECUR_DOW_MASK_FRIDAY:I = 0x20

.field public static final EAS_RECUR_DOW_MASK_MONDAY:I = 0x2

.field public static final EAS_RECUR_DOW_MASK_SATURDAY:I = 0x40

.field public static final EAS_RECUR_DOW_MASK_SUNDAY:I = 0x1

.field public static final EAS_RECUR_DOW_MASK_THURSDAY:I = 0x10

.field public static final EAS_RECUR_DOW_MASK_TUESDAY:I = 0x4

.field public static final EAS_RECUR_DOW_MASK_WEDNESDAY:I = 0x8

.field public static final EAS_RECUR_LAST_WEEKEND_OF_MONTH:I = 0x41

.field public static final EAS_RECUR_TYPE_DAILY:I = 0x0

.field public static final EAS_RECUR_TYPE_MONTHLY:I = 0x2

.field public static final EAS_RECUR_TYPE_MONTHLY_ON_NTH:I = 0x3

.field public static final EAS_RECUR_TYPE_NO_RECUR:I = -0x1

.field public static final EAS_RECUR_TYPE_WEEKLY:I = 0x1

.field public static final EAS_RECUR_TYPE_YEARLY:I = 0x5

.field public static final EAS_RECUR_TYPE_YEARLY_ON_NTH:I = 0x6

.field public static final EAS_RECUR_WOM_LAST:I = 0x5

.field public static final EAS_RECUR_WORK_DAY_OF_MONTH:I = 0x3e

.field public static final EAS_REMOTE_WIPE_FAIL:Ljava/lang/String; = "2"

.field public static final EAS_REMOTE_WIPE_OK:Ljava/lang/String; = "1"

.field public static final EAS_RESOLVE_RECIPIENTS_CP:I = 0xa

.field public static final EAS_RESOLVE_RECIPIENTS_TBL:[Ljava/lang/String; = null

.field public static final EAS_ROOT_CALENDAR_FOLDER:Ljava/lang/String; = "8"

.field public static final EAS_ROOT_CONTACT_FOLDER:Ljava/lang/String; = "9"

.field public static final EAS_ROOT_DELETE_ITEM_FOLDER:Ljava/lang/String; = "4"

.field public static final EAS_ROOT_DRAFT_FOLDER:Ljava/lang/String; = "3"

.field public static final EAS_ROOT_INBOX_FOLDER:Ljava/lang/String; = "2"

.field public static final EAS_ROOT_OUTBOX_FOLDER:Ljava/lang/String; = "6"

.field public static final EAS_ROOT_SENT_ITEM_FOLDER:Ljava/lang/String; = "5"

.field public static final EAS_ROOT_TASK_FOLDER:Ljava/lang/String; = "7"

.field public static final EAS_SC_INTERNAL_SERVER_ERROR:I = 0xa

.field public static final EAS_SEARCH_ALIAS:Ljava/lang/String; = "Alias"

.field public static final EAS_SEARCH_AND:Ljava/lang/String; = "And"

.field public static final EAS_SEARCH_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_SEARCH_BODY_PREFERENCE:Ljava/lang/String; = "BodyPreference"

.field public static final EAS_SEARCH_COMPANY:Ljava/lang/String; = "Company"

.field public static final EAS_SEARCH_CP:I = 0xf

.field public static final EAS_SEARCH_DATA:Ljava/lang/String; = "Data"

.field public static final EAS_SEARCH_DEEPTRAVERSAL:Ljava/lang/String; = "DeepTraversal"

.field public static final EAS_SEARCH_DISPLAYNAME:Ljava/lang/String; = "DisplayName"

.field public static final EAS_SEARCH_EMAILADDRESS:Ljava/lang/String; = "EmailAddress"

.field public static final EAS_SEARCH_ESTIMATEDDATASIZE:Ljava/lang/String; = "EstimatedDataSize"

.field public static final EAS_SEARCH_FIRSTNAME:Ljava/lang/String; = "FirstName"

.field public static final EAS_SEARCH_FREE_TEXT:Ljava/lang/String; = "FreeText"

.field public static final EAS_SEARCH_GREATER_THAN:Ljava/lang/String; = "GreaterThan"

.field public static final EAS_SEARCH_HOMEPHONE:Ljava/lang/String; = "HomePhone"

.field public static final EAS_SEARCH_LASTNAME:Ljava/lang/String; = "LastName"

.field public static final EAS_SEARCH_LESS_THAN:Ljava/lang/String; = "LessThan"

.field public static final EAS_SEARCH_LONG_ID:Ljava/lang/String; = "LongId"

.field public static final EAS_SEARCH_MIMESUPPORT:Ljava/lang/String; = "MIMESupport"

.field public static final EAS_SEARCH_MOBILEPHONE:Ljava/lang/String; = "MobilePhone"

.field public static final EAS_SEARCH_NAME:Ljava/lang/String; = "Name"

.field public static final EAS_SEARCH_NAME_DOC_LIBRARY:Ljava/lang/String; = "Document Library"

.field public static final EAS_SEARCH_NAME_GAL:Ljava/lang/String; = "GAL"

.field public static final EAS_SEARCH_NAME_MAILBOX:Ljava/lang/String; = "Mailbox"

.field public static final EAS_SEARCH_OFFICE:Ljava/lang/String; = "Office"

.field public static final EAS_SEARCH_OPTIONS:Ljava/lang/String; = "Options"

.field public static final EAS_SEARCH_OR:Ljava/lang/String; = "Or"

.field public static final EAS_SEARCH_PHONE:Ljava/lang/String; = "Phone"

.field public static final EAS_SEARCH_PROPERTIES:Ljava/lang/String; = "Properties"

.field public static final EAS_SEARCH_QUERY:Ljava/lang/String; = "Query"

.field public static final EAS_SEARCH_RANGE:Ljava/lang/String; = "Range"

.field public static final EAS_SEARCH_REBUILDRESULTS:Ljava/lang/String; = "RebuildResults"

.field public static final EAS_SEARCH_RESPONSE:Ljava/lang/String; = "Response"

.field public static final EAS_SEARCH_RESULT:Ljava/lang/String; = "Result"

.field public static final EAS_SEARCH_SCHEMA:Ljava/lang/String; = "Schema"

.field public static final EAS_SEARCH_STORE:Ljava/lang/String; = "Store"

.field public static final EAS_SEARCH_TBL:[Ljava/lang/String; = null

.field public static final EAS_SEARCH_TITLE:Ljava/lang/String; = "Title"

.field public static final EAS_SEARCH_TOTAL:Ljava/lang/String; = "Total"

.field public static final EAS_SEARCH_TRUNCATED:Ljava/lang/String; = "Truncated"

.field public static final EAS_SEARCH_TRUNCATIONSIZE:Ljava/lang/String; = "TruncationSize"

.field public static final EAS_SEARCH_TYPE:Ljava/lang/String; = "Type"

.field public static final EAS_SEARCH_VALUE:Ljava/lang/String; = "Value"

.field public static final EAS_SETTINGS:Ljava/lang/String; = "Settings"

.field public static final EAS_SETTINGS_CP:I = 0x12

.field public static final EAS_SETTINGS_TBL:[Ljava/lang/String; = null

.field public static final EAS_SETTING_APPLIES_TO_EXTERNALKNOWN:Ljava/lang/String; = "AppliesToExternalKnown"

.field public static final EAS_SETTING_APPLIES_TO_EXTERNALUNKNOW:Ljava/lang/String; = "AppliesToExternalUnknown"

.field public static final EAS_SETTING_APPLIES_TO_INTERNAL:Ljava/lang/String; = "AppliesToInternal"

.field public static final EAS_SETTING_BODY_TYPE:Ljava/lang/String; = "BodyType"

.field public static final EAS_SETTING_DEVICE_INFO:Ljava/lang/String; = "DeviceInformation"

.field public static final EAS_SETTING_DEVICE_PASSWORD:Ljava/lang/String; = "DevicePassword"

.field public static final EAS_SETTING_EMAIL_ADDRESS:Ljava/lang/String; = "EmailAddresses"

.field public static final EAS_SETTING_ENABLED:Ljava/lang/String; = "Enabled"

.field public static final EAS_SETTING_END_TIME:Ljava/lang/String; = "EndTime"

.field public static final EAS_SETTING_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field public static final EAS_SETTING_GET:Ljava/lang/String; = "Get"

.field public static final EAS_SETTING_IMEI:Ljava/lang/String; = "IMEI"

.field public static final EAS_SETTING_MODEL:Ljava/lang/String; = "Model"

.field public static final EAS_SETTING_OOF:Ljava/lang/String; = "Oof"

.field public static final EAS_SETTING_OOF_MESSAGE:Ljava/lang/String; = "OofMessage"

.field public static final EAS_SETTING_OOF_STATE:Ljava/lang/String; = "OofState"

.field public static final EAS_SETTING_OS:Ljava/lang/String; = "OS"

.field public static final EAS_SETTING_OS_LANGUAGE:Ljava/lang/String; = "OSLanguage"

.field public static final EAS_SETTING_PASSWORD:Ljava/lang/String; = "Password"

.field public static final EAS_SETTING_PHONE_NUMBER:Ljava/lang/String; = "PhoneNumber"

.field public static final EAS_SETTING_REPLY_MESSAGE:Ljava/lang/String; = "ReplyMessage"

.field public static final EAS_SETTING_SET:Ljava/lang/String; = "Set"

.field public static final EAS_SETTING_SMTP_ADDRESS:Ljava/lang/String; = "SmtpAddress"

.field public static final EAS_SETTING_START_TIME:Ljava/lang/String; = "StartTime"

.field public static final EAS_SETTING_USER_INFORMATION:Ljava/lang/String; = "UserInformation"

.field public static final EAS_SHORT_DORMANT_TIMER:I = 0x1

.field public static final EAS_STATUS:Ljava/lang/String; = "Status"

.field public static final EAS_STATUS_CLIENT_SERVER_ERROR:Ljava/lang/String; = "6"

.field public static final EAS_STATUS_CONFLICT:Ljava/lang/String; = "7"

.field public static final EAS_STATUS_INVALID_SYNC_KEY:Ljava/lang/String; = "3"

.field public static final EAS_STATUS_OBJECT_NOT_FOUND:Ljava/lang/String; = "8"

.field public static final EAS_STATUS_OK:Ljava/lang/String; = "1"

.field public static final EAS_STATUS_PROTOCOL_ERROR:Ljava/lang/String; = "4"

.field public static final EAS_SVRID:Ljava/lang/String; = "ServerId"

.field public static final EAS_SYNC_ADD:Ljava/lang/String; = "Add"

.field public static final EAS_SYNC_AUTHORITY:Ljava/lang/String; = "htceas"

.field public static final EAS_SYNC_BASE_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_SYNC_BASE_DATA:Ljava/lang/String; = "Data"

.field public static final EAS_SYNC_BASE_ESTIMATE_DATA_SIZE:Ljava/lang/String; = "EstimatedDataSize"

.field public static final EAS_SYNC_BASE_TRUNCATION_SIZE:Ljava/lang/String; = "TruncationSize"

.field public static final EAS_SYNC_BASE_TYPE:Ljava/lang/String; = "Type"

.field public static final EAS_SYNC_BASE_TYPE_HTML:I = 0x2

.field public static final EAS_SYNC_BASE_TYPE_MIME:I = 0x4

.field public static final EAS_SYNC_BASE_TYPE_RTF:I = 0x3

.field public static final EAS_SYNC_BASE_TYPE_TEXT:I = 0x1

.field public static final EAS_SYNC_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_SYNC_CHANGE:Ljava/lang/String; = "Change"

.field public static final EAS_SYNC_COMMANDS:Ljava/lang/String; = "Commands"

.field public static final EAS_SYNC_CP:I = 0x0

.field public static final EAS_SYNC_DELETE:Ljava/lang/String; = "Delete"

.field public static final EAS_SYNC_KEY:Ljava/lang/String; = "SyncKey"

.field public static final EAS_SYNC_MOREAVAILABLE:Ljava/lang/String; = "MoreAvailable"

.field public static final EAS_SYNC_RESPONSES:Ljava/lang/String; = "Responses"

.field public static final EAS_SYNC_SOFT_DELETE:Ljava/lang/String; = "SoftDelete"

.field public static final EAS_SYNC_TBL:[Ljava/lang/String; = null

.field public static final EAS_TASKS:Ljava/lang/String; = "Tasks"

.field public static final EAS_TASKS_BODY:Ljava/lang/String; = "Body"

.field public static final EAS_TASKS_BODYSIZE:Ljava/lang/String; = "BodySize"

.field public static final EAS_TASKS_BODY_TRUNCATED:Ljava/lang/String; = "BodyTruncated"

.field public static final EAS_TASKS_CATEGORIES:Ljava/lang/String; = "Categories"

.field public static final EAS_TASKS_CATEGORY:Ljava/lang/String; = "Category"

.field public static final EAS_TASKS_COMPLETE:Ljava/lang/String; = "Complete"

.field public static final EAS_TASKS_CP:I = 0x9

.field public static final EAS_TASKS_DATECOMPLETED:Ljava/lang/String; = "DateCompleted"

.field public static final EAS_TASKS_DUEDATE:Ljava/lang/String; = "DueDate"

.field public static final EAS_TASKS_IMPORTANCE:Ljava/lang/String; = "Importance"

.field public static final EAS_TASKS_ORDINAL_DATE:Ljava/lang/String; = "OrdinalDate"

.field public static final EAS_TASKS_RECURRENCE:Ljava/lang/String; = "Recurrence"

.field public static final EAS_TASKS_RECURRENCE_DEADOCCUR:Ljava/lang/String; = "RecurrenceDeadOccur"

.field public static final EAS_TASKS_RECURRENCE_DOM:Ljava/lang/String; = "RecurrenceDayOfMonth"

.field public static final EAS_TASKS_RECURRENCE_DOW:Ljava/lang/String; = "RecurrenceDayOfWeek"

.field public static final EAS_TASKS_RECURRENCE_INTERVAL:Ljava/lang/String; = "RecurrenceInterval"

.field public static final EAS_TASKS_RECURRENCE_MOY:Ljava/lang/String; = "RecurrenceMonthOfYear"

.field public static final EAS_TASKS_RECURRENCE_OCCUR:Ljava/lang/String; = "RecurrenceOccurrences"

.field public static final EAS_TASKS_RECURRENCE_REGEN:Ljava/lang/String; = "RecurrenceRegenerate"

.field public static final EAS_TASKS_RECURRENCE_START:Ljava/lang/String; = "RecurrenceStart"

.field public static final EAS_TASKS_RECURRENCE_TYPE:Ljava/lang/String; = "RecurrenceType"

.field public static final EAS_TASKS_RECURRENCE_UNTIL:Ljava/lang/String; = "RecurrenceUntil"

.field public static final EAS_TASKS_RECURRENCE_WOM:Ljava/lang/String; = "RecurrenceWeekOfMonth"

.field public static final EAS_TASKS_REMINDERSET:Ljava/lang/String; = "ReminderSet"

.field public static final EAS_TASKS_REMINDERTIME:Ljava/lang/String; = "ReminderTime"

.field public static final EAS_TASKS_SENSITIVITY:Ljava/lang/String; = "Sensitivity"

.field public static final EAS_TASKS_START_DATE:Ljava/lang/String; = "StartDate"

.field public static final EAS_TASKS_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final EAS_TASKS_SUBORDINAL_DATE:Ljava/lang/String; = "SubOrdinalDate"

.field public static final EAS_TASKS_TBL:[Ljava/lang/String; = null

.field public static final EAS_TASKS_UTCDUEDATE:Ljava/lang/String; = "UTCDueDate"

.field public static final EAS_TASKS_UTCSTART_DATE:Ljava/lang/String; = "UTCStartDate"

.field public static final EAS_USER_CREATE_FOLDER_GENERIC:Ljava/lang/String; = "1"

.field public static final EAS_USER_CREATE_MAIL_FOLDER:Ljava/lang/String; = "12"

.field public static final EAS_USE_PROXY_FILE:Ljava/lang/String; = "eas_use_proxy"

.field public static final EAS_VALIDATE_CERT_CP:I = 0xb

.field public static final EAS_VALIDATE_CERT_TBL:[Ljava/lang/String; = null

.field public static final EAS_WINDOW_SIZE:Ljava/lang/String; = "100"

.field public static final EXCHANGE_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final EXCHG_MAILBOXS_URI:Landroid/net/Uri; = null

.field public static final EXCHG_MESSAGES_URI:Landroid/net/Uri; = null

.field public static final EXCHG_PARTS_URI:Landroid/net/Uri; = null

.field public static final EXCHG_TRACKING_URI:Landroid/net/Uri; = null

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field public static final EXTRA_EXCHANGE_ACCOUNT:Ljava/lang/String; = "exchange.account"

.field public static final EXTRA_IS_DIRECTPUSH:Ljava/lang/String; = "extra.isDirectpush"

.field public static final EXTRA_MAILBOX_EMPTY_SVRID:Ljava/lang/String; = "Mailbox.Empty.ServerId"

.field public static final EXTRA_SYNC_STATUS:Ljava/lang/String; = "sync.status"

.field public static final HTC_LAUNCHER_INTENT_EXTRA_GO_DELAYED:Ljava/lang/String; = "com.htc.content.Intent.EXTRA_BACKGROUND_GO_DELAYED"

.field public static final HTC_LAUNCHER_INTENT_EXTRA_SENDER:Ljava/lang/String; = "com.htc.content.Intent.EXTRA_SENDER"

.field public static final HTC_LAUNCHER_INTENT_PAUSE:Ljava/lang/String; = "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

.field public static final HTC_LAUNCHER_INTENT_RESUME:Ljava/lang/String; = "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

.field public static final HTC_LAUNCHER_TAG:Ljava/lang/String; = "com.htc.android.launcher"

.field public static final INITIAL_POLICY_KEY:Ljava/lang/String; = "0"

.field public static final INITIAL_SYNC_KEY:Ljava/lang/String; = "0"

.field public static final INTENT_EXTRA_CONTACT_ADD:Ljava/lang/String; = "EAS_CONTACT_SVR_ADD_LIST"

.field public static final INTENT_EXTRA_CONTACT_DEL:Ljava/lang/String; = "EAS_CONTACT_SVR_DEL_LIST"

.field public static final INTENT_EXTRA_CONTACT_UPD:Ljava/lang/String; = "EAS_CONTACT_SVR_UPD_LIST"

.field public static final INTENT_EXTRA_TASK_AP_CHECK:Ljava/lang/String; = "com.htc.task.dm.TaskSource.ACTION_CHECK_PLUGINS"

.field public static final INTENT_EXTRA_TASK_DB_READY:Ljava/lang/String; = "com.htc.task.permission.TaskSource.ACTION_GRANTED"

.field public static final INTENT_FAKE_SYNC_END:Ljava/lang/String; = "intent.eas.mail.fakesync.end"

.field public static final INTENT_MAILBOX_EMPTY:Ljava/lang/String; = "intent.eas.mail.mailbox.empty"

.field public static final INTENT_OPTION_CHANGE:Ljava/lang/String; = "intent.eas.mail.optionChange"

.field public static final INTENT_PASSWORD_SETUP_FINISH:Ljava/lang/String; = "intent.eas.password_setup.finish"

.field public static final INTENT_SCHEDULER_CHANGE:Ljava/lang/String; = "intent.eas.mail.schedulerChange"

.field public static final INTENT_SYNC_STATUS:Ljava/lang/String; = "intent.htc.mail.eas.sync_status"

.field public static final MAILBOXS_URI:Landroid/net/Uri; = null

.field public static final MESSAGES_URI:Landroid/net/Uri; = null

.field public static final MESSAGE_SYNC_ALL_FINISH:I = 0x59da

.field public static final MESSAGE_SYNC_ALL_START:I = 0x59d9

.field public static final PARTS_URI:Landroid/net/Uri; = null

.field public static final PROTOCOL_14_0:Ljava/lang/String; = "14.0"

.field public static final SYNC_STATUS_NONE:I = 0x0

.field public static final SYNC_STATUS_PAUSE:I = 0x2

.field public static final SYNC_STATUS_RUNNING:I = 0x1

.field public static SearchServerMailAccountId:I = 0x0

.field public static final SummariesDeleteMailURI:Landroid/net/Uri; = null

.field public static final SummariesMoveMailURI:Landroid/net/Uri; = null

.field public static final TASKS_INVALID_TASK_ID:Ljava/lang/String; = "InvalidTaskID"

.field public static final TASKS_PACKAGENANE:Ljava/lang/String; = "com.htc.task"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->PARTS_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MAILBOXS_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://mail/cmd/moveMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->SummariesMoveMailURI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://mail/cmd/deleteMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->SummariesDeleteMailURI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://mail/easmessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EXCHG_MESSAGES_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://mail/easparts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EXCHG_PARTS_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://mail/easMailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EXCHG_MAILBOXS_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://mail/easTracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EXCHG_TRACKING_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://mail/easTracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    .line 40
    const/16 v0, 0x270f

    sput v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->SearchServerMailAccountId:I

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_HTTP_AGENT:Ljava/lang/String;

    .line 878
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "m.hotmail.com"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_DO_NOT_FETCH_ONE_DAY_MAIL:[Ljava/lang/String;

    .line 883
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sync"

    aput-object v1, v0, v3

    const-string v1, "Responses"

    aput-object v1, v0, v4

    const-string v1, "Add"

    aput-object v1, v0, v5

    const-string v1, "Change"

    aput-object v1, v0, v6

    const-string v1, "Delete"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fetch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SyncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ClientId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Collection"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Class"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Version"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CollectionId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GetChanges"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MoreAvailable"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WindowSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Commands"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Options"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "FilterType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Truncation"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RTFTruncation"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Conflict"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Collections"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ApplicationData"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DeletesAsMoves"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "NotifyGUID"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SoftDelete"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MIMESupport"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "MIMETruncation"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Wait"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Limit"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Partial"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ConversationMode"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "MaxItems"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "HeartbeatInterval"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SYNC_TBL:[Ljava/lang/String;

    .line 923
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Anniversary"

    aput-object v1, v0, v3

    const-string v1, "AssistantName"

    aput-object v1, v0, v4

    const-string v1, "AssistantTelephoneNumber"

    aput-object v1, v0, v5

    const-string v1, "Birthday"

    aput-object v1, v0, v6

    const-string v1, "Body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BodySize"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BodyTruncated"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Business2TelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BusinessAddressCity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BusinessAddressCountry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BusinessAddressPostalCode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BusinessAddressState"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "BusinessAddressStreet"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BusinessFaxNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "BusinessTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CarTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Categories"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Category"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Children"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Child"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CompanyName"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Department"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Email1Address"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Email2Address"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Email3Address"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FileAs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "FirstName"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Home2TelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "HomeAddressCity"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "HomeAddressCountry"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "HomeAddressPostalCode"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "HomeAddressState"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "HomeAddressStreet"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "HomeFaxNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "HomeTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "JobTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "LastName"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "MiddleName"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "MobileTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "OfficeLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "OtherAddressCity"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "OtherAddressCountry"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "OtherAddressPostalCode"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "OtherAddressState"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "OtherAddressStreet"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "PagerNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "RadioTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Spouse"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Suffix"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Webpage"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "YomiCompanyName"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "YomiFirstName"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "YomiLastName"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "CompressedRTF"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Picture"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Alias"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "WeightedRank"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_CONTACT_TBL:[Ljava/lang/String;

    .line 985
    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Attachment"

    aput-object v1, v0, v3

    const-string v1, "Attachments"

    aput-object v1, v0, v4

    const-string v1, "AttName"

    aput-object v1, v0, v5

    const-string v1, "AttSize"

    aput-object v1, v0, v6

    const-string v1, "Att0Id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AttMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AttRemoved"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BodySize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BodyTruncated"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DateReceived"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DisplayName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DisplayTo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Importance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MessageClass"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Subject"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "To"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "From"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ReplyTo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "AllDayEvent"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Categories"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Category"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "DTStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "InstanceType"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IntDBusyStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Location"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MeetingRequest"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "RecurrenceId"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Reminder"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ResponseRequested"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Recurrences"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Recurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Recurrence_Type"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Recurrence_Until"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Recurrence_Occurrences"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Recurrence_Interval"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Recurrence_DayOfWeek"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Recurrence_DayOfMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Recurrence_WeekOfMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Recurrence_MonthOfYear"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Sensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "TimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "GlobalObjId"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ThreadTopic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "MIMEData"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "MIMETruncated"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "MIMESize"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "InternetCPID"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Flag"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "FlagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ContentClass"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "FlagType"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "CompleteTime"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "DisallowNewTimeProposal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_EMAIL_TBL:[Ljava/lang/String;

    .line 1048
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TimeZone"

    aput-object v1, v0, v3

    const-string v1, "AllDayEvent"

    aput-object v1, v0, v4

    const-string v1, "Attendees"

    aput-object v1, v0, v5

    const-string v1, "Attendee"

    aput-object v1, v0, v6

    const-string v1, "Attendee_Email"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Attendee_Name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BodyTruncated"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BusyStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Categories"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Category"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Compressed_RTF"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DTStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EndTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Exception"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Exceptions"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Exception_IsDeleted"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Exception_StartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Location"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MeetingStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Organizer_Email"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Organizer_Name"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Recurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Recurrence_Type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Recurrence_Until"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Recurrence_Occurrences"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Recurrence_Interval"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Recurrence_DayOfWeek"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Recurrence_DayOfMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Recurrence_WeekOfMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Recurrence_MonthOfYear"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Reminder_MinsBefore"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Sensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Subject"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "UID"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Attendee_Status"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Attendee_Type"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Undefine2B"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Undefine2C"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Undefine2D"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Undefine2E"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Undefine2F"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Undefine30"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Undefine31"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Undefine32"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "DisallowNewTimeProposal"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ResponseRequested"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "AppointmentReplyTime"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "ResponseType"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "CalendarType"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IsLeapMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "FirstDayOfWeek"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "OnlineMeetingInternalLink"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_CALENDAR_TBL:[Ljava/lang/String;

    .line 1106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MoveItems"

    aput-object v1, v0, v3

    const-string v1, "Move"

    aput-object v1, v0, v4

    const-string v1, "SrcMsgId"

    aput-object v1, v0, v5

    const-string v1, "SrcFldId"

    aput-object v1, v0, v6

    const-string v1, "DstFldId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DstMsgId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_MOVE_TBL:[Ljava/lang/String;

    .line 1118
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GetItemEstimate"

    aput-object v1, v0, v3

    const-string v1, "Version"

    aput-object v1, v0, v4

    const-string v1, "Collections"

    aput-object v1, v0, v5

    const-string v1, "Collection"

    aput-object v1, v0, v6

    const-string v1, "Class"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CollectionId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Estimate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_ITEM_ESTIMATE_TBL:[Ljava/lang/String;

    .line 1132
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Folders"

    aput-object v1, v0, v3

    const-string v1, "Folder"

    aput-object v1, v0, v4

    const-string v1, "DisplayName"

    aput-object v1, v0, v5

    const-string v1, "ServerId"

    aput-object v1, v0, v6

    const-string v1, "ParentId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ContentClass"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Changes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Add"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Update"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FolderCreate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FolderDelete"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "FolderUpdate"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "FolderSync"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_FOLDER_SYNC_TBL:[Ljava/lang/String;

    .line 1157
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CalId"

    aput-object v1, v0, v3

    const-string v1, "CollectionId"

    aput-object v1, v0, v4

    const-string v1, "MeetingResponse"

    aput-object v1, v0, v5

    const-string v1, "ReqId"

    aput-object v1, v0, v6

    const-string v1, "Request"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Result"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UserResponse"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_MEETING_RESP_TBL:[Ljava/lang/String;

    .line 1170
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Body"

    aput-object v1, v0, v3

    const-string v1, "BodySize"

    aput-object v1, v0, v4

    const-string v1, "BodyTruncated"

    aput-object v1, v0, v5

    const-string v1, "Categories"

    aput-object v1, v0, v6

    const-string v1, "Category"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Complete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DateCompleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DueDate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UTCDueDate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Importance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Recurrence"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RecurrenceType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RecurrenceStart"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RecurrenceUntil"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RecurrenceOccurrences"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RecurrenceInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RecurrenceDayOfMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RecurrenceDayOfWeek"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RecurrenceWeekOfMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RecurrenceMonthOfYear"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RecurrenceRegenerate"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RecurrenceDeadOccur"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ReminderSet"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ReminderTime"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Sensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "StartDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "UTCStartDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Subject"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CompressedRTF"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "OrdinalDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SubOrdinalDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CalendarType"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "IsLeapMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "FirstDayOfWeek"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_TASKS_TBL:[Ljava/lang/String;

    .line 1208
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ResolveRecipients"

    aput-object v1, v0, v3

    const-string v1, "Response"

    aput-object v1, v0, v4

    const-string v1, "Status"

    aput-object v1, v0, v5

    const-string v1, "Type"

    aput-object v1, v0, v6

    const-string v1, "Recipient"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DisplayName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EmailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Certificates"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MiniCertificate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Options"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "To"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CertificateRetrieval"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RecipientCount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MaxCertificates"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MaxAmbiguousRecipients"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CertificateCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Availability"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MergedFreeBusy"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Picture"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MaxSize"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Data"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MaxPictures"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_RESOLVE_RECIPIENTS_TBL:[Ljava/lang/String;

    .line 1237
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ValidateCert"

    aput-object v1, v0, v3

    const-string v1, "Certificates"

    aput-object v1, v0, v4

    const-string v1, "Certificate"

    aput-object v1, v0, v5

    const-string v1, "CertificateChain"

    aput-object v1, v0, v6

    const-string v1, "CheckCRL"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_VALIDATE_CERT_TBL:[Ljava/lang/String;

    .line 1246
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CustomerId"

    aput-object v1, v0, v3

    const-string v1, "GovernmentId"

    aput-object v1, v0, v4

    const-string v1, "IMAddress"

    aput-object v1, v0, v5

    const-string v1, "IMAddress2"

    aput-object v1, v0, v6

    const-string v1, "IMAddress3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ManagerName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CompanyMainPhone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AccountName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NickName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MMS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_CONTACT2_TBL:[Ljava/lang/String;

    .line 1260
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Ping"

    aput-object v1, v0, v3

    const-string v1, "AutdState"

    aput-object v1, v0, v4

    const-string v1, "Status"

    aput-object v1, v0, v5

    const-string v1, "HeartbeatInterval"

    aput-object v1, v0, v6

    const-string v1, "Folders"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Class"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MaxFolders"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PING_TBL:[Ljava/lang/String;

    .line 1273
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Provision"

    aput-object v1, v0, v3

    const-string v1, "Policies"

    aput-object v1, v0, v4

    const-string v1, "Policy"

    aput-object v1, v0, v5

    const-string v1, "PolicyType"

    aput-object v1, v0, v6

    const-string v1, "PolicyKey"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EASProvisionDoc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DevicePasswordEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AlphanumericDevicePasswordRequired"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RequireStorageCardEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PasswordRecoveryEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "UNKNOW12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AttachmentsEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MinDevicePasswordLength"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MaxInactivityTimeDeviceLock"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MaxDevicePasswordFailedAttempts"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MaxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "AllowSimpleDevicePassword"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DevicePasswordExpiration"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DevicePasswordHistory"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AllowStorageCard"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "AllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RequireDeviceEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "AllowUnsignedApplications"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "AllowUnsignedInstallationPackages"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "MinDevicePasswordComplexCharacters"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "AllowWiFi"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "AllowTextMessaging"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "AllowPOPIMAPEmail"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "AllowBluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "AllowIrDA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RequireManualSyncWhenRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AllowDesktopSync"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "MaxCalendarAgeFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "AllowHTMLEmail"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "MaxEmailAgeFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "MaxEmailBodyTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "MaxEmailHTMLBodyTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "RequireSignedSMIMEMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "RequireEncryptedSMIMEMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "RequireSignedSMIMEAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "AllowSMIMESoftCerts"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "AllowBrowser"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "AllowConsumerEmail"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "AllowRemoteDesktop"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "AllowInternetSharing"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "UnapprovedInROMApplicationList"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "ApplicationName"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "ApprovedApplicationList"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_TBL:[Ljava/lang/String;

    .line 1331
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Search"

    aput-object v1, v0, v3

    const-string v1, "Stores"

    aput-object v1, v0, v4

    const-string v1, "Store"

    aput-object v1, v0, v5

    const-string v1, "Name"

    aput-object v1, v0, v6

    const-string v1, "Query"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Options"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Range"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Result"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Properties"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Total"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EqualTo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "And"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Or"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "FreeText"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SubstringOp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DeepTraversal"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LongId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RebuildResults"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "LessThan"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GreaterThan"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Schema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "UserName"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Password"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ConversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Picture"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MaxSize"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "MaxPictures"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SEARCH_TBL:[Ljava/lang/String;

    .line 1366
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DisplayName"

    aput-object v1, v0, v3

    const-string v1, "Phone"

    aput-object v1, v0, v4

    const-string v1, "Office"

    aput-object v1, v0, v5

    const-string v1, "Title"

    aput-object v1, v0, v6

    const-string v1, "Company"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Alias"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FirstName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LastName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HomePhone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MobilePhone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EmailAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Picture"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_GAL_TBL:[Ljava/lang/String;

    .line 1385
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BodyPreference"

    aput-object v1, v0, v3

    const-string v1, "Type"

    aput-object v1, v0, v4

    const-string v1, "TruncationSize"

    aput-object v1, v0, v5

    const-string v1, "AllOrNone"

    aput-object v1, v0, v6

    const-string v1, "Unknow"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EstimatedDataSize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Truncated"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Attachments"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Attachment"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DisplayName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FileReference"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Method"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ContentId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ContentLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "IsInline"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "NativeBodyType"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ContentType"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Preview"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BodyPartPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BodyPart"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_AIR_SYNC_BASE_TBL:[Ljava/lang/String;

    .line 1412
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Settings"

    aput-object v1, v0, v3

    const-string v1, "Status"

    aput-object v1, v0, v4

    const-string v1, "Get"

    aput-object v1, v0, v5

    const-string v1, "Set"

    aput-object v1, v0, v6

    const-string v1, "Oof"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "OofState"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "OofMessage"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AppliesToInternal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AppliesToExternalKnown"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AppliesToExternalUnknown"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ReplyMessage"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "BodyType"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DevicePassword"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Password"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DeviceInformation"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "IMEI"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "FriendlyName"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "OS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "OSLanguage"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "PhoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UserInformation"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EmailAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SmtpAddress"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "UserAgent"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EnableOutboundSMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MobileOperator"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PrimarySmtpAddress"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Accounts"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Account"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "AccountId"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AccountName"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "UserDisplayName"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SendDisabled"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Undefine"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ihsManagementInformation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SETTINGS_TBL:[Ljava/lang/String;

    .line 1455
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ItemOperations"

    aput-object v1, v0, v3

    const-string v1, "Fetch"

    aput-object v1, v0, v4

    const-string v1, "Store"

    aput-object v1, v0, v5

    const-string v1, "Options"

    aput-object v1, v0, v6

    const-string v1, "Range"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Total"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Properties"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Schema"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Part"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EmptyFolderContents"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DeleteSubFolders"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UserName"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Password"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Move"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DstFldId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ConversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MoveAlways"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_ITEM_OPERATIONS_TBL:[Ljava/lang/String;

    .line 1480
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SendMail"

    aput-object v1, v0, v3

    const-string v1, "SmartForward"

    aput-object v1, v0, v4

    const-string v1, "SmartReply"

    aput-object v1, v0, v5

    const-string v1, "SaveInSentItems"

    aput-object v1, v0, v6

    const-string v1, "ReplaceMime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Undefine"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Source"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ItemId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LongId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "InstanceId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ClientId"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AccountId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_COMPOSE_MAIL_TBL:[Ljava/lang/String;

    .line 1499
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UmCallerID"

    aput-object v1, v0, v3

    const-string v1, "UmUserNotes"

    aput-object v1, v0, v4

    const-string v1, "UmAttDuration"

    aput-object v1, v0, v5

    const-string v1, "UmAttOrder"

    aput-object v1, v0, v6

    const-string v1, "ConversationId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ConversationIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LastVerbExecuted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LastVerbExecutionTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ReceivedAsBcc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sender"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CalendarType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IsLeapMonth"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AccountId"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FirstDayOfWeek"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MeetingMessageType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_MAIL2_TBL:[Ljava/lang/String;

    .line 1518
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AssistantTelephoneNumber"

    aput-object v1, v0, v3

    const-string v1, "BusinessAddressStreet"

    aput-object v1, v0, v4

    const-string v1, "BusinessAddressCity"

    aput-object v1, v0, v5

    const-string v1, "BusinessAddressState"

    aput-object v1, v0, v6

    const-string v1, "BusinessAddressPostalCode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BusinessAddressCountry"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BusinessFaxNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BusinessTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CarTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CompanyMainPhone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CompanyName"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Email1Address"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Email2Address"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Email3Address"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FileAs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FirstName"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HomeAddressStreet"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "HomeAddressCity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HomeAddressState"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "HomeAddressPostalCode"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HomeAddressCountry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "HomeFaxNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "HomeTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "JobTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "LastName"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "MobileTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "OtherAddressStreet"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "OtherAddressCity"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "OtherAddressState"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "OtherAddressPostalCode"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "OtherAddressCountry"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PagerNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Picture"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RadioTelephoneNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Anniversary"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Birthday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_CONTACTS_SUPPORTED_25:[Ljava/lang/String;

    .line 1557
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "IMAddress"

    aput-object v1, v0, v3

    const-string v1, "IMAddress2"

    aput-object v1, v0, v4

    const-string v1, "IMAddress3"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_CONTACTS_SUPPORTED_120:[Ljava/lang/String;

    .line 1563
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DevicePasswordEnabled"

    aput-object v1, v0, v3

    const-string v1, "AlphanumericDevicePasswordRequired"

    aput-object v1, v0, v4

    const-string v1, "DeviceEncryptionEnabled"

    aput-object v1, v0, v5

    const-string v1, "RequireStorageCardEncryption"

    aput-object v1, v0, v6

    const-string v1, "PasswordRecoveryEnabled"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AttachmentsEnabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MinDevicePasswordLength"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MaxInactivityTimeDeviceLock"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MaxDevicePasswordFailedAttempts"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MaxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AllowSimpleDevicePassword"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DevicePasswordExpiration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DevicePasswordHistory"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AllowStorageCard"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RequireDeviceEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "AllowUnsignedApplications"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AllowUnsignedInstallationPackages"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MinDevicePasswordComplexCharacters"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "AllowWiFi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "AllowTextMessaging"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "AllowPOPIMAPEmail"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AllowBluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "AllowIrDA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RequireManualSyncWhenRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "AllowDesktopSync"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "MaxCalendarAgeFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "AllowHTMLEmail"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MaxEmailAgeFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MaxEmailBodyTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "MaxEmailHTMLBodyTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "RequireSignedSMIMEMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "RequireEncryptedSMIMEMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RequireSignedSMIMEAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "AllowSMIMESoftCerts"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "AllowBrowser"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "AllowConsumerEmail"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "AllowRemoteDesktop"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AllowInternetSharing"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "UnapprovedInROMApplicationList"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "ApprovedApplicationList"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1612
    return-void
.end method

.method public static MailboxKind(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)J
    .locals 5
    .parameter "easColl"

    .prologue
    .line 1819
    if-eqz p0, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1820
    :cond_0
    const-wide/16 v1, 0x0

    .line 1855
    :goto_0
    return-wide v1

    .line 1823
    :cond_1
    const-wide/16 v1, 0x0

    .line 1825
    .local v1, kind:J
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1826
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1828
    :pswitch_0
    const-wide/16 v1, 0x0

    .line 1829
    goto :goto_0

    .line 1832
    :pswitch_1
    const-wide/32 v1, 0x7ffffffe

    .line 1833
    goto :goto_0

    .line 1836
    :pswitch_2
    const-wide/32 v1, 0x7ffffffc

    .line 1837
    goto :goto_0

    .line 1840
    :pswitch_3
    const-wide/32 v1, 0x7fffffff

    .line 1841
    goto :goto_0

    .line 1844
    :pswitch_4
    const-wide/32 v1, 0x7ffffffb

    .line 1845
    goto :goto_0

    .line 1848
    :pswitch_5
    const-wide/32 v1, 0x7ffffffd

    goto :goto_0

    .line 1851
    .end local v3           #type:I
    :catch_0
    move-exception v0

    .line 1852
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static calAttachmentSize(I)I
    .locals 1
    .parameter "attachOpt"

    .prologue
    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, attachSize:I
    packed-switch p0, :pswitch_data_0

    .line 856
    :goto_0
    return v0

    .line 835
    :pswitch_0
    const/4 v0, 0x0

    .line 836
    goto :goto_0

    .line 838
    :pswitch_1
    const/16 v0, 0x6400

    .line 839
    goto :goto_0

    .line 841
    :pswitch_2
    const v0, 0x19000

    .line 842
    goto :goto_0

    .line 844
    :pswitch_3
    const v0, 0x7d000

    .line 845
    goto :goto_0

    .line 847
    :pswitch_4
    const/high16 v0, 0x10

    .line 848
    goto :goto_0

    .line 850
    :pswitch_5
    const/high16 v0, 0x20

    .line 851
    goto :goto_0

    .line 853
    :pswitch_6
    const/4 v0, -0x1

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static calcTruncationSize(I)I
    .locals 1
    .parameter "nTruncation"

    .prologue
    .line 746
    const/4 v0, -0x1

    .line 748
    .local v0, charTruncation:I
    packed-switch p0, :pswitch_data_0

    .line 782
    :goto_0
    return v0

    .line 750
    :pswitch_0
    const/4 v0, 0x0

    .line 751
    goto :goto_0

    .line 753
    :pswitch_1
    const/16 v0, 0x200

    .line 754
    goto :goto_0

    .line 756
    :pswitch_2
    const/16 v0, 0x400

    .line 757
    goto :goto_0

    .line 759
    :pswitch_3
    const/16 v0, 0x800

    .line 760
    goto :goto_0

    .line 762
    :pswitch_4
    const/16 v0, 0x1400

    .line 763
    goto :goto_0

    .line 765
    :pswitch_5
    const/16 v0, 0x2800

    .line 766
    goto :goto_0

    .line 768
    :pswitch_6
    const/16 v0, 0x5000

    .line 769
    goto :goto_0

    .line 771
    :pswitch_7
    const v0, 0xc800

    .line 772
    goto :goto_0

    .line 774
    :pswitch_8
    const v0, 0x19000

    .line 775
    goto :goto_0

    .line 778
    :pswitch_9
    const v0, 0xc8000

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static getAttachmentOption(I)I
    .locals 5
    .parameter "attachSize"

    .prologue
    const/high16 v4, 0x10

    const v3, 0x7d000

    const v2, 0x19000

    const/16 v1, 0x6400

    const/4 v0, 0x0

    .line 859
    if-ltz p0, :cond_1

    if-ge p0, v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 861
    :cond_1
    if-lt p0, v1, :cond_2

    if-ge p0, v2, :cond_2

    .line 862
    const/4 v0, 0x1

    goto :goto_0

    .line 863
    :cond_2
    if-lt p0, v2, :cond_3

    if-ge p0, v3, :cond_3

    .line 864
    const/4 v0, 0x2

    goto :goto_0

    .line 865
    :cond_3
    if-lt p0, v3, :cond_4

    if-ge p0, v4, :cond_4

    .line 866
    const/4 v0, 0x3

    goto :goto_0

    .line 867
    :cond_4
    if-lt p0, v4, :cond_5

    const/high16 v1, 0x20

    if-ge p0, v1, :cond_5

    .line 868
    const/4 v0, 0x4

    goto :goto_0

    .line 869
    :cond_5
    const/high16 v1, 0x20

    if-lt p0, v1, :cond_6

    .line 870
    const/4 v0, 0x5

    goto :goto_0

    .line 871
    :cond_6
    if-gez p0, :cond_0

    .line 872
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getMIMETruncationOption(I)I
    .locals 5
    .parameter "truncatSize"

    .prologue
    const/16 v4, 0x2800

    const/16 v3, 0x1c00

    const/16 v2, 0x1400

    const/16 v1, 0x1000

    const/4 v0, 0x2

    .line 785
    if-ltz p0, :cond_1

    if-gt p0, v1, :cond_1

    .line 787
    const/4 v0, 0x1

    .line 801
    :cond_0
    :goto_0
    return v0

    .line 788
    :cond_1
    if-le p0, v1, :cond_2

    if-le p0, v2, :cond_0

    .line 790
    :cond_2
    if-le p0, v2, :cond_3

    if-gt p0, v3, :cond_3

    .line 791
    const/4 v0, 0x3

    goto :goto_0

    .line 792
    :cond_3
    if-le p0, v3, :cond_4

    if-gt p0, v4, :cond_4

    .line 793
    const/4 v0, 0x4

    goto :goto_0

    .line 794
    :cond_4
    if-le p0, v4, :cond_5

    const/16 v1, 0x5000

    if-gt p0, v1, :cond_5

    .line 795
    const/4 v0, 0x5

    goto :goto_0

    .line 796
    :cond_5
    const/16 v1, 0x5000

    if-le p0, v1, :cond_6

    const v1, 0xc800

    if-gt p0, v1, :cond_6

    .line 797
    const/4 v0, 0x6

    goto :goto_0

    .line 798
    :cond_6
    if-gez p0, :cond_0

    .line 799
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getMailInboxCollectionId(Lcom/htc/android/mail/eassvc/core/MailSyncSource;)Ljava/lang/String;
    .locals 4
    .parameter "mailSrc"

    .prologue
    .line 1879
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getSyncCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 1880
    .local v0, col:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1881
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    .line 1884
    .end local v0           #col:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTruncationOption(I)I
    .locals 5
    .parameter "truncatSize"

    .prologue
    const/16 v4, 0x1400

    const/16 v3, 0x800

    const/16 v2, 0x400

    const/16 v1, 0x200

    const/4 v0, 0x4

    .line 805
    if-ltz p0, :cond_1

    if-ge p0, v1, :cond_1

    .line 806
    const/4 v0, 0x0

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 807
    :cond_1
    if-lt p0, v1, :cond_2

    if-ge p0, v2, :cond_2

    .line 808
    const/4 v0, 0x1

    goto :goto_0

    .line 809
    :cond_2
    if-lt p0, v2, :cond_3

    if-ge p0, v3, :cond_3

    .line 810
    const/4 v0, 0x2

    goto :goto_0

    .line 811
    :cond_3
    if-lt p0, v3, :cond_4

    if-ge p0, v4, :cond_4

    .line 812
    const/4 v0, 0x3

    goto :goto_0

    .line 813
    :cond_4
    if-lt p0, v4, :cond_5

    const/16 v1, 0x2800

    if-lt p0, v1, :cond_0

    .line 815
    :cond_5
    const/16 v1, 0x2800

    if-lt p0, v1, :cond_6

    const/16 v1, 0x5000

    if-ge p0, v1, :cond_6

    .line 816
    const/4 v0, 0x5

    goto :goto_0

    .line 817
    :cond_6
    const/16 v1, 0x5000

    if-lt p0, v1, :cond_7

    const v1, 0xc800

    if-ge p0, v1, :cond_7

    .line 818
    const/4 v0, 0x6

    goto :goto_0

    .line 819
    :cond_7
    const v1, 0xc800

    if-lt p0, v1, :cond_8

    .line 820
    const/4 v0, 0x7

    goto :goto_0

    .line 823
    :cond_8
    if-gez p0, :cond_0

    .line 824
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 1859
    if-ne p0, p1, :cond_0

    .line 1860
    const/4 v0, 0x1

    .line 1864
    :goto_0
    return v0

    .line 1861
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1862
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1864
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 1869
    if-ne p0, p1, :cond_0

    .line 1870
    const/4 v0, 0x1

    .line 1874
    :goto_0
    return v0

    .line 1871
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1872
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1874
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static messageClassMapping(Ljava/lang/String;)I
    .locals 2
    .parameter "messageClass"

    .prologue
    const/4 v0, 0x0

    .line 1718
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return v0

    .line 1720
    :cond_1
    const-string v1, "IPM.Note"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1722
    const-string v1, "IPM.Note.Rules.OofTemplate.Microsoft"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1723
    const/4 v0, 0x1

    goto :goto_0

    .line 1724
    :cond_2
    const-string v1, "IPM.Note.SMIME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1725
    const/4 v0, 0x2

    goto :goto_0

    .line 1726
    :cond_3
    const-string v1, "IPM.Note.SMIME.MultipartSigned"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1727
    const/4 v0, 0x3

    goto :goto_0

    .line 1728
    :cond_4
    const-string v1, "IPM.Notification.Meeting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1729
    const/4 v0, 0x4

    goto :goto_0

    .line 1730
    :cond_5
    const-string v1, "IPM.Octel.Voice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1731
    const/4 v0, 0x5

    goto :goto_0

    .line 1732
    :cond_6
    const-string v1, "IPM.Schedule.Meeting.Request"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1733
    const/4 v0, 0x6

    goto :goto_0

    .line 1734
    :cond_7
    const-string v1, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1735
    const/4 v0, 0x7

    goto :goto_0

    .line 1736
    :cond_8
    const-string v1, "IPM.Schedule.Meeting.Resp.Pos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1737
    const/16 v0, 0x8

    goto :goto_0

    .line 1738
    :cond_9
    const-string v1, "IPM.Schedule.Meeting.Resp.Tent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1739
    const/16 v0, 0x9

    goto :goto_0

    .line 1740
    :cond_a
    const-string v1, "IPM.Schedule.Meeting.Resp.Neg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1741
    const/16 v0, 0xa

    goto :goto_0

    .line 1742
    :cond_b
    const-string v1, "IPM.Post"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1743
    const/16 v0, 0xb

    goto :goto_0

    .line 1744
    :cond_c
    const-string v1, "IPM.InfoPathForm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1745
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1746
    :cond_d
    const-string v1, "IPM.VoiceNotes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1747
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1748
    :cond_e
    const-string v1, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1749
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1750
    :cond_f
    const-string v1, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1751
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1752
    :cond_10
    const-string v1, "IPM.Sharing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1753
    const/16 v0, 0x15

    goto/16 :goto_0
.end method

.method public static messageClassMapping(I)Ljava/lang/String;
    .locals 1
    .parameter "messageClassInt"

    .prologue
    .line 1760
    const-string v0, ""

    .line 1761
    .local v0, strRet:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1815
    :goto_0
    :pswitch_0
    return-object v0

    .line 1764
    :pswitch_1
    const-string v0, "IPM.Note"

    .line 1765
    goto :goto_0

    .line 1767
    :pswitch_2
    const-string v0, "IPM.Note.Rules.OofTemplate.Microsoft"

    .line 1768
    goto :goto_0

    .line 1770
    :pswitch_3
    const-string v0, "IPM.Note.SMIME"

    .line 1771
    goto :goto_0

    .line 1773
    :pswitch_4
    const-string v0, "IPM.Note.SMIME.MultipartSigned"

    .line 1774
    goto :goto_0

    .line 1776
    :pswitch_5
    const-string v0, "IPM.Notification.Meeting"

    .line 1777
    goto :goto_0

    .line 1779
    :pswitch_6
    const-string v0, "IPM.Octel.Voice"

    .line 1780
    goto :goto_0

    .line 1782
    :pswitch_7
    const-string v0, "IPM.Schedule.Meeting.Request"

    .line 1783
    goto :goto_0

    .line 1785
    :pswitch_8
    const-string v0, "IPM.Schedule.Meeting.Canceled"

    .line 1786
    goto :goto_0

    .line 1788
    :pswitch_9
    const-string v0, "IPM.Schedule.Meeting.Resp.Pos"

    .line 1789
    goto :goto_0

    .line 1791
    :pswitch_a
    const-string v0, "IPM.Schedule.Meeting.Resp.Tent"

    .line 1792
    goto :goto_0

    .line 1794
    :pswitch_b
    const-string v0, "IPM.Schedule.Meeting.Resp.Neg"

    .line 1795
    goto :goto_0

    .line 1797
    :pswitch_c
    const-string v0, "IPM.Post"

    .line 1798
    goto :goto_0

    .line 1800
    :pswitch_d
    const-string v0, "IPM.InfoPathForm"

    .line 1801
    goto :goto_0

    .line 1803
    :pswitch_e
    const-string v0, "IPM.VoiceNotes"

    .line 1804
    goto :goto_0

    .line 1806
    :pswitch_f
    const-string v0, "IPM.Schedule.Meeting.Canceled"

    .line 1807
    goto :goto_0

    .line 1809
    :pswitch_10
    const-string v0, "IPM.Schedule.Meeting.Canceled"

    .line 1810
    goto :goto_0

    .line 1812
    :pswitch_11
    const-string v0, "IPM.Sharing"

    goto :goto_0

    .line 1761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static setUserAgent(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    .line 1889
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_HTTP_AGENT:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1890
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1891
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android-EAS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_HTTP_AGENT:Ljava/lang/String;

    .line 1901
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1894
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const-string v2, "Android-EAS/4.50"

    sput-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_HTTP_AGENT:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1897
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1898
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Android-EAS/4.50"

    sput-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_HTTP_AGENT:Ljava/lang/String;

    .line 1899
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
