.class public Lcom/android/providers/calendar/CalendarAlarmManager;
.super Ljava/lang/Object;
.source "CalendarAlarmManager.java"


# static fields
.field protected static final ACTION_CHECK_NEXT_ALARM:Ljava/lang/String; = "com.android.providers.calendar.intent.CalendarProvider2"

.field static final ALARM_CHECK_DELAY_MILLIS:I = 0x1388

.field private static final CLEAR_OLD_ALARM_THRESHOLD:J = 0x247a6100L

.field static final INVALID_CALENDARALERTS_SELECTOR:Ljava/lang/String; = "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

.field static final INVALID_CALENDAR_SMS_ALERTS_SELECTOR:Ljava/lang/String; = "_id IN (SELECT ca._id FROM CalendarSmsAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

.field private static final REMOVE_ALARM_VALUE:Ljava/lang/String; = "removeAlarms"

.field static final SCHEDULE_ALARM_PATH:Ljava/lang/String; = "schedule_alarms"

.field static final SCHEDULE_ALARM_REMOVE_PATH:Ljava/lang/String; = "schedule_alarms_remove"

.field static final SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri; = null

.field private static final SCHEDULE_ALARM_SLACK:J = 0x6ddd00L

.field static final SCHEDULE_ALARM_URI:Landroid/net/Uri; = null

.field private static final SCHEDULE_NEXT_ALARM_WAKE_LOCK:Ljava/lang/String; = "ScheduleNextAlarmWakeLock"

.field protected static final TAG:Ljava/lang/String; = "CalendarAlarmManager"

.field private static final WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"


# instance fields
.field protected mAlarmLock:Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected mContext:Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms_remove"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    .line 68
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarAlarmManager;->initializeWithContext(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method private static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .locals 9
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "alarmTime"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 277
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "alarmTime"

    aput-object v0, v2, v5

    .line 278
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=? AND begin=? AND alarmTime=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 284
    .local v7, found:Z
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 285
    const/4 v7, 0x1

    .line 288
    :cond_0
    if-eqz v6, :cond_1

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_1
    return v7

    .line 288
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 596
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "CalendarProvider2"

    const-string v1, "removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 604
    const-string v0, "CalendarSmsAlerts"

    const-string v1, "state=0"

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 62
    .parameter "db"
    .parameter "cp2"

    .prologue
    .line 320
    new-instance v56, Landroid/text/format/Time;

    invoke-direct/range {v56 .. v56}, Landroid/text/format/Time;-><init>()V

    .line 322
    .local v56, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 323
    .local v29, currentMillis:J
    const-wide/32 v13, 0x6ddd00

    sub-long v51, v29, v13

    .line 324
    .local v51, start:J
    const-wide/32 v13, 0x5265c00

    add-long v33, v51, v13

    .line 325
    .local v33, end:J
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    move-object/from16 v0, v56

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 327
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 328
    .local v53, startTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "runScheduleNextAlarm() start search: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v53           #startTimeStr:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/4 v3, 0x0

    const-wide/32 v13, 0x247a6100

    sub-long v13, v29, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v50, v3

    .line 340
    .local v50, selectArg:[Ljava/lang/String;
    const-string v3, "CalendarAlerts"

    const-string v13, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v47

    .line 345
    .local v47, rowsDeleted:I
    const/16 v48, 0x0

    .line 348
    .local v48, rowsDeleted_SMS:I
    :try_start_0
    const-string v3, "CalendarSmsAlerts"

    const-string v13, "_id IN (SELECT ca._id FROM CalendarSmsAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    move-wide/from16 v40, v33

    .line 359
    .local v40, nextAlarmTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 360
    .local v12, resolver:Landroid/content/ContentResolver;
    move-wide/from16 v0, v29

    invoke-static {v12, v0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v59

    .line 361
    .local v59, tmpAlarmTime:J
    const-wide/16 v13, -0x1

    cmp-long v3, v59, v13

    if-eqz v3, :cond_1

    cmp-long v3, v59, v40

    if-gez v3, :cond_1

    .line 362
    move-wide/from16 v40, v59

    .line 387
    :cond_1
    invoke-virtual/range {v56 .. v56}, Landroid/text/format/Time;->setToNow()V

    .line 388
    const/4 v3, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 389
    move-object/from16 v0, v56

    iget-wide v13, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v15, 0x3e8

    mul-long v37, v13, v15

    .line 391
    .local v37, localOffset:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " -("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v37

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ") "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 392
    .local v26, allDayOffset:Ljava/lang/String;
    const-string v54, "SELECT begin"

    .line 393
    .local v54, subQueryPrefix:Ljava/lang/String;
    const-string v55, " -(minutes*60000) AS myAlarmTime,Instances.event_id AS eventId,begin,end,title,allDay,method,minutes FROM Instances INNER JOIN view_events ON (view_events._id=Instances.event_id) INNER JOIN Reminders ON (Instances.event_id=Reminders.event_id) WHERE visible=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND ( method=1 OR method=101)"

    .line 410
    .local v55, subQuerySuffix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "allDay"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=1"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 412
    .local v27, allDayQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "allDay"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=0"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 417
    .local v42, nonAllDayQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " UNION ALL "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " WHERE 0=(SELECT count(*) FROM "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "CalendarAlerts"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " CA"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " WHERE CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "event_id"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=eventId"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "alarmTime"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=myAlarmTime)"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " ORDER BY myAlarmTime,"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "title"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 424
    .local v43, query:Ljava/lang/String;
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v3, 0x0

    invoke-static/range {v51 .. v52}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    const/4 v3, 0x1

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    const/4 v3, 0x2

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    const/4 v3, 0x3

    invoke-static/range {v51 .. v52}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    const/4 v3, 0x4

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    const/4 v3, 0x5

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    .line 428
    .local v44, queryParams:[Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v10

    .line 429
    .local v10, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v3

    const-string v13, "home"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 433
    .local v11, isHomeTimezone:Z
    const-wide/32 v13, 0x5265c00

    sub-long v4, v51, v13

    const-wide/32 v13, 0x5265c00

    add-long v6, v33, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 443
    const/16 v31, 0x0

    .line 445
    .local v31, cursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 447
    const-string v3, "begin"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 448
    .local v28, beginIndex:I
    const-string v3, "end"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 449
    .local v35, endIndex:I
    const-string v3, "eventId"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 450
    .local v36, eventIdIndex:I
    const-string v3, "myAlarmTime"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 451
    .local v22, alarmTimeIndex:I
    const-string v3, "minutes"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 453
    .local v39, minutesIndex:I
    const-string v3, "allDay"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 454
    .local v25, allDayIndex:I
    const-string v3, "method"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 456
    .local v46, reminderMethodIndex:I
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    move-object/from16 v0, v56

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 458
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 459
    .local v23, alarmTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cursor results: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nextAlarmTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v23           #alarmTimeStr:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 471
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 472
    .local v8, alarmTime:J
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 473
    .local v4, eventId:J
    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 474
    .local v21, minutes:I
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 475
    .local v6, startTime:J
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 476
    .local v17, endTime:J
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v24, 0x1

    .line 477
    .local v24, allDay:Z
    :goto_2
    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 479
    .local v45, reminderMethod:I
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 480
    move-object/from16 v0, v56

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 481
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 482
    .local v49, schedTime:Ljava/lang/String;
    move-object/from16 v0, v56

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 483
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 485
    .restart local v53       #startTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  looking at id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " alarm: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v49

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v49           #schedTime:Ljava/lang/String;
    .end local v53           #startTimeStr:Ljava/lang/String;
    :cond_3
    cmp-long v3, v8, v40

    if-gez v3, :cond_7

    .line 491
    move-wide/from16 v40, v8

    :cond_4
    move-object v3, v12

    .line 513
    invoke-static/range {v3 .. v9}, Landroid/provider/CalendarContract$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 514
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    const-string v3, "title"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 516
    .local v58, titleIndex:I
    move-object/from16 v0, v31

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 517
    .local v57, title:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  alarm exists for id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 561
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v22           #alarmTimeIndex:I
    .end local v24           #allDay:Z
    .end local v25           #allDayIndex:I
    .end local v28           #beginIndex:I
    .end local v35           #endIndex:I
    .end local v36           #eventIdIndex:I
    .end local v39           #minutesIndex:I
    .end local v45           #reminderMethod:I
    .end local v46           #reminderMethodIndex:I
    .end local v57           #title:Ljava/lang/String;
    .end local v58           #titleIndex:I
    :catchall_0
    move-exception v3

    if-eqz v31, :cond_5

    .line 562
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 352
    .end local v10           #instancesTimezone:Ljava/lang/String;
    .end local v11           #isHomeTimezone:Z
    .end local v12           #resolver:Landroid/content/ContentResolver;
    .end local v26           #allDayOffset:Ljava/lang/String;
    .end local v27           #allDayQuery:Ljava/lang/String;
    .end local v31           #cursor:Landroid/database/Cursor;
    .end local v37           #localOffset:J
    .end local v40           #nextAlarmTime:J
    .end local v42           #nonAllDayQuery:Ljava/lang/String;
    .end local v43           #query:Ljava/lang/String;
    .end local v44           #queryParams:[Ljava/lang/String;
    .end local v54           #subQueryPrefix:Ljava/lang/String;
    .end local v55           #subQuerySuffix:Ljava/lang/String;
    .end local v59           #tmpAlarmTime:J
    :catch_0
    move-exception v32

    .line 353
    .local v32, e:Ljava/lang/Exception;
    const-string v3, "CalendarAlarmManager"

    const-string v13, "deleted CalendarSmsAlert fail."

    move-object/from16 v0, v32

    invoke-static {v3, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 476
    .end local v32           #e:Ljava/lang/Exception;
    .restart local v4       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #alarmTime:J
    .restart local v10       #instancesTimezone:Ljava/lang/String;
    .restart local v11       #isHomeTimezone:Z
    .restart local v12       #resolver:Landroid/content/ContentResolver;
    .restart local v17       #endTime:J
    .restart local v21       #minutes:I
    .restart local v22       #alarmTimeIndex:I
    .restart local v25       #allDayIndex:I
    .restart local v26       #allDayOffset:Ljava/lang/String;
    .restart local v27       #allDayQuery:Ljava/lang/String;
    .restart local v28       #beginIndex:I
    .restart local v31       #cursor:Landroid/database/Cursor;
    .restart local v35       #endIndex:I
    .restart local v36       #eventIdIndex:I
    .restart local v37       #localOffset:J
    .restart local v39       #minutesIndex:I
    .restart local v40       #nextAlarmTime:J
    .restart local v42       #nonAllDayQuery:Ljava/lang/String;
    .restart local v43       #query:Ljava/lang/String;
    .restart local v44       #queryParams:[Ljava/lang/String;
    .restart local v46       #reminderMethodIndex:I
    .restart local v54       #subQueryPrefix:Ljava/lang/String;
    .restart local v55       #subQuerySuffix:Ljava/lang/String;
    .restart local v59       #tmpAlarmTime:J
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 492
    .restart local v24       #allDay:Z
    .restart local v45       #reminderMethod:I
    :cond_7
    const-wide/32 v13, 0xea60

    add-long v13, v13, v40

    cmp-long v3, v8, v13

    if-lez v3, :cond_4

    .line 495
    :try_start_2
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    const-string v3, "CalendarProvider2"

    const-string v13, "This event alarm (and all later ones) will be scheduled later"

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v24           #allDay:Z
    .end local v45           #reminderMethod:I
    :cond_8
    if-eqz v31, :cond_9

    .line 562
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_9
    if-lez v47, :cond_a

    .line 568
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V

    .line 576
    :cond_a
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v3, v40, v13

    if-eqz v3, :cond_f

    .line 577
    const-wide/32 v13, 0xea60

    add-long v13, v13, v40

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmCheck(J)V

    .line 581
    :goto_3
    return-void

    .restart local v4       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #alarmTime:J
    .restart local v17       #endTime:J
    .restart local v21       #minutes:I
    .restart local v24       #allDay:Z
    .restart local v45       #reminderMethod:I
    :cond_b
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v19, v8

    .line 524
    :try_start_3
    invoke-static/range {v12 .. v21}, Landroid/provider/CalendarContract$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v61

    .line 530
    .local v61, uri:Landroid/net/Uri;
    const-string v3, "CalendarAlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reminderMethod: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v12

    .line 534
    invoke-static/range {v3 .. v9}, Lcom/android/providers/calendar/CalendarAlarmManager;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 535
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 536
    const-string v3, "title"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 537
    .restart local v58       #titleIndex:I
    move-object/from16 v0, v31

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 538
    .restart local v57       #title:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  alarm exists for id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 544
    .end local v57           #title:Ljava/lang/String;
    .end local v58           #titleIndex:I
    :cond_c
    const/16 v3, 0x65

    move/from16 v0, v45

    if-ne v0, v3, :cond_d

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v19, v8

    .line 545
    invoke-static/range {v12 .. v21}, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    .line 550
    :cond_d
    if-nez v61, :cond_e

    .line 551
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x6

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    const-string v3, "CalendarProvider2"

    const-string v13, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 558
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 579
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v24           #allDay:Z
    .end local v45           #reminderMethod:I
    .end local v61           #uri:Landroid/net/Uri;
    :cond_f
    const-wide/32 v13, 0x5265c00

    add-long v13, v13, v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_3
.end method


# virtual methods
.method acquireScheduleNextAlarmWakeLock()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 204
    return-void
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 619
    return-void
.end method

.method getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 192
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v1, "ScheduleNextAlarmWakeLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 197
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 199
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v1
.end method

.method protected initializeWithContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    .line 156
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmLock:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method isHeld()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method releaseScheduleNextAlarmWakeLock()V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 208
    return-void
.end method

.method rescheduleMissedAlarms()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms(Landroid/content/ContentResolver;)V

    .line 216
    return-void
.end method

.method public rescheduleMissedAlarms(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "cr"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p1, v0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 627
    return-void
.end method

.method runScheduleNextAlarm(ZLcom/android/providers/calendar/CalendarProvider2;)V
    .locals 6
    .parameter "removeAlarms"
    .parameter "cp2"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    iget-object v0, p2, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 228
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 230
    if-eqz p1, :cond_0

    .line 231
    :try_start_0
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 234
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CalendarAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runScheduleNextAlarm-endTransaction: SQLiteException,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 236
    .restart local v1       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "CalendarAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runScheduleNextAlarm : SQLiteException,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 243
    :catch_2
    move-exception v1

    .line 244
    const-string v2, "CalendarAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runScheduleNextAlarm-endTransaction: SQLiteException,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    .line 241
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 245
    :goto_1
    throw v2

    .line 243
    :catch_3
    move-exception v1

    .line 244
    .restart local v1       #e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "CalendarAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runScheduleNextAlarm-endTransaction: SQLiteException,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public scheduleAlarm(J)V
    .locals 2
    .parameter "alarmTime"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v0, v1, p1, p2}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 623
    return-void
.end method

.method scheduleNextAlarm(Z)V
    .locals 8
    .parameter "removeAlarms"

    .prologue
    const/4 v6, 0x0

    .line 162
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "CalendarProvider2"

    const-string v5, "Scheduling check of next Alarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "removeAlarms"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x2000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 170
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 179
    .local v2, triggerAtTime:J
    const-string v4, "CalendarAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleNextAlarm removeAlarms("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 184
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pending:Landroid/app/PendingIntent;
    .end local v2           #triggerAtTime:J
    :goto_0
    return-void

    .line 183
    :cond_2
    const-string v4, "CalendarAlarmManager"

    const-string v5, "scheduleNextAlarm failed!!! There was a already existed one."

    invoke-static {v4, v5}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method scheduleNextAlarmCheck(J)V
    .locals 8
    .parameter "triggerTime"

    .prologue
    const/4 v7, 0x0

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x2000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 254
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 258
    :cond_0
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 261
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 263
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 264
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, timeStr:Ljava/lang/String;
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleNextAlarmCheck at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v2           #time:Landroid/text/format/Time;
    .end local v3           #timeStr:Ljava/lang/String;
    :cond_1
    const-string v4, "CalendarAlarmManager"

    const-string v5, "scheduleNextAlarmCheck"

    invoke-static {v4, v5}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v7, p1, p2, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 269
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 3
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 612
    const-string v0, "CalendarAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/android/providers/calendar/debug;->debugLongtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 615
    return-void
.end method
