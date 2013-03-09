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

.field private static bSense21:Z = false

.field private static final localLOGV:Z = true

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

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 38
    const-string v0, "HtcCalendar"

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    .line 45
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

    .line 108
    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 109
    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 112
    sput-boolean v3, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 113
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 148
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 149
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 150
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSenseVersion()I
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x4

    .line 124
    .local v0, sense_version:I
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const/4 v0, 0x3

    goto :goto_0

    .line 130
    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    const/4 v0, 0x4

    goto :goto_0

    .line 132
    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static goToToday()V
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 599
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 600
    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    .line 601
    return-void
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 157
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 159
    if-eqz p4, :cond_0

    .line 160
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 165
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 167
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    .line 168
    const/4 v4, 0x1

    .line 171
    :goto_1
    return v4

    .line 162
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 171
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static query2Month(Landroid/text/format/Time;)I
    .locals 17
    .parameter "begin"

    .prologue
    .line 505
    move-object/from16 v13, p0

    .line 507
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 508
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 509
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 510
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3a

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 511
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 512
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 513
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 514
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 516
    .local v12, julian_day:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Week\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 519
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 520
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 522
    const/4 v3, 0x0

    .line 525
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 526
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 527
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 528
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 529
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    .line 530
    const-string v3, "visible=1"

    .line 546
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
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

    .line 554
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 556
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 557
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 558
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 561
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 563
    const/4 v7, 0x0

    .line 565
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 533
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 535
    :cond_4
    const-string v3, "("

    .line 536
    const/4 v11, 0x1

    .line 537
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 538
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 539
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

    .line 542
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 541
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

    .line 546
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 548
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final query2MonthEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "selectedId"
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

    .prologue
    .line 1112
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 1113
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1115
    if-nez p0, :cond_1

    .line 1116
    const/4 v0, 0x0

    .line 1193
    :goto_1
    return-object v0

    .line 1112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1119
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1120
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1123
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1126
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1127
    .local v13, queryBegin:Landroid/text/format/Time;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 1128
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 1129
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 1130
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1131
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1132
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1134
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1135
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 1136
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 1137
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1138
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 1139
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 1140
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 1141
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 1143
    .local v12, julian_day:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query 2 Month Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1146
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1147
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1149
    const/4 v3, 0x0

    .line 1152
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1153
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 1154
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1155
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1156
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    .line 1158
    const-string v3, "visible=1"

    .line 1174
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
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

    .line 1182
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1184
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1185
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 1186
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 1189
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1190
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1191
    const/4 v7, 0x0

    .line 1193
    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1161
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 1163
    :cond_7
    const-string v3, "("

    .line 1164
    const/4 v11, 0x1

    .line 1165
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1166
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    .line 1167
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

    .line 1170
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1169
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

    .line 1174
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1176
    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V
    .locals 12
    .parameter "c"
    .parameter "qbegin"
    .parameter "category"
    .parameter "skip_crossday_event"

    .prologue
    .line 178
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, start_mins:I
    const/4 v2, 0x0

    .line 182
    .local v2, end_mins:I
    const/4 v0, 0x0

    .line 183
    .local v0, bSkip:Z
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 184
    .local v6, tnow:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 187
    :cond_0
    new-instance v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    invoke-direct {v1}, Lcom/htc/util/calendar/HtcCalendar$Appointment;-><init>()V

    .line 188
    .local v1, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    .line 189
    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v2, v7

    .line 190
    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->id_:I

    .line 191
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->color_:I

    .line 192
    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 193
    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 195
    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 197
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_2

    .line 198
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 199
    .local v4, t:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 200
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 201
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 202
    .local v5, t1:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 203
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_1

    .line 204
    const/4 v0, 0x1

    .line 205
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

    .line 206
    const/4 v0, 0x1

    .line 209
    .end local v4           #t:Landroid/text/format/Time;
    .end local v5           #t1:Landroid/text/format/Time;
    :cond_2
    div-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    .line 210
    rem-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    .line 211
    div-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 212
    rem-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    .line 213
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 214
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 215
    :cond_3
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 216
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 218
    :cond_4
    if-le v2, v3, :cond_7

    .line 219
    sub-int v7, v2, v3

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    .line 220
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    .line 226
    :goto_1
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->title_:Ljava/lang/String;

    .line 227
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->location_:Ljava/lang/String;

    .line 228
    iput-object p2, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 232
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

    .line 234
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->startday_:J

    .line 235
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->endday_:J

    .line 237
    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 238
    const/16 v7, 0xf

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_type_:Ljava/lang/String;

    .line 239
    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 240
    const/16 v7, 0x11

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 242
    if-eqz v0, :cond_9

    .line 243
    const/4 v1, 0x0

    .line 244
    const/4 v0, 0x0

    .line 291
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 293
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 294
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 p0, 0x0

    .line 298
    :cond_5
    return-void

    .line 195
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 222
    :cond_7
    sub-int v7, v3, v2

    rsub-int v7, v7, 0x5a0

    int-to-long v7, v7

    :try_start_1
    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    .line 223
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 293
    .end local v0           #bSkip:Z
    .end local v1           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .end local v2           #end_mins:I
    .end local v3           #start_mins:I
    .end local v6           #tnow:Landroid/text/format/Time;
    :catchall_0
    move-exception v7

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_8

    .line 294
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 p0, 0x0

    :cond_8
    throw v7

    .line 246
    .restart local v0       #bSkip:Z
    .restart local v1       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .restart local v2       #end_mins:I
    .restart local v3       #start_mins:I
    .restart local v6       #tnow:Landroid/text/format/Time;
    :cond_9
    :try_start_2
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_14

    .line 248
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    if-eqz v7, :cond_d

    .line 249
    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_a

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_c

    .line 250
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

    .line 253
    const/4 v1, 0x0

    goto :goto_2

    .line 255
    :cond_b
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 260
    :cond_d
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-eqz v7, :cond_f

    .line 261
    if-eqz p3, :cond_e

    .line 262
    const/4 v1, 0x0

    goto :goto_2

    .line 264
    :cond_e
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 265
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

    .line 266
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

    .line 269
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 271
    :cond_11
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_12

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_12

    .line 272
    const/4 v1, 0x0

    .line 273
    goto/16 :goto_2

    .line 275
    :cond_12
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 278
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 281
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

    .line 284
    :cond_16
    if-eqz p3, :cond_17

    .line 285
    const/4 v1, 0x0

    .line 286
    goto/16 :goto_2

    .line 289
    :cond_17
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 22
    .parameter "context"
    .parameter "selectedId"

    .prologue
    .line 680
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    sput-boolean v18, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 681
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 683
    if-nez p0, :cond_1

    .line 684
    const/4 v4, 0x0

    .line 1003
    :goto_1
    return-object v4

    .line 680
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 687
    :cond_1
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v18, :cond_2

    .line 688
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 691
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 692
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 694
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 695
    .local v11, queryBegin:Landroid/text/format/Time;
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 696
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 697
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 700
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 701
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 702
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 704
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v3

    .line 706
    .local v3, count:I
    if-nez v3, :cond_3

    .line 707
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 708
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 709
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 710
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 711
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 712
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 713
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryTomorrow(Landroid/text/format/Time;)I

    move-result v3

    .line 716
    :cond_3
    const/16 v17, 0x0

    .line 718
    .local v17, weekevent:Z
    if-nez v3, :cond_4

    .line 719
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 720
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 721
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 722
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 723
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 724
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 725
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->query2Month(Landroid/text/format/Time;)I

    move-result v3

    .line 727
    if-lez v3, :cond_4

    .line 728
    const/16 v17, 0x1

    .line 748
    :cond_4
    const/4 v13, -0x1

    .line 749
    .local v13, startingEventIdx:I
    const/4 v9, -0x1

    .line 750
    .local v9, nonStartEventIdx:I
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 751
    .local v12, startingEventBegin:Landroid/text/format/Time;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 753
    .local v10, notStartEventBegin:Landroid/text/format/Time;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 754
    .local v6, eventBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 756
    .local v7, eventEnd:Landroid/text/format/Time;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 757
    .local v16, tnow:Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 760
    const/4 v5, 0x0

    .line 762
    .local v5, e_:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_1d

    .line 763
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 764
    .local v4, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 765
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 767
    sget-object v19, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Is today\'s event:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v18, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Event title:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->title_:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", start time:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", end time:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", monthday:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz v17, :cond_b

    .line 782
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 783
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 784
    :cond_5
    if-nez v5, :cond_6

    .line 785
    move v13, v8

    .line 786
    move-object v5, v4

    .line 762
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 767
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 793
    :cond_8
    if-nez v5, :cond_9

    .line 794
    move v13, v8

    .line 795
    move-object v5, v4

    .line 796
    goto :goto_4

    .line 798
    :cond_9
    if-eqz v5, :cond_a

    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 799
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 800
    .local v14, t1:Landroid/text/format/Time;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 802
    .local v15, t2:Landroid/text/format/Time;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 803
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 805
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

    .line 806
    move v13, v8

    .line 807
    move-object v5, v4

    .line 808
    goto :goto_4

    .line 811
    .end local v14           #t1:Landroid/text/format/Time;
    .end local v15           #t2:Landroid/text/format/Time;
    :cond_a
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 812
    move v13, v8

    .line 813
    move-object v5, v4

    .line 814
    goto :goto_4

    .line 819
    :cond_b
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 820
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 821
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 822
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    .line 823
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 824
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 825
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 827
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 828
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 829
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    const-string v19, "All day is the starting event"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_c

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 839
    :cond_c
    if-nez v5, :cond_6

    .line 840
    move v13, v8

    .line 841
    move-object v5, v4

    goto/16 :goto_4

    .line 852
    :cond_d
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_13

    .line 854
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    const-string v19, "starting event"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-eqz v5, :cond_11

    .line 858
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_e

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_f

    :cond_e
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_10

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_10

    .line 860
    :cond_f
    const/4 v9, -0x1

    .line 861
    goto/16 :goto_4

    .line 863
    :cond_10
    move v13, v8

    .line 864
    move-object v5, v4

    .line 865
    goto/16 :goto_4

    .line 868
    :cond_11
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 869
    :cond_12
    move v13, v8

    .line 870
    move-object v5, v4

    .line 871
    goto/16 :goto_4

    .line 874
    :cond_13
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_19

    .line 875
    if-eqz v5, :cond_17

    .line 876
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x18

    cmp-long v18, v18, v20

    if-nez v18, :cond_14

    .line 877
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 878
    :cond_14
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 880
    iget-object v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 882
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_16

    .line 883
    move v13, v8

    .line 884
    move-object v5, v4

    .line 885
    goto/16 :goto_4

    .line 888
    :cond_15
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-lez v18, :cond_16

    .line 889
    move v13, v8

    .line 890
    move-object v5, v4

    .line 891
    goto/16 :goto_4

    .line 896
    :cond_16
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_6

    .line 897
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 898
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 899
    move v13, v8

    .line 900
    move-object v5, v4

    .line 901
    goto/16 :goto_4

    .line 906
    :cond_17
    iget v0, v11, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    .line 907
    const/4 v13, -0x1

    .line 908
    goto/16 :goto_4

    .line 910
    :cond_18
    move v13, v8

    .line 911
    move-object v5, v4

    .line 912
    goto/16 :goto_4

    .line 915
    :cond_19
    invoke-virtual {v11, v7}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 917
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    const-string v19, "Ending event"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_1a

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 922
    :cond_1a
    move v13, v8

    .line 923
    move-object v5, v4

    .line 924
    goto/16 :goto_4

    .line 928
    :cond_1b
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    const-string v19, "not starting event"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_1c

    invoke-virtual {v6, v12}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 933
    :cond_1c
    move v9, v8

    .line 934
    invoke-virtual {v10, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_4

    .line 940
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_1d
    if-ltz v13, :cond_20

    .line 941
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 942
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 943
    .local v2, allDay:Z
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 949
    if-eqz v2, :cond_1e

    .line 950
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 951
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 953
    :cond_1e
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 956
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "##schedular query event on  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "day  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "hour  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->second:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sec "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    .line 998
    .end local v2           #allDay:Z
    :goto_5
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v18, :cond_1f

    .line 999
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1001
    :cond_1f
    const/16 v18, 0x0

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 963
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_20
    if-ltz v9, :cond_22

    .line 964
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 965
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 966
    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 971
    .restart local v2       #allDay:Z
    if-eqz v2, :cond_21

    .line 972
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 973
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 975
    :cond_21
    const/16 v18, 0x3b

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    .line 978
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "@@schedular query event on  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "day  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "hour  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Landroid/text/format/Time;->second:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sec "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    goto/16 :goto_5

    .line 991
    .end local v2           #allDay:Z
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_22
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    const-string v19, "no event, schedular query event on tomorrow  "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-wide/16 v18, -0x1

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    .line 995
    const/4 v4, 0x0

    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    goto/16 :goto_5
.end method

.method private static queryToday(Landroid/text/format/Time;)I
    .locals 16
    .parameter "begin"

    .prologue
    .line 301
    move-object/from16 v12, p0

    .line 303
    .local v12, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 304
    .local v13, queryEnd:Landroid/text/format/Time;
    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 305
    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 306
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 307
    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 308
    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 309
    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 312
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Today\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 317
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 318
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 320
    const/4 v3, 0x0

    .line 323
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 324
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 325
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 326
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 327
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    .line 329
    const-string v3, "visible=1"

    .line 345
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
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

    .line 355
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 358
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 359
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 362
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 364
    const/4 v7, 0x0

    .line 367
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 332
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 334
    :cond_4
    const-string v3, "("

    .line 335
    const/4 v11, 0x1

    .line 336
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 337
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 338
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

    .line 341
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 340
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

    .line 345
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 347
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryTodayOnly(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 13
    .parameter "context"
    .parameter "selectedId"

    .prologue
    .line 612
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 613
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 615
    if-nez p0, :cond_1

    .line 616
    const/4 v2, 0x0

    .line 668
    :goto_1
    return-object v2

    .line 612
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 619
    :cond_1
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v9, :cond_2

    .line 620
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 622
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, count:I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 628
    .local v7, queryBegin:Landroid/text/format/Time;
    const/4 v6, 0x0

    .line 629
    .local v6, onlytoday:Z
    if-nez v0, :cond_3

    .line 630
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iput v9, v7, Landroid/text/format/Time;->year:I

    .line 631
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->month:I

    iput v9, v7, Landroid/text/format/Time;->month:I

    .line 632
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    iput v9, v7, Landroid/text/format/Time;->monthDay:I

    .line 633
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->hour:I

    .line 634
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->minute:I

    .line 635
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->second:I

    .line 636
    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v0

    .line 638
    if-lez v0, :cond_3

    .line 639
    const/4 v6, 0x1

    .line 642
    :cond_3
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 643
    .local v3, eventBegin:Landroid/text/format/Time;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 645
    .local v4, eventEnd:Landroid/text/format/Time;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 646
    .local v8, tnow:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, e_:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v0, :cond_5

    .line 651
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 652
    .local v1, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v3, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 653
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-virtual {v4, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 655
    if-eqz v6, :cond_4

    .line 656
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

    .line 657
    move-object v2, v1

    .line 650
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 663
    .end local v1           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_5
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 664
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 666
    :cond_6
    const/4 v9, 0x0

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method private static queryTomorrow(Landroid/text/format/Time;)I
    .locals 16
    .parameter "begin"

    .prologue
    .line 371
    move-object/from16 v12, p0

    .line 373
    .local v12, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 374
    .local v13, queryEnd:Landroid/text/format/Time;
    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 375
    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 376
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 377
    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 378
    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 379
    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 382
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Tomorrow\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 388
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 389
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 391
    const/4 v3, 0x0

    .line 394
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 395
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 396
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 397
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 398
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    .line 400
    const-string v3, "visible=1"

    .line 416
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
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

    .line 426
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 429
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 430
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 433
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v7, 0x0

    .line 437
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 403
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 405
    :cond_4
    const-string v3, "("

    .line 406
    const/4 v11, 0x1

    .line 407
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 408
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 409
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

    .line 412
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 411
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

    .line 416
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 418
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method private static queryWeek(Landroid/text/format/Time;)I
    .locals 17
    .parameter "begin"

    .prologue
    .line 441
    move-object/from16 v13, p0

    .line 443
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 444
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 445
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 446
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 447
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 448
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 449
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 450
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 452
    .local v12, julian_day:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Week\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 455
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 456
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 458
    const/4 v3, 0x0

    .line 461
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 462
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 463
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 464
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 465
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    .line 466
    const-string v3, "visible=1"

    .line 482
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
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

    .line 490
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 492
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 493
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 494
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 497
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 499
    const/4 v7, 0x0

    .line 501
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 469
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 471
    :cond_4
    const-string v3, "("

    .line 472
    const/4 v11, 0x1

    .line 473
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 474
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 475
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

    .line 478
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 477
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

    .line 482
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 484
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryWeekEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "selectedId"
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

    .prologue
    .line 1017
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 1018
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1020
    if-nez p0, :cond_1

    .line 1021
    const/4 v0, 0x0

    .line 1098
    :goto_1
    return-object v0

    .line 1017
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1024
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1025
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1028
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1031
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1032
    .local v13, queryBegin:Landroid/text/format/Time;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 1033
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 1034
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 1035
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1036
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1037
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1039
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1040
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 1041
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 1042
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x7

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1043
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 1044
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 1045
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 1046
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 1048
    .local v12, julian_day:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query a Week\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1051
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1054
    const/4 v3, 0x0

    .line 1057
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1058
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 1059
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1060
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1061
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    .line 1063
    const-string v3, "visible=1"

    .line 1079
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
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

    .line 1087
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1090
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 1091
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 1094
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1095
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1096
    const/4 v7, 0x0

    .line 1098
    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1066
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 1068
    :cond_7
    const-string v3, "("

    .line 1069
    const/4 v11, 0x1

    .line 1070
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1071
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    .line 1072
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

    .line 1075
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1074
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

    .line 1079
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1081
    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static schedularNextEvent(J)V
    .locals 6
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    .line 570
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 571
    .local v0, next:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 572
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 573
    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 574
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 575
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 577
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 578
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    .line 588
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 589
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 590
    sget-object v3, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using alarm to schedule at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 581
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 582
    .local v1, t:J
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 583
    move-wide p0, v1

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1212
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1213
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1214
    :cond_0
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 1216
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1217
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1218
    :cond_1
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1220
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1221
    return-void
.end method

.method public setSelectedList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1205
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sput-object p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 1206
    return-void
.end method
