.class Lcom/android/providers/calendar/CalendarDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CalendarDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarDatabaseHelper$Views;,
        Lcom/android/providers/calendar/CalendarDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final CALENDAR_CLEANUP_TRIGGER_SQL:Ljava/lang/String; = "DELETE FROM Events WHERE calendar_id=old._id;"

.field private static final CALENDAR_COLOR_UPDATE_TRIGGER_NAME:Ljava/lang/String; = "calendar_color_update"

.field public static final CALENDAR_SMS_ALERTS_TABLE_NAME:Ljava/lang/String; = "CalendarSmsAlerts"

.field private static final CALENDAR_UPDATE_COLOR_TRIGGER_SQL:Ljava/lang/String; = "UPDATE Calendars SET calendar_color=(SELECT color FROM Colors WHERE account_name=new.account_name AND account_type=new.account_type AND color_index=new.calendar_color_index)  WHERE _id=old._id;"

.field private static final CREATE_CALENDAR_COLOR_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER calendar_color_update UPDATE OF calendar_color_index ON Calendars WHEN new.calendar_color_index NOT NULL BEGIN UPDATE Calendars SET calendar_color=(SELECT color FROM Colors WHERE account_name=new.account_name AND account_type=new.account_type AND color_index=new.calendar_color_index)  WHERE _id=old._id; END"

.field private static final CREATE_EVENT_COLOR_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER event_color_update UPDATE OF eventColor_index ON Events WHEN new.eventColor_index NOT NULL BEGIN UPDATE Events SET eventColor=(SELECT color FROM Colors WHERE account_name=(SELECT account_name FROM Calendars WHERE _id=new.calendar_id) AND account_type=(SELECT account_type FROM Calendars WHERE _id=new.calendar_id) AND color_index=new.eventColor_index)  WHERE _id=old._id; END"

.field private static final CREATE_SYNC_ID_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

.field private static final DATABASE_NAME:Ljava/lang/String; = "calendar.db"

.field static final DATABASE_VERSION:I = 0x135

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final EVENTS_CLEANUP_TRIGGER_SQL:Ljava/lang/String; = "DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;DELETE FROM CalendarSmsAlerts WHERE event_id=old._id;"

.field private static final EVENTS_ORIGINAL_SYNC_TRIGGER_SQL:Ljava/lang/String; = "UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id;"

.field private static final EVENT_COLOR_UPDATE_TRIGGER_NAME:Ljava/lang/String; = "event_color_update"

.field private static final EVENT_UPDATE_COLOR_TRIGGER_SQL:Ljava/lang/String; = "UPDATE Events SET eventColor=(SELECT color FROM Colors WHERE account_name=(SELECT account_name FROM Calendars WHERE _id=new.calendar_id) AND account_type=(SELECT account_type FROM Calendars WHERE _id=new.calendar_id) AND color_index=new.eventColor_index)  WHERE _id=old._id;"

.field private static final LAST_SYNCED_ATTENDEE_COLUMNS:Ljava/lang/String; = "attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType"

.field private static final LAST_SYNCED_EVENT_COLUMNS:Ljava/lang/String; = "_sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer"

.field private static final LAST_SYNCED_EXTENDED_PROPERTY_COLUMNS:Ljava/lang/String; = "name,value"

.field private static final LAST_SYNCED_REMINDER_COLUMNS:Ljava/lang/String; = "minutes,method"

.field private static final LOGD:Z = false

.field private static final PRE_FROYO_SYNC_STATE_VERSION:I = 0x3

.field private static final SCHEMA_HTTP:Ljava/lang/String; = "http://"

.field private static final SCHEMA_HTTPS:Ljava/lang/String; = "https://"

.field private static final SYNC_ID_UPDATE_TRIGGER_NAME:Ljava/lang/String; = "original_sync_update"

.field private static final SYNC_STATE_META_VERSION_COLUMN:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "CalendarDatabaseHelper"

.field private static final easTracking_accounts:[Ljava/lang/String;

.field private static mDefault_reminder_in_customization:Ljava/lang/String;

.field private static sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;


# instance fields
.field private mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarSmsAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mColorsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mContext:Landroid/content/Context;

.field private mEasSyncInfoInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 2961
    const-string v0, "10"

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    .line 3119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcWindowsLiveAccountType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->easTracking_accounts:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 304
    const-string v0, "calendar.db"

    const/4 v1, 0x0

    const/16 v2, 0x135

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 308
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 309
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    .line 312
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/calendar/HtcCheckCustomization;->getReminderValueInCustomization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    .line 315
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 386
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 392
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 394
    const-string v0, "CREATE TABLE EventsRawTimes (_id INTEGER PRIMARY KEY,event_id INTEGER NOT NULL,dtstart2445 TEXT,dtend2445 TEXT,originalInstanceTime2445 TEXT,lastDate2445 TEXT,UNIQUE (event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 404
    const-string v0, "CREATE TABLE Instances (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER,end INTEGER,startDay INTEGER,endDay INTEGER,startMinute INTEGER,endMinute INTEGER,UNIQUE (event_id, begin, end));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v0, "CREATE INDEX instancesStartDayIndex ON Instances (startDay);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 425
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 427
    const-string v0, "CREATE TABLE Attendees (_id INTEGER PRIMARY KEY,event_id INTEGER,attendeeName TEXT,attendeeEmail TEXT,attendeeStatus INTEGER,attendeeRelationship INTEGER,attendeeType INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v0, "CREATE INDEX attendeesEventIdIndex ON Attendees (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    const-string v0, "CREATE TABLE Reminders (_id INTEGER PRIMARY KEY,event_id INTEGER,minutes INTEGER,method INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v0, "CREATE INDEX remindersEventIdIndex ON Reminders (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v0, "CREATE TABLE CalendarAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL,receivedTime INTEGER NOT NULL,notifyTime INTEGER NOT NULL,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    const-string v0, "CREATE INDEX calendarAlertsEventIdIndex ON CalendarAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    const-string v0, "CREATE TABLE ExtendedProperties (_id INTEGER PRIMARY KEY,event_id INTEGER,name TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 482
    const-string v0, "CREATE INDEX extendedPropertiesEventIdIndex ON ExtendedProperties (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 490
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;DELETE FROM CalendarSmsAlerts WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createHtcOwnDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 505
    const-string v0, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 508
    return-void
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "feed"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 2759
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2760
    .local v1, pathComponents:[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v4, :cond_0

    const-string v3, "feeds"

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2762
    const/4 v3, 0x5

    :try_start_0
    aget-object v3, v1, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2770
    :goto_0
    return-object v2

    .line 2763
    :catch_0
    move-exception v0

    .line 2764
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to url decode the email address in calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2769
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find the email address in calendar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static copyEventRelatedTables(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 6
    .parameter "db"
    .parameter "newId"
    .parameter "id"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2902
    const-string v0, "INSERT INTO Reminders ( event_id, minutes,method) SELECT ?,minutes,method FROM Reminders WHERE event_id = ?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2909
    const-string v0, "INSERT INTO Attendees (event_id,attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType) SELECT ?,attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType FROM Attendees WHERE event_id = ?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2916
    const-string v0, "INSERT INTO ExtendedProperties (event_id,name,value) SELECT ?, name,value FROM ExtendedProperties WHERE event_id = ?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2923
    return-void
.end method

.method private createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 943
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 946
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 953
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 954
    return-void
.end method

.method private createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 924
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method private createCalendarMetaDataTable59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 933
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method private createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 770
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT, dirty INTEGER, name TEXT,calendar_displayName TEXT,calendar_color INTEGER,calendar_color_index TEXT,calendar_access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1, canPartiallyUpdate INTEGER DEFAULT 0, maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1\', allowedAvailability TEXT DEFAULT \'0,1\',allowedAttendeeTypes TEXT DEFAULT \'0,1,2\',deleted INTEGER NOT NULL DEFAULT 0,cal_sync1 TEXT,cal_sync2 TEXT,cal_sync3 TEXT,cal_sync4 TEXT,cal_sync5 TEXT,cal_sync6 TEXT,cal_sync7 TEXT,cal_sync8 TEXT,cal_sync9 TEXT,cal_sync10 TEXT, displayOrder INTEGER,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ishTCCustomizedCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private createCalendarsTable200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 832
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,name TEXT,displayName TEXT,hidden INTEGER NOT NULL DEFAULT 0,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 860
    return-void
.end method

.method private createCalendarsTable202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,name TEXT,displayName TEXT,displayOrder INTEGER,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 829
    return-void
.end method

.method private createCalendarsTable205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_dirty INTEGER,name TEXT,displayName TEXT,color INTEGER,access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1, maxReminders INTEGER DEFAULT 5,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,sync6 TEXT, displayOrder INTEGER,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 787
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsCleanup200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 788
    return-void
.end method

.method private createCalendarsTable300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,dirty INTEGER,name TEXT,displayName TEXT,calendar_color INTEGER,access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1,2\',deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT,sync6 TEXT, displayOrder INTEGER,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 876
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method private createCalendarsTable303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,dirty INTEGER,name TEXT,displayName TEXT,calendar_color INTEGER,access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1\',deleted INTEGER NOT NULL DEFAULT 0,cal_sync1 TEXT,cal_sync2 TEXT,cal_sync3 TEXT,cal_sync4 TEXT,cal_sync5 TEXT,cal_sync6 TEXT, displayOrder INTEGER,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 892
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method private createCalendarsTable305(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,account_name TEXT,account_type TEXT,_sync_id TEXT,dirty INTEGER,name TEXT,calendar_displayName TEXT,calendar_color INTEGER,calendar_access_level INTEGER,visible INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,calendar_location TEXT,calendar_timezone TEXT,ownerAccount TEXT, canOrganizerRespond INTEGER NOT NULL DEFAULT 1,canModifyTimeZone INTEGER DEFAULT 1,canPartiallyUpdate INTEGER DEFAULT 0,maxReminders INTEGER DEFAULT 5,allowedReminders TEXT DEFAULT \'0,1\',deleted INTEGER NOT NULL DEFAULT 0,cal_sync1 TEXT,cal_sync2 TEXT,cal_sync3 TEXT,cal_sync4 TEXT,cal_sync5 TEXT,cal_sync6 TEXT,cal_sync7 TEXT,cal_sync8 TEXT,cal_sync9 TEXT,cal_sync10 TEXT,displayOrder INTEGER,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ishTCCustomizedCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private createCalendarsTable_HTC_In_Version200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 3239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,name TEXT,displayName TEXT,displayOrder INTEGER,hidden INTEGER,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,hide_declined INTEGER NOT NULL DEFAULT 0,reminder_type INTEGER NOT NULL DEFAULT 1,reminder_duration INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mDefault_reminder_in_customization:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alerts_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3273
    return-void
.end method

.method private createColorsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 513
    const-string v0, "CREATE TABLE Colors (_id INTEGER PRIMARY KEY,account_name TEXT NOT NULL,account_type TEXT NOT NULL,data TEXT,color_type INTEGER NOT NULL,color_index TEXT NOT NULL,color INTEGER NOT NULL, ishTCCustomizedCalendar INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private createEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 629
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY AUTOINCREMENT,_sync_id TEXT, dirty INTEGER, lastSynced INTEGER DEFAULT 0, calendar_id INTEGER NOT NULL,title TEXT,eventLocation TEXT,description TEXT,eventColor INTEGER,eventColor_index TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,accessLevel INTEGER NOT NULL DEFAULT 0,availability INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,original_id INTEGER,original_sync_id TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,eventEndTimezone TEXT,sync_data1 TEXT,sync_data2 TEXT,sync_data3 TEXT,sync_data4 TEXT,sync_data5 TEXT,sync_data6 TEXT,sync_data7 TEXT,sync_data8 TEXT,sync_data9 TEXT,sync_data10 TEXT, importance INTEGER NOT NULL DEFAULT 1,iCalGUID TEXT,last_update_time TEXT,parentID INTEGER,facebook_source_id TEXT,facebook_type TEXT,facebook_avatar_large TEXT,facebook_avatar_small TEXT,facebook_avatar_local TEXT,MeetingStatus INTEGER NOT NULL DEFAULT 0, desc_mime_type INTEGER NOT NULL DEFAULT 0,plaintext_description TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method private createEventsTable300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 899
    :try_start_0
    const-string v1, "CREATE TABLE Events (_id INTEGER PRIMARY KEY,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,dirty INTEGER,_sync_mark INTEGER,calendar_id INTEGER NOT NULL,htmlUri TEXT,title TEXT,eventLocation TEXT,description TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,commentsUri TEXT,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,accessLevel INTEGER NOT NULL DEFAULT 0,availability INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,original_sync_id TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,eventEndTimezone TEXT,sync_data1 TEXT,importance INTEGER NOT NULL DEFAULT 1,iCalGUID TEXT,last_update_time TEXT,parentID INTEGER,facebook_source_id TEXT,facebook_type TEXT,facebook_avatar_large TEXT,facebook_avatar_small TEXT,facebook_avatar_local TEXT,MeetingStatus INTEGER NOT NULL DEFAULT 0,desc_mime_type INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    const-string v1, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEventsTable300 : SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createEventsTable307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 692
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY AUTOINCREMENT,_sync_id TEXT,dirty INTEGER,lastSynced INTEGER DEFAULT 0,calendar_id INTEGER NOT NULL,title TEXT,eventLocation TEXT,description TEXT,eventColor INTEGER,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,accessLevel INTEGER NOT NULL DEFAULT 0,availability INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,original_id INTEGER,original_sync_id TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,eventEndTimezone TEXT,sync_data1 TEXT,sync_data2 TEXT,sync_data3 TEXT,sync_data4 TEXT,sync_data5 TEXT,sync_data6 TEXT,sync_data7 TEXT,sync_data8 TEXT,sync_data9 TEXT,sync_data10 TEXT,importance INTEGER NOT NULL DEFAULT 1,iCalGUID TEXT,last_update_time TEXT,parentID INTEGER,facebook_source_id TEXT,facebook_type TEXT,facebook_avatar_large TEXT,facebook_avatar_small TEXT,facebook_avatar_local TEXT,MeetingStatus INTEGER NOT NULL DEFAULT 0, desc_mime_type INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 764
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method private static createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2657
    const-string v1, "DROP VIEW IF EXISTS view_events;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2658
    const-string v0, "SELECT Events._id AS _id,title,description,eventLocation, eventColor, eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,duration,eventTimezone, eventEndTimezone, allDay, accessLevel,  availability, hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate, original_sync_id,  original_id, originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,calendar_id,guestsCanInviteOthers,guestsCanModify,guestsCanSeeGuests,organizer,sync_data1,sync_data2,sync_data3,sync_data4,sync_data5,sync_data6,sync_data7,sync_data8,sync_data9,sync_data10,Events.deleted AS deleted,Events._sync_id AS _sync_id,Events.dirty AS dirty,lastSynced, account_name AS account_name, account_type AS account_type, calendar_timezone,calendar_displayName, calendar_location, visible, calendar_color, calendar_color_index,calendar_access_level, maxReminders,allowedReminders,allowedAttendeeTypes,allowedAvailability,canOrganizerRespond,canModifyTimeZone,canPartiallyUpdate,cal_sync1,cal_sync2,cal_sync3,cal_sync4,cal_sync5,cal_sync6,cal_sync7,cal_sync8,cal_sync9,cal_sync10,ownerAccount,sync_events,hide_declined,reminder_type,reminder_duration,alerts_vibrate,alerts_ringtone,parentID,importance,iCalGUID,last_update_time,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type FROM Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"

    .line 2746
    .local v0, eventsSelect:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_events AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2747
    return-void
.end method

.method private createHTCeasTrackingTriggers(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .parameter "db"
    .parameter "dropifExist"

    .prologue
    .line 3137
    if-eqz p2, :cond_0

    .line 3138
    const-string v0, "DROP TRIGGER IF EXISTS easTracking_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3139
    const-string v0, "DROP TRIGGER IF EXISTS easTracking_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3140
    const-string v0, "DROP TRIGGER IF EXISTS easTracking_delete2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS easTracking_update AFTER UPDATE OF dirty,title,eventLocation,description, eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,duration,allDay,hasAlarm,importance,rrule,rdate,iCalGUID ON Events WHEN new.calendar_id IN (SELECT _id FROM Calendars WHERE account_type IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->geteasTrackingAccount_SQLStatement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AND new.dirty = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE easTracking SET _modify=1 WHERE _id=new._id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS easTracking_delete  AFTER DELETE ON Events WHEN old.calendar_id IN (SELECT _id FROM Calendars WHERE account_type IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->geteasTrackingAccount_SQLStatement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE easTracking SET _delete=1 WHERE _id=old._id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS easTracking_delete2 AFTER UPDATE OF deleted ON Events WHEN new.calendar_id IN (SELECT _id FROM Calendars WHERE account_type IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->geteasTrackingAccount_SQLStatement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND new.deleted = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE easTracking SET _delete=1 WHERE _id=new._id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3168
    return-void
.end method

.method private createHTCtracking_insertTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .parameter "db"
    .parameter "dropifExist"

    .prologue
    .line 3172
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/SyncConfig;->isPCSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/SyncConfig;->isMyPhoneBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3174
    :cond_0
    if-eqz p2, :cond_1

    .line 3175
    const-string v1, "DROP TRIGGER IF EXISTS tracking_insert"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3180
    :cond_1
    const-string v0, "CREATE TRIGGER IF NOT EXISTS tracking_insert AFTER INSERT ON Events FOR EACH ROW BEGIN "

    .line 3182
    .local v0, trackingStr:Ljava/lang/String;
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INSERT INTO eastracking(_id,_add,accountName) select new._id,1,(SELECT account_name FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE (SELECT account_type FROM Calendars WHERE Calendars._id = new.calendar_id) IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->geteasTrackingAccount_SQLStatement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3187
    :cond_2
    invoke-static {}, Landroid/app/SyncConfig;->isPCSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INSERT INTO pcscTracking(_id,_add) select new._id,1 WHERE new.calendar_id = 1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3189
    :cond_3
    invoke-static {}, Landroid/app/SyncConfig;->isMyPhoneBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INSERT INTO myphonebookTracking(_id,_add) select new._id,1 WHERE new.calendar_id = 5;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3191
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3193
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3197
    .end local v0           #trackingStr:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private createHtcOwnDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 2976
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, ">> createHtcOwnDB "

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2980
    const-string v0, "CREATE TABLE easSyncInfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,synckey STRING, CollID STRING, LastSyncResult INTEGER, LastSyncTime INTEGER, LastSyncErrorCode INTEGER, Enabled INTEGER, accountName STRING NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2992
    const-string v0, "INSERT INTO easSyncInfo (synckey, CollID, LastSyncResult, LastSyncTime, LastSyncErrorCode, Enabled, accountName) VALUES (\'0\', \'0\', \'0\', \'0\', \'0\', \'0\', \'Exchange\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2997
    const-string v0, "CREATE TABLE easTracking(_id INTEGER REFERENCES Events(_id) PRIMARY KEY,serverId STRING ,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 ,accountName STRING);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3006
    const-string v0, "CREATE INDEX easTrackingIndex ON easTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3007
    const-string v0, "CREATE INDEX easTrackingIndex2 ON easTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3008
    const-string v0, "CREATE INDEX easTrackingIndex3 ON easTracking(serverId);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3009
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createHTCeasTrackingTriggers(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3015
    :cond_0
    invoke-static {}, Landroid/app/SyncConfig;->isPCSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3016
    const-string v0, "CREATE TABLE pcscSyncInfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,LastSyncTime INTEGER, NextSyncTime INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3022
    const-string v0, "INSERT INTO pcscSyncInfo (LastSyncTime, NextSyncTime) VALUES (\'0\', \'0\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3025
    const-string v0, "CREATE TABLE pcscTracking(_id INTEGER REFERENCES Events(_id) PRIMARY KEY,_guid STRING NOT NULL DEFAULT \'null\',_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3033
    const-string v0, "CREATE INDEX pcscTrackingIndex ON pcscTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3034
    const-string v0, "CREATE INDEX pcscTrackingIndex2 ON pcscTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3035
    const-string v0, "CREATE TRIGGER IF NOT EXISTS pcscTracking_update AFTER UPDATE OF _sync_dirty,title,eventLocation,description,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,duration,allDay,hasAlarm,importance,rrule,rdate,iCalGUID ON Events WHEN new.calendar_id = 1 AND new.dirty = 1 BEGIN UPDATE pcscTracking SET _modify=1 WHERE _id=new._id; UPDATE Events SET last_update_time=current_timestamp WHERE _id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3046
    const-string v0, "CREATE TRIGGER IF NOT EXISTS pcscTracking_delete AFTER DELETE ON Events WHEN old.calendar_id = 1 BEGIN UPDATE pcscTracking SET _delete=1 WHERE _id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3055
    :cond_1
    invoke-static {}, Landroid/app/SyncConfig;->isMyPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3056
    const-string v0, "CREATE TABLE myphonebookTracking(_id INTEGER REFERENCES Events(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3063
    const-string v0, "CREATE INDEX myphonebookTrackingIndex ON myphonebookTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3064
    const-string v0, "CREATE INDEX myphonebookTrackingIndex2 ON myphonebookTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3065
    const-string v0, "CREATE TRIGGER IF NOT EXISTS myphonebookTracking_update AFTER UPDATE OF _sync_dirty,title,eventLocation,description,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,duration,allDay,hasAlarm,importance,rrule,rdate,iCalGUID ON Events WHEN new.calendar_id = 5 AND new.dirty = 1 BEGIN UPDATE myphonebookTracking SET _modify=1 WHERE _id=new._id; UPDATE Events SET last_update_time=current_timestamp WHERE _id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3076
    const-string v0, "CREATE TRIGGER IF NOT EXISTS myphonebookTracking_delete AFTER DELETE ON Events WHEN old.calendar_id = 5 BEGIN UPDATE myphonebookTracking SET _delete=1 WHERE _id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3084
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createHTCtracking_insertTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3088
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3090
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->insertPCSCalendar(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3094
    :cond_3
    invoke-static {}, Landroid/app/SyncConfig;->isMyPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3099
    :cond_4
    const-string v0, "CREATE TABLE CalendarSmsAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL,receivedTime INTEGER NOT NULL,notifyTime INTEGER NOT NULL,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3113
    const-string v0, "CREATE INDEX calendarSmsAlertsEventIdIndex ON CalendarSmsAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3116
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "<< createHtcOwnDB "

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2605
    const-string v0, "DROP TABLE IF EXISTS Colors;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2606
    const-string v0, "DROP TABLE IF EXISTS Calendars;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2607
    const-string v0, "DROP TABLE IF EXISTS Events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2608
    const-string v0, "DROP TABLE IF EXISTS EventsRawTimes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2609
    const-string v0, "DROP TABLE IF EXISTS Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2610
    const-string v0, "DROP TABLE IF EXISTS CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2611
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2612
    const-string v0, "DROP TABLE IF EXISTS Attendees;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2613
    const-string v0, "DROP TABLE IF EXISTS Reminders;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2614
    const-string v0, "DROP TABLE IF EXISTS CalendarAlerts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2615
    const-string v0, "DROP TABLE IF EXISTS ExtendedProperties;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2616
    const-string v0, "DROP TABLE IF EXISTS easSyncInfo;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2617
    const-string v0, "DROP TABLE IF EXISTS easTracking;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2618
    const-string v0, "DROP TABLE IF EXISTS pcscSyncInfo;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2619
    const-string v0, "DROP TABLE IF EXISTS pcscTracking;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2620
    const-string v0, "DROP TABLE IF EXISTS myphonebookTracking;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2621
    const-string v0, "DROP TABLE IF EXISTS CalendarSmsAlerts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2623
    return-void
.end method

.method private static fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3
    .parameter "time"
    .parameter "timezone"
    .parameter "timeInMillis"

    .prologue
    const/4 v0, 0x0

    .line 1340
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1341
    iget v1, p0, Landroid/text/format/Time;->hour:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/text/format/Time;->minute:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/text/format/Time;->second:I

    if-eqz v1, :cond_1

    .line 1342
    :cond_0
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1343
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1344
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1345
    const/4 v0, 0x1

    .line 1347
    :cond_1
    return v0
.end method

.method private static getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 2790
    if-nez p0, :cond_1

    .line 2791
    const-string v1, "CalendarDatabaseHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2792
    const-string v1, "CalendarDatabaseHelper"

    const-string v2, "Cannot get AllCalendars url from a NULL url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_0
    :goto_0
    return-object v0

    .line 2796
    :cond_1
    const-string v1, "/private/full"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2797
    const-string v0, "/private/full"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2800
    :cond_2
    const-string v1, "/private/free-busy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2801
    const-string v0, "/private/free-busy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2805
    :cond_3
    const-string v1, "CalendarDatabaseHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2806
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get AllCalendars url from the following url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 2826
    invoke-static {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 293
    const-class v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 296
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 2817
    invoke-static {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSenseVersion()F
    .locals 5

    .prologue
    .line 3227
    const/high16 v2, 0x4000

    .line 3229
    .local v2, version:F
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    .line 3231
    .local v0, currVer:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3235
    :goto_0
    return v2

    .line 3232
    :catch_0
    move-exception v1

    .line 3233
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CalendarDatabaseHelper"

    const-string v4, "getSenseVersion error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private geteasTrackingAccount_SQLStatement()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3122
    const-string v1, " ( "

    .line 3123
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v2, Lcom/android/providers/calendar/CalendarDatabaseHelper;->easTracking_accounts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3124
    sget-object v2, Lcom/android/providers/calendar/CalendarDatabaseHelper;->easTracking_accounts:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 3125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/calendar/CalendarDatabaseHelper;->easTracking_accounts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3128
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/calendar/CalendarDatabaseHelper;->easTracking_accounts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3130
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3131
    return-object v1
.end method

.method private initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 957
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 961
    .local v0, timezoneDbVersion:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    return-void

    .line 957
    .end local v0           #timezoneDbVersion:Ljava/lang/String;
    :cond_0
    const-string v0, "2009s"

    goto :goto_0
.end method

.method private initCalendarCacheTable203(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 1006
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 1010
    .local v0, timezoneDbVersion:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneDatabaseVersion\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    return-void

    .line 1006
    .end local v0           #timezoneDbVersion:Ljava/lang/String;
    :cond_0
    const-string v0, "2009s"

    goto :goto_0
.end method

.method private insertPCSCalendar(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3200
    const-string v2, "CalendarDatabaseHelper"

    const-string v3, ">> insert PCSC Calendar"

    invoke-static {v2, v3}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3203
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3205
    .local v0, displayName:Ljava/lang/String;
    const-string v2, "calendar_displayName"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    const-string v2, "sync_events"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3208
    const-string v2, "visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3210
    const-string v2, "calendar_color"

    const v3, -0xf287ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3213
    const-string v2, "calendar_timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v2, "calendar_access_level"

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3215
    const-string v2, "ownerAccount"

    const-string v3, "Outlook"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    const-string v2, "canOrganizerRespond"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3217
    const-string v2, "account_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    const-string v2, "account_type"

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v2, "displayOrder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3221
    const-string v2, "ishTCCustomizedCalendar"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3222
    const-string v2, "Calendars"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3223
    const-string v2, "CalendarDatabaseHelper"

    const-string v3, "<< insert PCSC Calendar"

    invoke-static {v2, v3}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    return-void
.end method

.method private recreateMetaDataAndInstances67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1332
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1336
    const-string v0, "DELETE FROM Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method private static rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 2835
    if-nez p0, :cond_2

    .line 2836
    const-string v0, "CalendarDatabaseHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2837
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Cannot rewrite a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    :cond_0
    const/4 p0, 0x0

    .line 2847
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 2841
    .restart local p0
    :cond_2
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2844
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid url parameter, unknown scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2847
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private updateCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 982
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, defaultTimezone:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method private updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneType\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'auto\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, defaultTimezone:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneInstances\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'timezoneInstancesPrevious\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    return-void
.end method

.method private upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 2454
    const-string v5, "DELETE FROM _sync_state;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2457
    const-string v5, "SELECT _sync_account,_sync_account_type,url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2460
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 2462
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2463
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2464
    .local v1, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2465
    .local v2, accountType:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    .local v0, account:Landroid/accounts/Account;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2467
    .local v3, calendarUrl:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2470
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #calendarUrl:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2473
    :cond_1
    return-void
.end method

.method private upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 352
    const-string v2, "SELECT version FROM _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 356
    .local v0, version:J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 357
    const-string v2, "CalendarDatabaseHelper"

    const-string v3, "Upgrading calendar sync state table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v2, "CREATE TEMPORARY TABLE state_backup(_sync_account TEXT, _sync_account_type TEXT, data TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 360
    const-string v2, "INSERT INTO state_backup SELECT _sync_account, _sync_account_type, data FROM _sync_state WHERE _sync_account is not NULL and _sync_account_type is not NULL;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v2, "DROP TABLE _sync_state;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 366
    const-string v2, "INSERT INTO _sync_state(account_name,account_type,data) SELECT _sync_account, _sync_account_type, data from state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 371
    const-string v2, "DROP TABLE state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeSyncState: current version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping upgrade."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeToHtcDB_Gingerbread_to_Honeycomb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 3298
    const-string v8, "ALTER TABLE Calendars RENAME TO Calendars_Backup ;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3301
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable_HTC_In_Version200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3304
    const-string v8, "INSERT INTO Calendars (_id,_sync_account,_sync_account_type,_sync_id,_sync_version,_sync_time,_sync_local_id,_sync_dirty,_sync_mark,sync1,name,displayName,displayOrder,color,access_level,selected,sync_events,location,timezone,ownerAccount,organizerCanRespond,deleted,hide_declined,reminder_type,reminder_duration,alerts_vibrate,alerts_ringtone) SELECT _id,_sync_account,_sync_account_type,_sync_id,_sync_version,_sync_time,_sync_local_id,_sync_dirty,_sync_mark,url,name,displayName,displayOrder,color,access_level,selected,sync_events,location,timezone,ownerAccount,organizerCanRespond,0,hide_declined,reminder_type,reminder_duration,alerts_vibrate,alerts_ringtone FROM Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3364
    const-string v4, "SELECT _id, url FROM Calendars_Backup WHERE _sync_account_type=\'com.google\' AND url IS NOT NULL;"

    .line 3369
    .local v4, selectSql:Ljava/lang/String;
    const-string v6, "UPDATE Calendars SET sync2=?, sync3=? WHERE _id=?;"

    .line 3374
    .local v6, updateSql:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3375
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 3377
    const/4 v8, 0x3

    :try_start_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 3379
    .local v0, bindArgs:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3380
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3381
    .local v3, id:Ljava/lang/Long;
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3382
    .local v7, url:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3383
    .local v5, selfUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3385
    .local v2, editUrl:Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v2, v0, v8

    .line 3386
    const/4 v8, 0x1

    aput-object v5, v0, v8

    .line 3388
    const/4 v8, 0x2

    aput-object v3, v0, v8

    .line 3390
    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3393
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v2           #editUrl:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/Long;
    .end local v5           #selfUrl:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v0       #bindArgs:[Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3398
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :cond_1
    const-string v8, "DROP TABLE IF EXISTS Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3400
    return-void
.end method

.method private upgradeToHtcDB_version_102(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 3280
    const-string v1, "CalendarDatabaseHelper"

    const-string v2, "Upgrading Events table (desc_mime_type)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :try_start_0
    const-string v1, "ALTER TABLE Events ADD COLUMN desc_mime_type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3284
    const-string v1, "CalendarDatabaseHelper"

    const-string v2, "add desc_mime_type column to Events table"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3288
    :goto_0
    return-void

    .line 3285
    :catch_0
    move-exception v0

    .line 3286
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarDatabaseHelper"

    const-string v2, "the column of desc_mime_type already exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeToVersion102(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3276
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToHtcDB_version_102(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3277
    return-void
.end method

.method private upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2583
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading DeletedEvents table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN calendar_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2594
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2595
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2601
    const-string v0, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2602
    return-void
.end method

.method private upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 2523
    const-string v6, "ALTER TABLE Events ADD COLUMN originalAllDay INTEGER;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2542
    const-string v6, "SELECT _id,originalEvent FROM Events WHERE originalEvent IS NOT NULL"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2547
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 2549
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2550
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2551
    .local v2, id:J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2554
    .local v4, originalEvent:Ljava/lang/String;
    const-string v6, "SELECT allDay FROM Events WHERE _sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 2558
    .local v5, recur:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    .line 2566
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2567
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2568
    .local v0, allDay:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE Events SET originalAllDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2573
    .end local v0           #allDay:I
    :cond_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2577
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 2573
    .restart local v2       #id:J
    .restart local v4       #originalEvent:Ljava/lang/String;
    .restart local v5       #recur:Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2577
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2580
    :cond_3
    return-void
.end method

.method private upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2507
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading CalendarAlerts table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN creationTime INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2510
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN receivedTime INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2512
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN notifyTime INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2514
    return-void
.end method

.method private upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2501
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "adding eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2504
    return-void
.end method

.method private upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2478
    const-string v0, "ALTER TABLE Calendars ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2480
    const-string v0, "ALTER TABLE Events ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2482
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2483
    const-string v0, "UPDATE Calendars SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2486
    const-string v0, "UPDATE Events SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2489
    const-string v0, "UPDATE DeletedEvents SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2492
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "re-creating eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const-string v0, "DROP INDEX eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2494
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2498
    return-void
.end method

.method private upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 2407
    const-string v5, "ALTER TABLE Calendars ADD COLUMN ownerAccount TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2409
    const-string v5, "ALTER TABLE Events ADD COLUMN hasAttendeeData INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2416
    const-string v5, "UPDATE Events SET _sync_dirty=0, _sync_version=NULL, _sync_id=REPLACE(_sync_id, \'/private/full-selfattendance\', \'/private/full\'),commentsUri=REPLACE(commentsUri, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2426
    const-string v5, "UPDATE Calendars SET url=REPLACE(url, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2431
    const-string v5, "SELECT _id, url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2435
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2437
    :try_start_0
    const-string v3, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    .line 2440
    .local v3, updateSql:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2441
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2442
    .local v1, id:Ljava/lang/Long;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2443
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2444
    .local v2, owner:Ljava/lang/String;
    const-string v5, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2447
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #owner:Ljava/lang/String;
    .end local v3           #updateSql:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v3       #updateSql:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2450
    .end local v3           #updateSql:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2384
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanModify INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2387
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2390
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2393
    const-string v0, "ALTER TABLE Events ADD COLUMN organizer STRING;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2396
    const-string v0, "UPDATE Events SET organizer=(SELECT attendeeEmail FROM Attendees WHERE Attendees.event_id=Events._id AND Attendees.attendeeRelationship=2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2404
    return-void
.end method

.method private upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2357
    const-string v0, "DROP TABLE IF EXISTS BusyBits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2358
    const-string v0, "CREATE TEMPORARY TABLE CalendarMetaData_Backup(_id,localTimezone,minInstance,maxInstance);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2364
    const-string v0, "INSERT INTO CalendarMetaData_Backup SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2371
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2372
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2373
    const-string v0, "INSERT INTO CalendarMetaData SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2380
    const-string v0, "DROP TABLE CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2381
    return-void
.end method

.method private upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2305
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2306
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2307
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2312
    const-string v0, "ALTER TABLE Events ADD COLUMN deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2314
    const-string v0, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2316
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account= (SELECT _sync_account FROM Calendars WHERE Calendars._id=new.calendar_id),_sync_account_type= (SELECT _sync_account_type FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2327
    const-string v0, "DROP TABLE IF EXISTS DeletedEvents;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2328
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2330
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2345
    const-string v0, "DROP TRIGGER IF EXISTS attendees_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2346
    const-string v0, "DROP TRIGGER IF EXISTS attendees_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2347
    const-string v0, "DROP TRIGGER IF EXISTS attendees_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2348
    const-string v0, "DROP TRIGGER IF EXISTS reminders_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2349
    const-string v0, "DROP TRIGGER IF EXISTS reminders_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2350
    const-string v0, "DROP TRIGGER IF EXISTS reminders_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2351
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2352
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2353
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2354
    return-void
.end method

.method private upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2286
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2289
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2295
    const-string v0, "INSERT INTO CalendarCache (key, value) VALUES (\'timezoneDatabaseVersion\',\'2009s\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2301
    return-void
.end method

.method private upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .parameter "db"

    .prologue
    .line 2206
    const-string v14, "ALTER TABLE Events ADD COLUMN dtstart2 INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2208
    const-string v14, "ALTER TABLE Events ADD COLUMN dtend2 INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2210
    const-string v14, "ALTER TABLE Events ADD COLUMN eventTimezone2 TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2213
    const/4 v14, 0x1

    new-array v1, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v1, v14

    .line 2215
    .local v1, allDayBit:[Ljava/lang/String;
    const-string v14, "UPDATE Events SET dtstart2=dtstart,dtend2=dtend,eventTimezone2=eventTimezone WHERE allDay=?;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    const/4 v14, 0x0

    const-string v15, "1"

    aput-object v15, v1, v14

    .line 2224
    const-string v14, "SELECT Events._id,dtstart,dtend,eventTimezone,timezone FROM Events INNER JOIN Calendars WHERE Events.calendar_id=Calendars._id AND allDay=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2234
    .local v2, cursor:Landroid/database/Cursor;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 2235
    .local v12, oldTime:Landroid/text/format/Time;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 2237
    .local v11, newTime:Landroid/text/format/Time;
    if-eqz v2, :cond_2

    .line 2239
    const/4 v14, 0x4

    :try_start_0
    new-array v10, v14, [Ljava/lang/String;

    .line 2240
    .local v10, newData:[Ljava/lang/String;
    const/4 v14, -0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2241
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2242
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2243
    .local v8, id:J
    const/4 v14, 0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2244
    .local v5, dtstart:J
    const/4 v14, 0x2

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2245
    .local v3, dtend:J
    const/4 v14, 0x3

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2246
    .local v7, eTz:Ljava/lang/String;
    const/4 v14, 0x4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2248
    .local v13, tz:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2249
    const-string v7, "UTC"

    .line 2253
    :cond_0
    invoke-virtual {v12, v7}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {v12, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 2255
    invoke-virtual {v11, v13}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2256
    iget v14, v12, Landroid/text/format/Time;->monthDay:I

    iget v15, v12, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/text/format/Time;->set(III)V

    .line 2257
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 2258
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 2261
    invoke-virtual {v12, v7}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {v12, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2263
    invoke-virtual {v11, v13}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2264
    iget v14, v12, Landroid/text/format/Time;->monthDay:I

    iget v15, v12, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/text/format/Time;->set(III)V

    .line 2265
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 2266
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 2268
    const/4 v14, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2269
    const/4 v14, 0x1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2270
    const/4 v14, 0x2

    aput-object v13, v10, v14

    .line 2271
    const/4 v14, 0x3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2272
    const-string v14, "UPDATE Events SET dtstart2=?, dtend2=?, eventTimezone2=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2280
    .end local v3           #dtend:J
    .end local v5           #dtstart:J
    .end local v7           #eTz:Ljava/lang/String;
    .end local v8           #id:J
    .end local v10           #newData:[Ljava/lang/String;
    .end local v13           #tz:Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v14

    .restart local v10       #newData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2283
    .end local v10           #newData:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2200
    const-string v0, "ALTER TABLE Events ADD COLUMN syncAdapterData TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2202
    return-void
.end method

.method private upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2194
    const-string v0, "ALTER TABLE Calendars ADD COLUMN organizerCanRespond INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2196
    return-void
.end method

.method static upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 24
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2022
    const-string v14, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    .line 2033
    .local v14, sql:Ljava/lang/String;
    const-string v20, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "1"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2034
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_d

    .line 2043
    :try_start_0
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 2046
    .local v15, time:Landroid/text/format/Time;
    const-string v19, "UTC"

    .line 2047
    .local v19, utc:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 2048
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2049
    .local v12, rrule:Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2050
    .local v10, id:Ljava/lang/Long;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2051
    .local v7, dtstart:Ljava/lang/Long;
    const/4 v8, 0x0

    .line 2052
    .local v8, dtstart2:Ljava/lang/Long;
    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2053
    .local v16, timezone:Ljava/lang/String;
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2054
    .local v17, timezone2:Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2056
    .local v9, duration:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2059
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2060
    .local v5, dtend:Ljava/lang/Long;
    const/4 v6, 0x0

    .line 2063
    .local v6, dtend2:Ljava/lang/Long;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 2064
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2065
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2068
    :cond_1
    const/16 v18, 0x0

    .line 2069
    .local v18, update:Z
    const-string v20, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 2070
    const/16 v18, 0x1

    .line 2071
    const-string v16, "UTC"

    .line 2074
    :cond_2
    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2075
    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2076
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2078
    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2079
    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2080
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2082
    if-eqz v8, :cond_3

    .line 2083
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, v17

    invoke-static {v15, v0, v8}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2085
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2088
    :cond_3
    if-eqz v6, :cond_4

    .line 2089
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2090
    move-object/from16 v0, v17

    invoke-static {v15, v0, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2091
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2094
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2095
    const/16 v18, 0x1

    .line 2098
    :cond_5
    if-eqz v18, :cond_0

    .line 2100
    const-string v20, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?, eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v5, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    const/16 v22, 0x3

    aput-object v6, v21, v22

    const/16 v22, 0x4

    const/16 v23, 0x0

    aput-object v23, v21, v22

    const/16 v22, 0x5

    aput-object v16, v21, v22

    const/16 v22, 0x6

    aput-object v17, v21, v22

    const/16 v22, 0x7

    aput-object v10, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2186
    .end local v5           #dtend:Ljava/lang/Long;
    .end local v6           #dtend2:Ljava/lang/Long;
    .end local v7           #dtstart:Ljava/lang/Long;
    .end local v8           #dtstart2:Ljava/lang/Long;
    .end local v9           #duration:Ljava/lang/String;
    .end local v10           #id:Ljava/lang/Long;
    .end local v12           #rrule:Ljava/lang/String;
    .end local v15           #time:Landroid/text/format/Time;
    .end local v16           #timezone:Ljava/lang/String;
    .end local v17           #timezone2:Ljava/lang/String;
    .end local v18           #update:Z
    .end local v19           #utc:Ljava/lang/String;
    :catchall_0
    move-exception v20

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v20

    .line 2125
    .restart local v7       #dtstart:Ljava/lang/Long;
    .restart local v8       #dtstart2:Ljava/lang/Long;
    .restart local v9       #duration:Ljava/lang/String;
    .restart local v10       #id:Ljava/lang/Long;
    .restart local v12       #rrule:Ljava/lang/String;
    .restart local v15       #time:Landroid/text/format/Time;
    .restart local v16       #timezone:Ljava/lang/String;
    .restart local v17       #timezone2:Ljava/lang/String;
    .restart local v19       #utc:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 2126
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2129
    :cond_7
    const/16 v18, 0x0

    .line 2130
    .restart local v18       #update:Z
    const-string v20, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 2131
    const/16 v18, 0x1

    .line 2132
    const-string v16, "UTC"

    .line 2135
    :cond_8
    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2136
    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2137
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2139
    if-eqz v8, :cond_9

    .line 2140
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 2141
    move-object/from16 v0, v17

    invoke-static {v15, v0, v8}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v20

    or-int v18, v18, v20

    .line 2142
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2145
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 2147
    const-string v9, "P1D"

    .line 2148
    const/16 v18, 0x1

    .line 2161
    :cond_a
    :goto_1
    if-eqz v18, :cond_0

    .line 2163
    const-string v20, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?,eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x0

    aput-object v23, v21, v22

    const/16 v22, 0x4

    aput-object v9, v21, v22

    const/16 v22, 0x5

    aput-object v16, v21, v22

    const/16 v22, 0x6

    aput-object v17, v21, v22

    const/16 v22, 0x7

    aput-object v10, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2150
    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 2152
    .local v11, len:I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x50

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x53

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 2154
    const/16 v20, 0x1

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2155
    .local v13, seconds:I
    const v20, 0x15180

    add-int v20, v20, v13

    add-int/lit8 v20, v20, -0x1

    const v21, 0x15180

    div-int v4, v20, v21

    .line 2156
    .local v4, days:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "P"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "D"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 2157
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2186
    .end local v4           #days:I
    .end local v7           #dtstart:Ljava/lang/Long;
    .end local v8           #dtstart2:Ljava/lang/Long;
    .end local v9           #duration:Ljava/lang/String;
    .end local v10           #id:Ljava/lang/Long;
    .end local v11           #len:I
    .end local v12           #rrule:Ljava/lang/String;
    .end local v13           #seconds:I
    .end local v16           #timezone:Ljava/lang/String;
    .end local v17           #timezone2:Ljava/lang/String;
    .end local v18           #update:Z
    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2189
    .end local v15           #time:Landroid/text/format/Time;
    .end local v19           #utc:Ljava/lang/String;
    :cond_d
    return-void
.end method


# virtual methods
.method public attendeesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarAlertsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarSmsAlertsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarSmsAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public colorsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mColorsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createColorsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 526
    const-string v0, "CREATE TRIGGER event_color_update UPDATE OF eventColor_index ON Events WHEN new.eventColor_index NOT NULL BEGIN UPDATE Events SET eventColor=(SELECT color FROM Colors WHERE account_name=(SELECT account_name FROM Calendars WHERE _id=new.calendar_id) AND account_type=(SELECT account_type FROM Calendars WHERE _id=new.calendar_id) AND color_index=new.eventColor_index)  WHERE _id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 527
    const-string v0, "CREATE TRIGGER calendar_color_update UPDATE OF calendar_color_index ON Calendars WHEN new.calendar_color_index NOT NULL BEGIN UPDATE Calendars SET calendar_color=(SELECT color FROM Colors WHERE account_name=new.account_name AND account_type=new.account_type AND color_index=new.calendar_color_index)  WHERE _id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method protected duplicateEvent(J)V
    .locals 13
    .parameter "id"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2860
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2861
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT canPartiallyUpdate FROM view_events WHERE _id = ?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 2866
    .local v0, canPartiallyUpdate:J
    cmp-long v5, v0, v11

    if-nez v5, :cond_1

    .line 2891
    :cond_0
    :goto_0
    return-void

    .line 2870
    :cond_1
    const-string v5, "INSERT INTO Events  (_sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer,dirty,lastSynced) SELECT _sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer, 0, 1 FROM Events WHERE _id = ? AND dirty = ?"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2880
    const-string v5, "SELECT CASE changes() WHEN 0 THEN -1 ELSE last_insert_rowid() END"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 2882
    .local v3, newId:J
    cmp-long v5, v3, v11

    if-ltz v5, :cond_0

    .line 2886
    const-string v5, "CalendarDatabaseHelper"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2887
    const-string v5, "CalendarDatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicating event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into new event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :cond_2
    invoke-static {v2, v3, v4, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->copyEventRelatedTables(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    goto :goto_0
.end method

.method public easSyncInfoInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEasSyncInfoInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public extendedPropertiesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 2627
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2628
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 2627
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public instancesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public instancesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 321
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Calendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 322
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Colors"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mColorsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 323
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Events"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 324
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "EventsRawTimes"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 325
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Instances"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 326
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Attendees"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 327
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Reminders"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 328
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 329
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ExtendedProperties"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 333
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "easSyncInfo"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEasSyncInfoInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 334
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarSmsAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarSmsAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 336
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1050
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Upgrading DB from version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 1053
    .local v7, startWhen:J
    const/16 v9, 0x31

    move/from16 v0, p2

    if-ge v0, v9, :cond_0

    .line 1054
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1055
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1324
    :goto_0
    return-void

    .line 1065
    :cond_0
    const/16 v9, 0x3b

    move/from16 v0, p2

    if-lt v0, v9, :cond_2e

    const/16 v9, 0x42

    move/from16 v0, p2

    if-gt v0, v9, :cond_2e

    const/4 v6, 0x1

    .line 1067
    .local v6, recreateMetaDataAndInstances:Z
    :goto_1
    const/4 v1, 0x0

    .line 1070
    .local v1, createEventsView:Z
    const/16 v9, 0x33

    move/from16 v0, p2

    if-ge v0, v9, :cond_1

    .line 1071
    :try_start_0
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion51"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1073
    const/16 p2, 0x33

    .line 1075
    :cond_1
    const/16 v9, 0x33

    move/from16 v0, p2

    if-ne v0, v9, :cond_2

    .line 1076
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion52"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1078
    add-int/lit8 p2, p2, 0x1

    .line 1080
    :cond_2
    const/16 v9, 0x34

    move/from16 v0, p2

    if-ne v0, v9, :cond_3

    .line 1081
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion53"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1083
    add-int/lit8 p2, p2, 0x1

    .line 1085
    :cond_3
    const/16 v9, 0x35

    move/from16 v0, p2

    if-ne v0, v9, :cond_4

    .line 1086
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion54"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1088
    add-int/lit8 p2, p2, 0x1

    .line 1090
    :cond_4
    const/16 v9, 0x36

    move/from16 v0, p2

    if-ne v0, v9, :cond_5

    .line 1091
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion55"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1093
    add-int/lit8 p2, p2, 0x1

    .line 1095
    :cond_5
    const/16 v9, 0x37

    move/from16 v0, p2

    if-eq v0, v9, :cond_6

    const/16 v9, 0x38

    move/from16 v0, p2

    if-ne v0, v9, :cond_7

    .line 1096
    :cond_6
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeResync 55 or 56"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1100
    :cond_7
    const/16 v9, 0x37

    move/from16 v0, p2

    if-ne v0, v9, :cond_8

    .line 1101
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion56"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1103
    add-int/lit8 p2, p2, 0x1

    .line 1105
    :cond_8
    const/16 v9, 0x38

    move/from16 v0, p2

    if-ne v0, v9, :cond_9

    .line 1106
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion57"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1108
    add-int/lit8 p2, p2, 0x1

    .line 1110
    :cond_9
    const/16 v9, 0x39

    move/from16 v0, p2

    if-ne v0, v9, :cond_a

    .line 1112
    add-int/lit8 p2, p2, 0x1

    .line 1114
    :cond_a
    const/16 v9, 0x3a

    move/from16 v0, p2

    if-ne v0, v9, :cond_b

    .line 1115
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion59"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1117
    add-int/lit8 p2, p2, 0x1

    .line 1119
    :cond_b
    const/16 v9, 0x3b

    move/from16 v0, p2

    if-ne v0, v9, :cond_c

    .line 1120
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion60"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1122
    const/4 v1, 0x1

    .line 1123
    add-int/lit8 p2, p2, 0x1

    .line 1125
    :cond_c
    const/16 v9, 0x3c

    move/from16 v0, p2

    if-ne v0, v9, :cond_d

    .line 1126
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion61"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1128
    add-int/lit8 p2, p2, 0x1

    .line 1130
    :cond_d
    const/16 v9, 0x3d

    move/from16 v0, p2

    if-ne v0, v9, :cond_e

    .line 1131
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion62"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1133
    add-int/lit8 p2, p2, 0x1

    .line 1135
    :cond_e
    const/16 v9, 0x3e

    move/from16 v0, p2

    if-ne v0, v9, :cond_f

    .line 1136
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion63"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const/4 v1, 0x1

    .line 1138
    add-int/lit8 p2, p2, 0x1

    .line 1140
    :cond_f
    const/16 v9, 0x3f

    move/from16 v0, p2

    if-ne v0, v9, :cond_10

    .line 1141
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion64"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1143
    add-int/lit8 p2, p2, 0x1

    .line 1145
    :cond_10
    const/16 v9, 0x40

    move/from16 v0, p2

    if-ne v0, v9, :cond_11

    .line 1146
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion65"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v1, 0x1

    .line 1148
    add-int/lit8 p2, p2, 0x1

    .line 1150
    :cond_11
    const/16 v9, 0x41

    move/from16 v0, p2

    if-ne v0, v9, :cond_12

    .line 1151
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion66"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1153
    add-int/lit8 p2, p2, 0x1

    .line 1155
    :cond_12
    const/16 v9, 0x42

    move/from16 v0, p2

    if-ne v0, v9, :cond_13

    .line 1157
    add-int/lit8 p2, p2, 0x1

    .line 1159
    :cond_13
    if-eqz v6, :cond_14

    .line 1160
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->recreateMetaDataAndInstances67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1162
    :cond_14
    const/16 v9, 0x43

    move/from16 v0, p2

    if-eq v0, v9, :cond_15

    const/16 v9, 0x44

    move/from16 v0, p2

    if-ne v0, v9, :cond_16

    .line 1163
    :cond_15
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion69"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1165
    const/16 p2, 0x45

    .line 1171
    :cond_16
    const/16 v9, 0x45

    move/from16 v0, p2

    if-ne v0, v9, :cond_17

    .line 1172
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion200"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1174
    const/4 v1, 0x1

    .line 1175
    const/16 p2, 0xc8

    .line 1177
    :cond_17
    const/16 v9, 0x46

    move/from16 v0, p2

    if-ne v0, v9, :cond_18

    .line 1178
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion200"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1180
    const/16 p2, 0xc8

    .line 1182
    :cond_18
    const/16 v9, 0x64

    move/from16 v0, p2

    if-ne v0, v9, :cond_19

    .line 1183
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion200"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1185
    const/16 p2, 0xc8

    .line 1187
    :cond_19
    const/4 v5, 0x1

    .line 1188
    .local v5, need203Update:Z
    const/16 v9, 0x65

    move/from16 v0, p2

    if-eq v0, v9, :cond_1a

    const/16 v9, 0x66

    move/from16 v0, p2

    if-ne v0, v9, :cond_1b

    .line 1189
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion102(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1190
    const/16 p2, 0xc8

    .line 1193
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToHtcDB_Gingerbread_to_Honeycomb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1199
    :cond_1b
    :goto_2
    const/16 v9, 0xc8

    move/from16 v0, p2

    if-ne v0, v9, :cond_1c

    .line 1200
    :try_start_2
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion201"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion201(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1202
    add-int/lit8 p2, p2, 0x1

    .line 1204
    :cond_1c
    const/16 v9, 0xc9

    move/from16 v0, p2

    if-ne v0, v9, :cond_1d

    .line 1205
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion202"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1207
    add-int/lit8 p2, p2, 0x1

    .line 1208
    const/4 v1, 0x1

    .line 1210
    :cond_1d
    const/16 v9, 0xca

    move/from16 v0, p2

    if-ne v0, v9, :cond_1e

    if-eqz v5, :cond_1e

    .line 1211
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion203"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1213
    add-int/lit8 p2, p2, 0x1

    .line 1215
    :cond_1e
    const/16 v9, 0xcb

    move/from16 v0, p2

    if-ne v0, v9, :cond_1f

    .line 1216
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion204"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion204(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1218
    add-int/lit8 p2, p2, 0x1

    .line 1219
    const/4 v1, 0x1

    .line 1222
    :cond_1f
    const/16 v9, 0xce

    move/from16 v0, p2

    if-ne v0, v9, :cond_20

    .line 1225
    add-int/lit8 p2, p2, -0x2

    .line 1228
    :cond_20
    const/16 v9, 0xcc

    move/from16 v0, p2

    if-ne v0, v9, :cond_21

    .line 1230
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion205"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1232
    const/4 v1, 0x1

    .line 1233
    add-int/lit8 p2, p2, 0x1

    .line 1235
    :cond_21
    const/16 v9, 0xcd

    move/from16 v0, p2

    if-ne v0, v9, :cond_22

    .line 1237
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion300"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1239
    const/4 v1, 0x1

    .line 1240
    const/16 p2, 0x12c

    .line 1242
    :cond_22
    const/16 v9, 0x12c

    move/from16 v0, p2

    if-ne v0, v9, :cond_23

    .line 1244
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion301"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion301(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1246
    const/4 v1, 0x1

    .line 1247
    add-int/lit8 p2, p2, 0x1

    .line 1249
    :cond_23
    const/16 v9, 0x12d

    move/from16 v0, p2

    if-ne v0, v9, :cond_24

    .line 1251
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion302"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion302(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1253
    add-int/lit8 p2, p2, 0x1

    .line 1255
    :cond_24
    const/16 v9, 0x12e

    move/from16 v0, p2

    if-ne v0, v9, :cond_25

    .line 1257
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion303"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1259
    add-int/lit8 p2, p2, 0x1

    .line 1260
    const/4 v1, 0x1

    .line 1262
    :cond_25
    const/16 v9, 0x12f

    move/from16 v0, p2

    if-ne v0, v9, :cond_26

    .line 1264
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion304"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1266
    add-int/lit8 p2, p2, 0x1

    .line 1267
    const/4 v1, 0x1

    .line 1269
    :cond_26
    const/16 v9, 0x130

    move/from16 v0, p2

    if-ne v0, v9, :cond_27

    .line 1271
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion305"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion305(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1273
    add-int/lit8 p2, p2, 0x1

    .line 1274
    const/4 v1, 0x1

    .line 1276
    :cond_27
    const/16 v9, 0x131

    move/from16 v0, p2

    if-ne v0, v9, :cond_28

    .line 1278
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion306"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1280
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 1281
    add-int/lit8 p2, p2, 0x1

    .line 1283
    :cond_28
    const/16 v9, 0x132

    move/from16 v0, p2

    if-ne v0, v9, :cond_29

    .line 1285
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion307"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1287
    add-int/lit8 p2, p2, 0x1

    .line 1290
    :cond_29
    const/16 v9, 0x133

    move/from16 v0, p2

    if-ne v0, v9, :cond_2a

    .line 1291
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion308"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1293
    add-int/lit8 p2, p2, 0x1

    .line 1294
    const/4 v1, 0x1

    .line 1297
    :cond_2a
    const/16 v9, 0x134

    move/from16 v0, p2

    if-ne v0, v9, :cond_2b

    .line 1298
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "upgradeToVersion309"

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion309(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1300
    add-int/lit8 p2, p2, 0x1

    .line 1301
    const/4 v1, 0x1

    .line 1305
    :cond_2b
    if-eqz v1, :cond_2c

    .line 1306
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1308
    :cond_2c
    const/16 v9, 0x135

    move/from16 v0, p2

    if-eq v0, v9, :cond_2d

    .line 1309
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Need to recreate Calendar schema because of unknown Calendar database version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1312
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1313
    const/16 p2, 0x135

    .line 1321
    :cond_2d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 1322
    .local v3, endWhen:J
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calendar upgrade took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v3, v7

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1065
    .end local v1           #createEventsView:Z
    .end local v3           #endWhen:J
    .end local v5           #need203Update:Z
    .end local v6           #recreateMetaDataAndInstances:Z
    :cond_2e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1194
    .restart local v1       #createEventsView:Z
    .restart local v5       #need203Update:Z
    .restart local v6       #recreateMetaDataAndInstances:Z
    :catch_0
    move-exception v2

    .line 1195
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "CalendarDatabaseHelper"

    const-string v10, "Error on upgradeToHtcDB_Gingerbread_to_Honeycomb"

    invoke-static {v9, v10, v2}, Lcom/android/providers/calendar/debug;->alwaysErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1315
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #need203Update:Z
    :catch_1
    move-exception v2

    .line 1316
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v9, "CalendarDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpgrade: SQLiteException, recreating db. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1318
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method public remindersInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected removeDuplicateEvent(J)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2926
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2927
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT _id FROM Events WHERE _sync_id = (SELECT _sync_id FROM Events WHERE _id = ?) AND lastSynced = ?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "1"

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2939
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2940
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2942
    .local v2, dupId:J
    const-string v4, "CalendarDatabaseHelper"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2943
    const-string v4, "CalendarDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing duplicate event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of original event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_0
    const-string v4, "DELETE FROM Events WHERE _id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    .end local v2           #dupId:J
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2951
    return-void

    .line 2949
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "uploadChangesOnly"
    .parameter "url"

    .prologue
    .line 2645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2646
    .local v0, extras:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 2647
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2649
    :cond_0
    if-eqz p3, :cond_1

    .line 2650
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2653
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2654
    return-void
.end method

.method upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1923
    const-string v8, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1925
    const-string v8, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1929
    const-string v8, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, 0, url FROM Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1978
    const-string v4, "SELECT _id, url FROM Calendars_Backup WHERE _sync_account_type=\'com.google\' AND url IS NOT NULL;"

    .line 1983
    .local v4, selectSql:Ljava/lang/String;
    const-string v6, "UPDATE Calendars SET sync2=?, sync3=? WHERE _id=?;"

    .line 1988
    .local v6, updateSql:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1989
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 1991
    const/4 v8, 0x3

    :try_start_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 1993
    .local v0, bindArgs:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1994
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1995
    .local v3, id:Ljava/lang/Long;
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1996
    .local v7, url:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1997
    .local v5, selfUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1999
    .local v2, editUrl:Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v2, v0, v8

    .line 2000
    const/4 v8, 0x1

    aput-object v5, v0, v8

    .line 2001
    const/4 v8, 0x2

    aput-object v3, v0, v8

    .line 2003
    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2006
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v2           #editUrl:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/Long;
    .end local v5           #selfUrl:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v0       #bindArgs:[Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2011
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :cond_1
    const-string v8, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2012
    return-void
.end method

.method upgradeToVersion201(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1916
    const-string v0, "ALTER TABLE Calendars ADD COLUMN sync4 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1917
    return-void
.end method

.method upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1838
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1840
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1841
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1845
    const-string v0, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1, sync2, sync3, sync4, sync5, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1, sync2, sync3, sync4, hidden, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1911
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1912
    return-void
.end method

.method upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1816
    const-string v2, "SELECT value FROM CalendarCache WHERE key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "timezoneDatabaseVersion"

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1819
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1820
    .local v1, oldTimezoneDbVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1822
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1824
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1827
    const-string v2, "DELETE FROM CalendarCache;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1829
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable203(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1832
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1833
    return-void

    .line 1824
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method upgradeToVersion204(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1811
    return-void
.end method

.method upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1772
    :try_start_0
    const-string v1, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1773
    const-string v1, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1775
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1777
    const-string v1, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_dirty, name, displayName, color, access_level, visible, sync_events, location, timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, deleted, sync1, sync2, sync3, sync4,sync5,sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_dirty, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, 1, 5, deleted, sync1, sync2, sync3, sync4, sync5, _sync_mark, displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone FROM Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1796
    const-string v1, "UPDATE Calendars SET canModifyTimeZone=0, maxReminders=1 WHERE _sync_account_type=\'com.android.exchange\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1797
    const-string v1, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_0
    return-void

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onupgradeToVersion205: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1677
    :try_start_0
    const-string v1, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    const-string v1, "DROP TRIGGER IF EXISTS calendar_cleanup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1679
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1680
    const-string v1, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders,deleted, sync1, sync2, sync3, sync4,sync5,sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_dirty, name, displayName, color, access_level, visible, sync_events, location, timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, \'0,1,2,3\',deleted, sync1, sync2, sync3, sync4, sync5, sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone FROM Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1702
    const-string v1, "UPDATE Calendars SET allowedReminders = \'0,1,2\' WHERE account_type = \'com.google\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1703
    const-string v1, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE Events ADD COLUMN desc_mime_type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1722
    :goto_1
    :try_start_2
    const-string v1, "ALTER TABLE Events RENAME TO Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1723
    const-string v1, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1724
    const-string v1, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1725
    const-string v1, "DROP INDEX IF EXISTS eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1726
    const-string v1, "DROP INDEX IF EXISTS eventsCalendarIdIndex"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1728
    const-string v1, "INSERT INTO Events (_id, _sync_id, _sync_version, _sync_time, _sync_local_id, dirty, _sync_mark, calendar_id, htmlUri, title, eventLocation, description, eventStatus, selfAttendeeStatus, commentsUri, dtstart, dtend, eventTimezone, eventEndTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, sync_data1,importance,iCalGUID,last_update_time,parentID,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type ) SELECT _id, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, calendar_id, htmlUri, title, eventLocation, description, eventStatus, selfAttendeeStatus, commentsUri, dtstart, dtend, eventTimezone, eventTimezone2, duration, allDay, visibility, transparency, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, originalEvent, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, syncAdapterData,importance,iCalGUID,last_update_time,parentID,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type FROM Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1756
    const-string v1, "DROP TABLE Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1757
    const-string v1, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1765
    :goto_2
    return-void

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion300 #1: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1715
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 1716
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion300 #2: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1760
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v0

    .line 1761
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion300 #3: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method upgradeToVersion301(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1657
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS original_sync_update;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    const-string v1, "ALTER TABLE Events ADD COLUMN original_id INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1659
    const-string v1, "UPDATE Events set original_id=(SELECT Events2._id FROM Events AS Events2 WHERE Events2._sync_id=Events.original_sync_id) WHERE Events.original_sync_id NOT NULL"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1660
    const-string v1, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :goto_0
    return-void

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion301: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion302(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1498
    :try_start_0
    const-string v1, "UPDATE Events SET sync_data1=eventEndTimezone WHERE calendar_id IN (SELECT _id FROM Calendars WHERE account_type=\'com.android.exchange\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1499
    const-string v1, "UPDATE Events SET eventEndTimezone=NULL WHERE calendar_id IN (SELECT _id FROM Calendars WHERE account_type=\'com.android.exchange\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :goto_0
    return-void

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion302: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1510
    :try_start_0
    const-string v1, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1511
    const-string v1, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1512
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1513
    const-string v1, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone) SELECT _id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders,deleted, sync1, sync2, sync3, sync4,sync5,sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone FROM Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1534
    const-string v1, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    :goto_0
    return-void

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion303: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1546
    :try_start_0
    const-string v1, "ALTER TABLE Calendars ADD COLUMN canPartiallyUpdate INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1547
    const-string v1, "ALTER TABLE Events ADD COLUMN sync_data7 TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1548
    const-string v1, "ALTER TABLE Events ADD COLUMN lastSynced INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :goto_0
    return-void

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion304: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion305(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1559
    :try_start_0
    const-string v1, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1560
    const-string v1, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1561
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable305(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1562
    const-string v1, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, cal_sync7, cal_sync8, dirty, name, calendar_displayName, calendar_color, calendar_access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, canPartiallyUpdate,cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone) SELECT _id, account_name, account_type, _sync_id, _sync_version, _sync_time, dirty, name, displayName, calendar_color, access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, canPartiallyUpdate,cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone FROM Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1582
    const-string v1, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1583
    const-string v1, "ALTER TABLE Events RENAME TO Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    const-string v1, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1585
    const-string v1, "DROP INDEX IF EXISTS eventsCalendarIdIndex"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1586
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1587
    const-string v1, "INSERT INTO Events (_id, _sync_id, sync_data4, sync_data5, sync_data2, dirty, sync_data8, calendar_id, sync_data3, title, eventLocation, description, eventStatus, selfAttendeeStatus, sync_data6, dtstart, dtend, eventTimezone, eventEndTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, sync_data7,lastSynced,sync_data1,importance,iCalGUID,last_update_time,parentID,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type) SELECT _id, _sync_id, _sync_version, _sync_time, _sync_local_id, dirty, _sync_mark, calendar_id, htmlUri, title, eventLocation, description, eventStatus, selfAttendeeStatus, commentsUri, dtstart, dtend, eventTimezone, eventEndTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, sync_data7,lastSynced,sync_data1,importance,iCalGUID,last_update_time,parentID,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type FROM Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1615
    const-string v1, "DROP TABLE Events_Backup;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    const-string v1, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1617
    const-string v1, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion305: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1640
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS original_sync_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1641
    const-string v1, "UPDATE Events SET _sync_id = REPLACE(_sync_id, \'/private/full/\', \'/events/\'), original_sync_id = REPLACE(original_sync_id, \'/private/full/\', \'/events/\') WHERE _id IN (SELECT Events._id FROM Events JOIN Calendars ON Events.calendar_id = Calendars._id WHERE account_type = \'com.google\')"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1642
    const-string v1, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    const-string v1, "UPDATE Calendars SET canPartiallyUpdate = 1 WHERE account_type = \'com.google\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    const-string v1, "DELETE FROM _sync_state WHERE account_type = \'com.google\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_0
    return-void

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVersion306: SQLiteException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1447
    :try_start_0
    const-string v2, "ALTER TABLE Events RENAME TO Events_Backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1448
    const-string v2, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1449
    const-string v2, "DROP TRIGGER IF EXISTS original_sync_update"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1450
    const-string v2, "DROP INDEX IF EXISTS eventsCalendarIdIndex"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1451
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsTable307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1452
    const-string v1, "INSERT INTO Events (_id, _sync_id, dirty, lastSynced,calendar_id, title, eventLocation, description, eventColor, eventStatus, selfAttendeeStatus, dtstart, dtend, eventTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, eventEndTimezone, sync_data1,sync_data2,sync_data3,sync_data4,sync_data5,sync_data6,sync_data7,sync_data8,sync_data9,sync_data10, importance,iCalGUID,last_update_time,parentID,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type) SELECT _id, _sync_id, dirty, lastSynced,calendar_id, title, eventLocation, description, eventColor, eventStatus, selfAttendeeStatus, dtstart, dtend, eventTimezone, duration, allDay, accessLevel, availability, hasAlarm, hasExtendedProperties, rrule, rdate, exrule, exdate, original_id,original_sync_id, originalInstanceTime, originalAllDay, lastDate, hasAttendeeData, guestsCanModify, guestsCanInviteOthers, guestsCanSeeGuests, organizer, deleted, eventEndTimezone, sync_data1,sync_data2,sync_data3,sync_data4,sync_data5,sync_data6,sync_data7,sync_data8,sync_data9,sync_data10,importance,iCalGUID,last_update_time,parentID,facebook_source_id,facebook_type,facebook_avatar_large,facebook_avatar_small,facebook_avatar_local,MeetingStatus,desc_mime_type FROM Events_Backup;"

    .line 1479
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1480
    const-string v2, "DROP TABLE Events_Backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1481
    const-string v2, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1482
    const-string v2, "CREATE TRIGGER original_sync_update UPDATE OF _sync_id ON Events BEGIN UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id; END"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1484
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createHTCeasTrackingTriggers(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1485
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createHTCtracking_insertTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeToVersion307: SQLiteException,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1354
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1355
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1357
    const-string v0, "INSERT INTO Calendars (_id, account_name, account_type, _sync_id, cal_sync7, cal_sync8, dirty, name, calendar_displayName, calendar_color, calendar_access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, canPartiallyUpdate,cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone, ishTCCustomizedCalendar) SELECT _id, account_name, account_type, _sync_id, cal_sync7, cal_sync8, dirty, name, calendar_displayName, calendar_color, calendar_access_level, visible, sync_events, calendar_location, calendar_timezone, ownerAccount, canOrganizerRespond, canModifyTimeZone, maxReminders, allowedReminders, deleted, canPartiallyUpdate,cal_sync1, cal_sync2, cal_sync3, cal_sync4, cal_sync5, cal_sync6,displayOrder, hide_declined, reminder_type, reminder_duration, alerts_vibrate, alerts_ringtone, ishTCCustomizedCalendar FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1381
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1397
    const-string v0, "ALTER TABLE Events ADD COLUMN eventColor_index TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1401
    const-string v0, "UPDATE Calendars SET allowedAvailability=\'0,1,2\' WHERE _id IN (SELECT _id FROM Calendars WHERE account_type=\'com.android.exchange\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createColorsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1407
    return-void
.end method

.method upgradeToVersion309(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1412
    const-string v7, "ALTER TABLE Events ADD COLUMN plaintext_description TEXT;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v5, "SELECT _id, description FROM Events"

    .line 1417
    .local v5, selectSql:Ljava/lang/String;
    const-string v6, "UPDATE Events SET plaintext_description=? WHERE _id=?;"

    .line 1421
    .local v6, updateSql:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1422
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 1424
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/Object;

    .line 1426
    .local v0, bindArgs:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1427
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1428
    .local v3, id:Ljava/lang/Long;
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1429
    .local v2, description:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1431
    .local v4, plaintext_description:Ljava/lang/String;
    const/4 v7, 0x0

    aput-object v4, v0, v7

    .line 1432
    const/4 v7, 0x1

    aput-object v3, v0, v7

    .line 1435
    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1438
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/Long;
    .end local v4           #plaintext_description:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v7

    .restart local v0       #bindArgs:[Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1441
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :cond_1
    return-void
.end method
