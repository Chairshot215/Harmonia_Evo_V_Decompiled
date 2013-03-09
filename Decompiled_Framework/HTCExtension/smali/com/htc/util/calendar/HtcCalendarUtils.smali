.class public Lcom/htc/util/calendar/HtcCalendarUtils;
.super Ljava/lang/Object;
.source "HtcCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;,
        Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    }
.end annotation


# static fields
.field private static final DAY_IN_MINUTES:I = 0x5a0

.field private static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_END_MINUTE:I = 0xd

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FACEBOOK_AVATAR_LARGE:I = 0x10

.field public static final INDEX_FACEBOOK_AVATAR_SMALL:I = 0x11

.field public static final INDEX_FACEBOOK_SOURCE_ID:I = 0xe

.field public static final INDEX_FACEBOOK_TYPE:I = 0xf

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_START_MINUTE:I = 0xc

.field public static final INDEX_TITLE:I = 0x1

.field public static final INSTANCES_PROJ:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCalendarUtils"

.field private static final QUERY_DAYS:I = 0x3c

.field private static final QUERY_PERIOD:[I = null

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static final localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const-string v1, "allDay"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_avatar_large"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_avatar_small"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .locals 4

    int-to-long v0, p0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0
.end method

.method private static getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    iget-wide v10, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    :cond_3
    new-instance v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v2}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v5, v8

    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/16 v8, 0x8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_4

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {v6, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-static {v6, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    :cond_4
    div-int/lit8 v8, v5, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    rem-int/lit8 v8, v5, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    div-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    rem-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    :cond_5
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    :cond_6
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    const/4 v8, 0x1

    if-ge v1, v8, :cond_9

    sub-int v8, v3, v5

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    :goto_2
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    invoke-static {v4, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0xb

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-boolean v12, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    invoke-static {v8, v9, v10, v11, v12}, Lcom/htc/util/calendar/HtcCalendarUtils;->isRegularMeeting(JJZ)Z

    move-result v8

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/util/calendar/HtcCalendarUtils;->checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v8, v1, -0x1

    mul-int/lit16 v8, v8, 0x5a0

    rsub-int v9, v5, 0x5a0

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    int-to-long v8, v8

    :try_start_1
    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :cond_a
    throw v8
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    if-eqz p4, :cond_0

    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/format/Time;",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v4, 0x0

    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-nez v17, :cond_3

    const-string v4, "visible=1"

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v1, v5

    long-to-float v11, v1

    const/high16 v1, 0x3f80

    cmpg-float v1, v11, v1

    if-gez v1, :cond_7

    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    :goto_2
    const/4 v1, 0x1

    invoke-static {v9, v15, v10, v1}, Lcom/htc/util/calendar/HtcCalendarUtils;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;Z)Ljava/util/ArrayList;

    move-result-object v7

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_2
    return-object v7

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v4, "("

    const/4 v14, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v14, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    const-string v4, "visible=1"

    goto/16 :goto_1

    :cond_7
    const/high16 v1, 0x3f80

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_8

    const/high16 v1, 0x4000

    cmpg-float v1, v11, v1

    if-gez v1, :cond_8

    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto/16 :goto_2

    :cond_8
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto/16 :goto_2
.end method

.method private static query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v10, p1

    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v0, v10, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v11, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v11, Landroid/text/format/Time;->minute:I

    iput v1, v11, Landroid/text/format/Time;->second:I

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual {v11, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "visible=1"

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendarUtils;->getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    const-string v3, "calendar_id in ( "

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1 )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v3, "visible=1"

    goto :goto_1
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;Z)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/text/format/Time;",
            "Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    :cond_0
    new-instance v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v2}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v4, v8

    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/16 v8, 0x8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_2

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {v5, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-static {v5, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget v8, v6, Landroid/text/format/Time;->monthDay:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/text/format/Time;->monthDay:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_2

    const/4 v1, 0x1

    :cond_2
    div-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    rem-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    div-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    rem-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    :cond_3
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    :cond_4
    if-le v3, v4, :cond_7

    sub-int v8, v3, v4

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    :goto_1
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    iput-object p2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0xb

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-boolean v12, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    invoke-static {v8, v9, v10, v11, v12}, Lcom/htc/util/calendar/HtcCalendarUtils;->isRegularMeeting(JJZ)Z

    move-result v8

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :cond_5
    return-object v0

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    sub-int v8, v4, v3

    rsub-int v8, v8, 0x5a0

    int-to-long v8, v8

    :try_start_1
    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :cond_8
    throw v8

    :cond_9
    :try_start_2
    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_14

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    if-eqz v8, :cond_d

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_c

    :cond_a
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_b

    const/4 v2, 0x0

    goto :goto_2

    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v8, :cond_f

    if-eqz p3, :cond_e

    const/4 v2, 0x0

    goto :goto_2

    :cond_e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-nez v8, :cond_13

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_10

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_13

    :cond_10
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_11
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_12

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_14
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v8, :cond_15

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_16

    :cond_15
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_17

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_17

    :cond_16
    if-eqz p3, :cond_17

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/4 v10, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    const/4 v9, 0x0

    :goto_1
    sget-object v20, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_1

    iget v0, v13, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->year:I

    iget v0, v13, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->month:I

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    aget v21, v21, v9

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    const/16 v20, 0x17

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->hour:I

    const/16 v20, 0x3b

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->minute:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->second:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v13, v14, v1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    sget-object v20, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_1

    const/4 v10, 0x1

    :cond_1
    const/16 v16, -0x1

    const/4 v11, -0x1

    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_1a

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/text/format/Time;->set(J)V

    if-eqz v10, :cond_8

    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_5

    :cond_2
    if-nez v6, :cond_3

    move/from16 v16, v9

    move-object v6, v5

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_5
    if-nez v6, :cond_6

    move/from16 v16, v9

    move-object v6, v5

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    iget-boolean v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    move/from16 v16, v9

    move-object v6, v5

    goto :goto_3

    :cond_7
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    move/from16 v16, v9

    move-object v6, v5

    goto :goto_3

    :cond_8
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->hour:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->minute:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->second:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->hour:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->minute:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->second:I

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v4, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_9
    if-nez v6, :cond_3

    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_a
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_10

    if-eqz v6, :cond_e

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_b

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    move-wide/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_c

    :cond_b
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_d

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_d

    :cond_c
    const/4 v11, -0x1

    goto/16 :goto_3

    :cond_d
    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_e
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    :cond_f
    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_10
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    if-eqz v6, :cond_14

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x18

    cmp-long v20, v20, v22

    if-nez v20, :cond_11

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    :cond_11
    iget-boolean v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    iget-object v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v20, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_13

    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_12
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-lez v20, :cond_13

    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_13
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_3

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_14
    iget v0, v13, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    const/16 v16, -0x1

    goto/16 :goto_3

    :cond_15
    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v13, v8}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_17
    move/from16 v16, v9

    move-object v6, v5

    goto/16 :goto_3

    :cond_18
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_19

    invoke-virtual {v7, v15}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_19
    move v11, v9

    invoke-virtual {v12, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_3

    :cond_1a
    if-ltz v16, :cond_1d

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-boolean v3, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/text/format/Time;->set(J)V

    if-eqz v3, :cond_1b

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->hour:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->minute:I

    :cond_1b
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->second:I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    :goto_4
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1d
    if-ltz v11, :cond_1f

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-boolean v3, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v3, :cond_1e

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->hour:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->minute:I

    :cond_1e
    const/16 v20, 0x3b

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->second:I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    goto :goto_4

    :cond_1f
    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    const/4 v5, 0x0

    goto :goto_4
.end method

.method public static final queryTodayOnly(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v11, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/text/format/Time;->set(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    const/4 v5, 0x0

    iput v11, v6, Landroid/text/format/Time;->hour:I

    iput v11, v6, Landroid/text/format/Time;->minute:I

    iput v11, v6, Landroid/text/format/Time;->second:I

    const/16 v9, 0x17

    iput v9, v7, Landroid/text/format/Time;->hour:I

    const/16 v9, 0x3b

    iput v9, v7, Landroid/text/format/Time;->minute:I

    iput v11, v7, Landroid/text/format/Time;->second:I

    invoke-static {p0, v6, v7, p1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    if-eqz v5, :cond_2

    iget-wide v9, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    iget-wide v9, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    move-object v3, v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static schedularNextEvent(J)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    iput v5, v0, Landroid/text/format/Time;->hour:I

    iput v5, v0, Landroid/text/format/Time;->minute:I

    iput v5, v0, Landroid/text/format/Time;->second:I

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    move-wide p0, v1

    goto :goto_0
.end method

.method public static final startQuery(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {p0, v7, p1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-boolean v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v9, :cond_8

    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    cmp-long v9, v9, v1

    if-gez v9, :cond_7

    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    cmp-long v9, v9, v1

    if-lez v9, :cond_7

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-eqz v6, :cond_2

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    iget-wide v9, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    sub-long/2addr v9, v1

    const-wide/32 v11, 0x36ee80

    div-long/2addr v9, v11

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v6, :cond_0

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    if-nez v6, :cond_3

    move-object v6, v4

    goto :goto_1

    :cond_8
    if-nez v6, :cond_3

    move-object v6, v4

    goto :goto_1
.end method
