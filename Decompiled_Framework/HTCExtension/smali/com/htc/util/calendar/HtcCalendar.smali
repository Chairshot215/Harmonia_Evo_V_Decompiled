.class public final Lcom/htc/util/calendar/HtcCalendar;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/HtcCalendar$EventCategory;,
        Lcom/htc/util/calendar/HtcCalendar$Appointment;
    }
.end annotation


# static fields
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

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static bSense21:Z

.field private static final localLOGV:Z

.field private static mAppointmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSelectedId:J

.field private static mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "HtcCalendar"

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    sput-boolean v3, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method private static getSenseVersion()I
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static goToToday()V
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    return-void
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

.method private static query2Month(Landroid/text/format/Time;)I
    .locals 17

    move-object/from16 v13, p0

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3a

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    const-string v3, "visible=1"

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, "("

    const/4 v11, 0x1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final query2MonthEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    const-string v3, "visible=1"

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    const-string v3, "("

    const/4 v11, 0x1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V
    .locals 12

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    :cond_0
    new-instance v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    invoke-direct {v1}, Lcom/htc/util/calendar/HtcCalendar$Appointment;-><init>()V

    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v2, v7

    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->id_:I

    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->color_:I

    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_2

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    if-le v7, v8, :cond_2

    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    div-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    rem-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    div-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    rem-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    :cond_3
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    :cond_4
    if-le v2, v3, :cond_7

    sub-int v7, v2, v3

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    :goto_1
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->title_:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->location_:Ljava/lang/String;

    iput-object p2, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v9, 0xb

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iget-boolean v11, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/util/calendar/HtcCalendar;->isRegularMeeting(JJZ)Z

    move-result v7

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->startday_:J

    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->endday_:J

    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_source_id_:Ljava/lang/String;

    const/16 v7, 0xf

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_type_:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    const/16 v7, 0x11

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :cond_5
    return-void

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    sub-int v7, v3, v2

    rsub-int v7, v7, 0x5a0

    int-to-long v7, v7

    :try_start_1
    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :cond_8
    throw v7

    :cond_9
    :try_start_2
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_14

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    if-eqz v7, :cond_d

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_a

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_c

    :cond_a
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    const/4 v1, 0x0

    goto :goto_2

    :cond_b
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    :cond_d
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-eqz v7, :cond_f

    if-eqz p3, :cond_e

    const/4 v1, 0x0

    goto :goto_2

    :cond_e
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-nez v7, :cond_13

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_10

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_13

    :cond_10
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_11
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_12

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_12

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_12
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_14
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_15

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_16

    :cond_15
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_17

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_17

    :cond_16
    if-eqz p3, :cond_17

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_17
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 22

    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    sput-boolean v18, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    if-nez p0, :cond_1

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v18, :cond_2

    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v3

    if-nez v3, :cond_3

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryTomorrow(Landroid/text/format/Time;)I

    move-result v3

    :cond_3
    const/16 v17, 0x0

    if-nez v3, :cond_4

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->query2Month(Landroid/text/format/Time;)I

    move-result v3

    if-lez v3, :cond_4

    const/16 v17, 0x1

    :cond_4
    const/4 v13, -0x1

    const/4 v9, -0x1

    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_1c

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    if-eqz v17, :cond_a

    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_5
    if-nez v5, :cond_6

    move v13, v8

    move-object v5, v4

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    if-nez v5, :cond_8

    move v13, v8

    move-object v5, v4

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    move v13, v8

    move-object v5, v4

    goto :goto_3

    :cond_9
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    move v13, v8

    move-object v5, v4

    goto :goto_3

    :cond_a
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_b

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_b
    if-nez v5, :cond_6

    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_c
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    if-eqz v5, :cond_10

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_d

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_e

    :cond_d
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_f

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_f

    :cond_e
    const/4 v9, -0x1

    goto/16 :goto_3

    :cond_f
    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_10
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    :cond_11
    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_12
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_18

    if-eqz v5, :cond_16

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x18

    cmp-long v18, v18, v20

    if-nez v18, :cond_13

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    :cond_13
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    iget-object v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_15

    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_14
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-lez v18, :cond_15

    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_15
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_6

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_16
    iget v0, v11, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    const/4 v13, -0x1

    goto/16 :goto_3

    :cond_17
    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_18
    invoke-virtual {v11, v7}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_19

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_19
    move v13, v8

    move-object v5, v4

    goto/16 :goto_3

    :cond_1a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_1b

    invoke-virtual {v6, v12}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_1b
    move v9, v8

    invoke-virtual {v10, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_3

    :cond_1c
    if-ltz v13, :cond_1f

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    if-eqz v2, :cond_1d

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    :cond_1d
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    :goto_4
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v18, :cond_1e

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    const/16 v18, 0x0

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_1f
    if-ltz v9, :cond_21

    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v2, :cond_20

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    :cond_20
    const/16 v18, 0x3b

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    goto :goto_4

    :cond_21
    const-wide/16 v18, -0x1

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    const/4 v4, 0x0

    goto :goto_4
.end method

.method private static queryToday(Landroid/text/format/Time;)I
    .locals 16

    move-object/from16 v12, p0

    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    const-string v3, "visible=1"

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, "("

    const/4 v11, 0x1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryTodayOnly(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 13

    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v9, :cond_2

    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    const/4 v6, 0x0

    if-nez v0, :cond_3

    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iput v9, v7, Landroid/text/format/Time;->year:I

    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->month:I

    iput v9, v7, Landroid/text/format/Time;->month:I

    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    iput v9, v7, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->second:I

    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v3, v9, v10}, Landroid/text/format/Time;->set(J)V

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-virtual {v4, v9, v10}, Landroid/text/format/Time;->set(J)V

    if-eqz v6, :cond_4

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    move-object v2, v1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_6
    const/4 v9, 0x0

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method private static queryTomorrow(Landroid/text/format/Time;)I
    .locals 16

    move-object/from16 v12, p0

    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    const-string v3, "visible=1"

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, "("

    const/4 v11, 0x1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method private static queryWeek(Landroid/text/format/Time;)I
    .locals 17

    move-object/from16 v13, p0

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    const-string v3, "visible=1"

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, "("

    const/4 v11, 0x1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryWeekEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x7

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    const-string v3, "visible=1"

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    const-string v3, "("

    const/4 v11, 0x1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
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


# virtual methods
.method public release()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setSelectedList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    return-void
.end method
