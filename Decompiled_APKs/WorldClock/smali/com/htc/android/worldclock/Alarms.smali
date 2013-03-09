.class public Lcom/htc/android/worldclock/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/Alarms$AlarmCalculator;,
        Lcom/htc/android/worldclock/Alarms$AlarmSettings;,
        Lcom/htc/android/worldclock/Alarms$AlarmData;,
        Lcom/htc/android/worldclock/Alarms$AlarmColumns;,
        Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM:Ljava/lang/String; = "com.htc.intent.action.next_alarm"

.field public static final ADD:Ljava/lang/String; = "add"

.field private static final ALARMS_ENABLE_BULK_URI:Landroid/net/Uri; = null

.field private static final ALARMS_SNOOZE_BULK_URI:Landroid/net/Uri; = null

.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.htc.android.worldclock.ALARM_ALERT"

.field public static final CANCEL_SNOOZE:Ljava/lang/String; = "cancel_snooze"

.field public static final DESCRIPTION:Ljava/lang/String; = "alarm_description"

.field private static final DM12:Ljava/lang/String; = "E h:mm"

.field private static final DM24:Ljava/lang/String; = "E k:mm"

.field public static final EDIT:Ljava/lang/String; = "edit"

.field public static final ID:Ljava/lang/String; = "alarm_id"

.field public static final M12:Ljava/lang/String; = "h:mm aa"

.field public static final M24:Ljava/lang/String; = "k:mm"

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final NOALARM:J = -0x1L

.field public static final SNOOZE:Ljava/lang/String; = "snooze"

.field public static final TIME:Ljava/lang/String; = "alarm_time"

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "content://com.htc.android.alarmclock/alarm_enable_bulk"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/Alarms;->ALARMS_ENABLE_BULK_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "content://com.htc.android.alarmclock/alarm_snooze_bulk"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/Alarms;->ALARMS_SNOOZE_BULK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 706
    return-void
.end method

.method private static declared-synchronized _enableAlarmInternal(Landroid/content/Context;IZLcom/htc/android/worldclock/Alarms$AlarmData;)V
    .locals 8
    .parameter "context"
    .parameter "id"
    .parameter "enabled"
    .parameter "data"

    .prologue
    .line 596
    const-class v5, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 621
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput v4, p3, Lcom/htc/android/worldclock/Alarms$AlarmData;->enabled:I

    .line 627
    if-eqz p2, :cond_0

    .line 628
    new-instance v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;-><init>()V

    .line 629
    .local v0, enableAlarm:Lcom/htc/android/worldclock/Alarms$1EnableAlarm;
    invoke-static {v1, v0, p1}, Lcom/htc/android/worldclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;I)V

    .line 630
    iget-object v4, v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    if-nez v4, :cond_2

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** enableAlarmInternal failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " h "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mHour:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " m "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mMinutes:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v0           #enableAlarm:Lcom/htc/android/worldclock/Alarms$1EnableAlarm;
    :cond_0
    :goto_1
    monitor-exit v5

    return-void

    .line 621
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 640
    .restart local v0       #enableAlarm:Lcom/htc/android/worldclock/Alarms$1EnableAlarm;
    :cond_2
    :try_start_1
    iget v4, v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mHour:I

    iget v6, v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mMinutes:I

    iget-object v7, v0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-static {v4, v6, v7}, Lcom/htc/android/worldclock/Alarms;->calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 643
    .local v2, time:J
    iput-wide v2, p3, Lcom/htc/android/worldclock/Alarms$AlarmData;->time:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 596
    .end local v0           #enableAlarm:Lcom/htc/android/worldclock/Alarms$1EnableAlarm;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/worldclock/Alarms;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 5
    .parameter "contentResolver"

    .prologue
    .line 362
    const-class v3, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 363
    const-string v2, "[ATS][com.htc.android.worldclock][set_time][complete]"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 364
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "hour"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    if-nez p0, :cond_0

    .line 369
    sget-object v2, Lcom/htc/android/worldclock/Alarms;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .line 372
    :cond_0
    :try_start_1
    sget-object v2, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 376
    :goto_0
    monitor-exit v3

    return-object v2

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    const/4 v2, 0x0

    goto :goto_0

    .line 362
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 1072
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1074
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1075
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1077
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1078
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1081
    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 1083
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1085
    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 1086
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 1087
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1088
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1090
    invoke-virtual {p2, v1}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 1096
    .local v0, addDays:I
    if-lez v0, :cond_2

    .line 1097
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1099
    :cond_2
    return-object v1
.end method

.method static calculateNextAlert(Landroid/content/Context;)Lcom/htc/android/worldclock/Alarms$AlarmCalculator;
    .locals 2
    .parameter "context"

    .prologue
    .line 767
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 769
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;-><init>()V

    .line 770
    .local v0, alarmCalc:Lcom/htc/android/worldclock/Alarms$AlarmCalculator;
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/Alarms;->getAlarms(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;)V

    .line 771
    return-object v0
.end method

.method public static convertLongToByte([Ljava/lang/Long;)[B
    .locals 11
    .parameter "data"

    .prologue
    .line 990
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 991
    const/4 v5, 0x4

    .line 992
    .local v5, size:I
    array-length v8, p0

    mul-int/2addr v8, v5

    new-array v3, v8, [B

    .line 997
    .local v3, out:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v8, p0

    if-ge v0, v8, :cond_1

    .line 998
    aget-object v8, p0, v0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 999
    .local v6, value:J
    const-string v2, ""

    .line 1000
    .local v2, logData:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1001
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 1002
    mul-int v8, v0, v5

    add-int/2addr v8, v1

    mul-int/lit8 v9, v1, 0x8

    shr-long v9, v6, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1004
    mul-int v8, v0, v5

    add-int/2addr v8, v1

    aget-byte v8, v3, v8

    and-int/lit16 v4, v8, 0xff

    .line 1005
    .local v4, res:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "out["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int v9, v0, v5

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-long v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> ; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1008
    .end local v4           #res:I
    :cond_0
    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1010
    .end local v1           #j:I
    .end local v2           #logData:Ljava/lang/String;
    .end local v6           #value:J
    :cond_1
    return-object v3
.end method

.method private static declared-synchronized deleteAlarm(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 4
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 405
    const-class v2, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 406
    const-string v1, "[ATS][com.htc.android.worldclock][alarm_schedule][delete]"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 409
    if-nez p0, :cond_0

    .line 410
    sget-object v1, Lcom/htc/android/worldclock/Alarms;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .line 413
    :cond_0
    :try_start_1
    const-string v1, ""

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 417
    :goto_0
    monitor-exit v2

    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    const/4 v1, -0x1

    goto :goto_0

    .line 405
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteAlarm(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "alarmId"

    .prologue
    const/4 v2, -0x1

    .line 386
    const-class v3, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 387
    const-string v4, "[ATS][com.htc.android.worldclock][alarm_schedule][delete]"

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 390
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Alarms;->deleteAlarm(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 399
    :goto_0
    monitor-exit v3

    return v2

    .line 394
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/htc/android/worldclock/Global;->getSnoozeNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/AlertUtils;->dismissNotification(Landroid/content/Context;I)V

    .line 398
    :cond_1
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    const/4 v2, 0x0

    goto :goto_0

    .line 386
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static disableAlert(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 924
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 925
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 927
    .local v6, am:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.android.worldclock.ALARM_ALERT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "alarm_id"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 929
    const/high16 v0, 0x1000

    invoke-static {p0, v1, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 931
    .local v8, sender:Landroid/app/PendingIntent;
    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 932
    invoke-static {p0, v1}, Lcom/htc/android/worldclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 933
    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/android/worldclock/Alarms;->saveNextAlarm(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)V

    .line 935
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->writeOffAlarmData(Landroid/content/Context;)V

    .line 936
    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 25
    .parameter "context"

    .prologue
    .line 779
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 780
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/worldclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v6

    .line 781
    .local v6, cur:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 783
    .local v13, now:J
    if-nez v6, :cond_0

    .line 784
    const-string v22, "disableExpiredAlarms, cur = null"

    invoke-static/range {v22 .. v22}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void

    .line 788
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v12, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v4, alarm_times:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v9, ebables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v16, snoozeIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 795
    :cond_1
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 796
    .local v11, id:I
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    .line 798
    .local v10, enabled:Z
    :goto_1
    new-instance v8, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v8, v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>(I)V

    .line 800
    .local v8, daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 801
    .local v19, time:J
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    .line 803
    .local v18, snoozed:Z
    :goto_2
    if-eqz v10, :cond_3

    cmp-long v22, v19, v13

    if-gez v22, :cond_3

    .line 804
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "** DISABLE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " now "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " set "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v8}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->isRepeatSet()Z

    move-result v22

    if-nez v22, :cond_2

    .line 807
    new-instance v7, Lcom/htc/android/worldclock/Alarms$AlarmData;

    invoke-direct {v7}, Lcom/htc/android/worldclock/Alarms$AlarmData;-><init>()V

    .line 808
    .local v7, data:Lcom/htc/android/worldclock/Alarms$AlarmData;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v11, v1, v7}, Lcom/htc/android/worldclock/Alarms;->_enableAlarmInternal(Landroid/content/Context;IZLcom/htc/android/worldclock/Alarms$AlarmData;)V

    .line 809
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-wide v0, v7, Lcom/htc/android/worldclock/Alarms$AlarmData;->time:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget v0, v7, Lcom/htc/android/worldclock/Alarms$AlarmData;->enabled:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v7           #data:Lcom/htc/android/worldclock/Alarms$AlarmData;
    :cond_2
    if-eqz v18, :cond_3

    .line 814
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_1

    .line 819
    .end local v8           #daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    .end local v10           #enabled:Z
    .end local v11           #id:I
    .end local v18           #snoozed:Z
    .end local v19           #time:J
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 822
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 823
    .local v21, values:Landroid/content/ContentValues;
    const-string v22, "_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 824
    const-string v22, "alarmtime"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 825
    const-string v22, "enabled"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 827
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v22, Lcom/htc/android/worldclock/Alarms;->ALARMS_ENABLE_BULK_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 830
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 831
    .local v17, snoozeValues:Landroid/content/ContentValues;
    const-string v22, "_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 833
    .local v15, snoozeCr:Landroid/content/ContentResolver;
    sget-object v22, Lcom/htc/android/worldclock/Alarms;->ALARMS_SNOOZE_BULK_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v15           #snoozeCr:Landroid/content/ContentResolver;
    .end local v17           #snoozeValues:Landroid/content/ContentValues;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v11       #id:I
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 801
    .restart local v8       #daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    .restart local v10       #enabled:Z
    .restart local v19       #time:J
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method static disableSnoozeAlert(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    .line 1042
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1043
    if-ne p1, v0, :cond_0

    move p1, v0

    .line 1047
    .end local p1
    :goto_0
    return p1

    .line 1046
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/htc/android/worldclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method public static declared-synchronized enableAlarm(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 586
    const-class v1, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 588
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)I

    .line 590
    invoke-static {p0, p1, p2}, Lcom/htc/android/worldclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 591
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit v1

    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 649
    const-class v6, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 674
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 675
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "enabled"

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    if-eqz p2, :cond_2

    .line 682
    new-instance v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;-><init>()V

    .line 683
    .local v0, enableAlarm:Lcom/htc/android/worldclock/Alarms$2EnableAlarm;
    invoke-static {v1, v0, p1}, Lcom/htc/android/worldclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;I)V

    .line 684
    iget-object v5, v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    if-nez v5, :cond_1

    .line 689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** enableAlarmInternal failed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " h "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mHour:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " m "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mMinutes:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v0           #enableAlarm:Lcom/htc/android/worldclock/Alarms$2EnableAlarm;
    :goto_1
    monitor-exit v6

    return-void

    .line 675
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 694
    .restart local v0       #enableAlarm:Lcom/htc/android/worldclock/Alarms$2EnableAlarm;
    :cond_1
    :try_start_1
    iget v5, v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mHour:I

    iget v7, v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mMinutes:I

    iget-object v8, v0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-static {v5, v7, v8}, Lcom/htc/android/worldclock/Alarms;->calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 696
    .local v2, time:J
    const-string v5, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 699
    .end local v0           #enableAlarm:Lcom/htc/android/worldclock/Alarms$2EnableAlarm;
    .end local v2           #time:J
    :cond_2
    sget-object v5, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, p1

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 649
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static enableAlert(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 10
    .parameter "context"
    .parameter "id"
    .parameter "description"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v2, 0x0

    .line 880
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 881
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 884
    .local v6, am:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.htc.android.worldclock.ALARM_ALERT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** setAlert id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " atTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 886
    const-string v0, "alarm_id"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    :cond_0
    const-string v0, "alarm_description"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    :goto_0
    const-string v0, "alarm_time"

    invoke-virtual {v8, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 895
    const/high16 v0, 0x1000

    invoke-static {p0, v2, v8, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 898
    .local v9, sender:Landroid/app/PendingIntent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "am.set(AlarmManager.RTC_WAKEUP),atTimeInMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v6, v2, p3, p4, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 901
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 907
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 908
    .local v7, c:Ljava/util/Calendar;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 909
    invoke-static {p0, v7}, Lcom/htc/android/worldclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .local v3, timeString:Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 911
    invoke-static/range {v0 .. v5}, Lcom/htc/android/worldclock/Alarms;->saveNextAlarm(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)V

    .line 914
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->writeOffAlarmData(Landroid/content/Context;)V

    .line 915
    return-void

    .line 891
    .end local v3           #timeString:Ljava/lang/String;
    .end local v7           #c:Ljava/util/Calendar;
    .end local v9           #sender:Landroid/app/PendingIntent;
    :cond_1
    const-string v0, "alarm_description"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static formatDayAndTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    .line 1119
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1121
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1122
    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1136
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1137
    if-nez p1, :cond_0

    .line 1138
    const-string v0, ""

    .line 1142
    :goto_0
    return-object v0

    .line 1140
    :cond_0
    const-string v2, "E "

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1141
    .local v1, weekday:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, timeString:Ljava/lang/String;
    goto :goto_0
.end method

.method static formatTime(Landroid/content/Context;IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 1104
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1105
    invoke-static {p1, p2, p3}, Lcom/htc/android/worldclock/Alarms;->calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 1106
    .local v0, c:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    .line 1126
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1128
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1129
    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1111
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1112
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1188
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1189
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getAlarm(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;I)V
    .locals 9
    .parameter "contentResolver"
    .parameter "alarmSetting"
    .parameter "alarmId"

    .prologue
    .line 489
    const-class v8, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 490
    const/4 v6, 0x0

    .line 493
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 494
    sget-object v0, Lcom/htc/android/worldclock/Alarms;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .line 497
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    invoke-static {p1, v6}, Lcom/htc/android/worldclock/Alarms;->getAlarms(Lcom/htc/android/worldclock/Alarms$AlarmSettings;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    if-eqz v6, :cond_1

    .line 507
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    :cond_1
    :goto_0
    monitor-exit v8

    return-void

    .line 502
    :catch_0
    move-exception v7

    .line 503
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 506
    if-eqz v6, :cond_1

    .line 507
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 489
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 506
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 507
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized getAlarms(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;)V
    .locals 3
    .parameter "contentResolver"
    .parameter "alarmSettings"

    .prologue
    .line 450
    const-class v2, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 451
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 452
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 453
    invoke-static {p1, v0}, Lcom/htc/android/worldclock/Alarms;->getAlarms(Lcom/htc/android/worldclock/Alarms$AlarmSettings;Landroid/database/Cursor;)V

    .line 454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    monitor-exit v2

    return-void

    .line 450
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getAlarms(Lcom/htc/android/worldclock/Alarms$AlarmSettings;Landroid/database/Cursor;)V
    .locals 14
    .parameter "alarmSettings"
    .parameter "cur"

    .prologue
    .line 460
    const-class v13, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 461
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 465
    .local v1, id:I
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 466
    .local v3, hour:I
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 467
    .local v4, minutes:I
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 468
    .local v5, alarmtime:J
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 469
    .local v12, daysOfWeek:I
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const/4 v2, 0x1

    .line 470
    .local v2, enabled:Z
    :goto_0
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    const/4 v8, 0x1

    .line 471
    .local v8, vibrate:Z
    :goto_1
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, message:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 473
    .local v10, alert:Ljava/lang/String;
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    const/4 v11, 0x1

    .line 474
    .local v11, snoozed:Z
    :goto_2
    new-instance v7, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-direct {v7, v12}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>(I)V

    move-object v0, p0

    invoke-interface/range {v0 .. v11}, Lcom/htc/android/worldclock/Alarms$AlarmSettings;->reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 478
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 480
    .end local v1           #id:I
    .end local v2           #enabled:Z
    .end local v3           #hour:I
    .end local v4           #minutes:I
    .end local v5           #alarmtime:J
    .end local v8           #vibrate:Z
    .end local v9           #message:Ljava/lang/String;
    .end local v10           #alert:Ljava/lang/String;
    .end local v11           #snoozed:Z
    .end local v12           #daysOfWeek:I
    :cond_1
    monitor-exit v13

    return-void

    .line 469
    .restart local v1       #id:I
    .restart local v3       #hour:I
    .restart local v4       #minutes:I
    .restart local v5       #alarmtime:J
    .restart local v12       #daysOfWeek:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 470
    .restart local v2       #enabled:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 473
    .restart local v8       #vibrate:Z
    .restart local v9       #message:Ljava/lang/String;
    .restart local v10       #alert:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 460
    .end local v1           #id:I
    .end local v2           #enabled:Z
    .end local v3           #hour:I
    .end local v4           #minutes:I
    .end local v5           #alarmtime:J
    .end local v8           #vibrate:Z
    .end local v9           #message:Ljava/lang/String;
    .end local v10           #alert:Ljava/lang/String;
    .end local v12           #daysOfWeek:I
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0
.end method

.method public static declared-synchronized getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 9
    .parameter "contentResolver"

    .prologue
    const/4 v7, 0x0

    .line 428
    const-class v8, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 431
    if-nez p0, :cond_0

    .line 432
    sget-object v0, Lcom/htc/android/worldclock/Alarms;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .line 435
    :cond_0
    :try_start_1
    sget-object v1, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 441
    :goto_0
    monitor-exit v8

    return-object v0

    .line 438
    :catch_0
    move-exception v6

    .line 439
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v7

    .line 441
    goto :goto_0

    .line 428
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static saveNextAlarm(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "description"
    .parameter "timeString"
    .parameter "atTimeInMillis"

    .prologue
    .line 1150
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1151
    invoke-static {p0, p4, p5}, Lcom/htc/android/worldclock/PreferencesUtil;->setNextAlarm(Landroid/content/Context;J)V

    .line 1153
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT:Z

    if-eqz v0, :cond_0

    .line 1154
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/PreferencesUtil;->setNextAlarmId(Landroid/content/Context;I)V

    .line 1155
    invoke-static {p0, p2}, Lcom/htc/android/worldclock/PreferencesUtil;->setNextAlarmDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 1158
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_time"

    invoke-static {v0, v1, p4, p5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1164
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "description"
    .parameter "atTimeInMillis"

    .prologue
    .line 1017
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1019
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1020
    .local v1, values:Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 1021
    const-string v2, "snoozed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string v2, "alarmtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_1
    return-void

    .line 1024
    :cond_0
    const-string v2, "snoozed"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "saveSnoozeAlert fail"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized setAlarm(Landroid/content/Context;IZIILcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "id"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"
    .parameter "snoozed"

    .prologue
    .line 541
    const-class v7, Lcom/htc/android/worldclock/Alarms;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 542
    const-string v6, "[ATS][com.htc.android.worldclock][set_time][complete]"

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 543
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 544
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 545
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p3, p4, p5}, Lcom/htc/android/worldclock/Alarms;->calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 547
    .local v3, time:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**  setAlarm * idx "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " hour "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minutes "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " enabled "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " time "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 551
    const-string v8, "enabled"

    if-eqz p2, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v6, "hour"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v6, "minutes"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v6, "alarmtime"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    const-string v6, "daysofweek"

    invoke-virtual {p5}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->getCoded()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v6, "vibrate"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 557
    const-string v6, "message"

    move-object/from16 v0, p7

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v6, "alert"

    move-object/from16 v0, p8

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v6, "snoozed"

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 560
    sget-object v6, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 563
    .local v1, count:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 565
    if-eqz p9, :cond_0

    .line 566
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)I

    .line 569
    :cond_0
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :goto_1
    monitor-exit v7

    return-void

    .line 551
    .end local v1           #count:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 571
    .restart local v1       #count:I
    :cond_2
    :try_start_1
    const-string v6, "Alarm not set"

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 541
    .end local v1           #count:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #time:J
    .end local v5           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 843
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 845
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/htc/android/worldclock/Alarms$AlarmCalculator;

    move-result-object v0

    .line 846
    .local v0, ac:Lcom/htc/android/worldclock/Alarms$AlarmCalculator;
    invoke-virtual {v0}, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->getIndex()I

    move-result v3

    .line 847
    .local v3, id:I
    invoke-virtual {v0}, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->getAlert()J

    move-result-wide v1

    .line 849
    .local v1, atTime:J
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    .line 850
    invoke-virtual {v0}, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5, v1, v2}, Lcom/htc/android/worldclock/Alarms;->enableAlert(Landroid/content/Context;ILjava/lang/String;J)V

    .line 857
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 858
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "com.htc.intent.action.next_alarm"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    const-string v5, "snooze"

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->getSnoozed()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 862
    return-void

    .line 852
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {p0, v3}, Lcom/htc/android/worldclock/Alarms;->disableAlert(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 1054
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1057
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    return-void
.end method

.method static upgradePatternLockNextAlarm(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1170
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1174
    .local v3, longString:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1175
    .local v0, atTimeInMillis:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1176
    .local v2, c:Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1177
    invoke-static {p0, v2}, Lcom/htc/android/worldclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .line 1178
    .local v4, timeString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    .end local v0           #atTimeInMillis:J
    .end local v2           #c:Ljava/util/Calendar;
    .end local v4           #timeString:Ljava/lang/String;
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static writeOffAlarmData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 940
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 941
    sget-boolean v1, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT:Z

    if-nez v1, :cond_0

    .line 987
    :goto_0
    return-void

    .line 944
    :cond_0
    const-string v1, "writeOffAlarmData start"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 945
    sput-object p0, Lcom/htc/android/worldclock/Alarms;->sContext:Landroid/content/Context;

    .line 946
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/Alarms$1;

    invoke-direct {v1}, Lcom/htc/android/worldclock/Alarms$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 986
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
