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

.field private static final localLOGV:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 26
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

    .line 72
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

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z
    .locals 5
    .parameter "e"
    .parameter "today"

    .prologue
    const/4 v0, 0x0

    .line 935
    iget-boolean v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v0

    .line 937
    :cond_1
    iget-boolean v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 940
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 112
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 114
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .locals 4
    .parameter "today"
    .parameter "startDay"

    .prologue
    .line 925
    int-to-long v0, p0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 926
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 930
    :goto_0
    return-object v0

    .line 927
    :cond_0
    int-to-long v0, p0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 928
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0

    .line 930
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0
.end method

.method private static getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 13
    .parameter "c"
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

    .prologue
    .line 839
    if-nez p0, :cond_1

    .line 840
    const/4 v0, 0x0

    .line 921
    :cond_0
    :goto_0
    return-object v0

    .line 843
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 844
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 845
    const/4 p0, 0x0

    .line 846
    const/4 v0, 0x0

    goto :goto_0

    .line 849
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 854
    const/4 v5, 0x0

    .line 855
    .local v5, start_mins:I
    const/4 v3, 0x0

    .line 856
    .local v3, end_mins:I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 857
    .local v7, tnow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 858
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    iget-wide v10, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 861
    .local v4, julianDay:I
    :cond_3
    new-instance v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v2}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    .line 862
    .local v2, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v5, v8

    .line 863
    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    .line 864
    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    .line 865
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    .line 866
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 867
    const/16 v8, 0x8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 869
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 871
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_4

    .line 872
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 873
    .local v6, t:Landroid/text/format/Time;
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {v6, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 874
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-static {v6, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 877
    .end local v6           #t:Landroid/text/format/Time;
    :cond_4
    div-int/lit8 v8, v5, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    .line 878
    rem-int/lit8 v8, v5, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    .line 879
    div-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 880
    rem-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    .line 881
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 882
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 883
    :cond_5
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    .line 884
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 886
    :cond_6
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    .line 887
    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    .line 888
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 889
    .local v1, duration:I
    const/4 v8, 0x1

    if-ge v1, v8, :cond_9

    .line 890
    sub-int v8, v3, v5

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 891
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    .line 897
    :goto_2
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    .line 898
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    .line 899
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    invoke-static {v4, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 902
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

    .line 903
    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 904
    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    .line 905
    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 906
    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 908
    invoke-static {v2, v4}, Lcom/htc/util/calendar/HtcCalendarUtils;->checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 909
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    .line 915
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 916
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 917
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 869
    .end local v1           #duration:I
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 893
    .restart local v1       #duration:I
    :cond_9
    add-int/lit8 v8, v1, -0x1

    mul-int/lit16 v8, v8, 0x5a0

    rsub-int v9, v5, 0x5a0

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    int-to-long v8, v8

    :try_start_1
    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 894
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 912
    .end local v1           #duration:I
    .end local v2           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v3           #end_mins:I
    .end local v4           #julianDay:I
    .end local v5           #start_mins:I
    .end local v7           #tnow:Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 913
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 915
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 916
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 917
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 915
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_a

    .line 916
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 917
    const/4 p0, 0x0

    :cond_a
    throw v8
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 121
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 123
    if-eqz p4, :cond_0

    .line 124
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 129
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 131
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    .line 132
    const/4 v4, 0x1

    .line 135
    :goto_1
    return v4

    .line 126
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 135
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter
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

    .prologue
    .line 267
    .local p3, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v15, p1

    .line 268
    .local v15, queryBegin:Landroid/text/format/Time;
    move-object/from16 v16, p2

    .line 269
    .local v16, queryEnd:Landroid/text/format/Time;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v7, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    const-string v1, "HtcCalendarUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query Today\'s Events begin time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", calendar_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 279
    .local v8, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 280
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 282
    const/4 v4, 0x0

    .line 285
    .local v4, selection:Ljava/lang/String;
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 288
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 289
    .local v17, selectedId:I
    if-nez v17, :cond_3

    .line 292
    const-string v4, "visible=1"

    .line 308
    .end local v17           #selectedId:I
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
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

    .line 319
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 321
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

    .line 322
    .local v11, duration:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v11, v1

    if-gez v1, :cond_7

    .line 323
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 330
    .local v10, category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    :goto_2
    const/4 v1, 0x1

    invoke-static {v9, v15, v10, v1}, Lcom/htc/util/calendar/HtcCalendarUtils;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 333
    .end local v10           #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .end local v11           #duration:F
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 335
    const/4 v9, 0x0

    .line 338
    :cond_2
    return-object v7

    .line 295
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v17       #selectedId:I
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

    .line 297
    .end local v17           #selectedId:I
    :cond_4
    const-string v4, "("

    .line 298
    const/4 v14, 0x1

    .line 299
    .local v14, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 300
    .local v12, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v14, v1, :cond_5

    .line 301
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

    .line 304
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 303
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

    .line 308
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 311
    :cond_6
    const-string v4, "visible=1"

    goto/16 :goto_1

    .line 324
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v11       #duration:F
    :cond_7
    const/high16 v1, 0x3f80

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_8

    const/high16 v1, 0x4000

    cmpg-float v1, v11, v1

    if-gez v1, :cond_8

    .line 325
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .restart local v10       #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    goto/16 :goto_2

    .line 327
    .end local v10           #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    :cond_8
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .restart local v10       #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    goto/16 :goto_2
.end method

.method private static query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter "begin"
    .parameter
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

    .prologue
    .local p2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 797
    move-object v10, p1

    .line 798
    .local v10, queryBegin:Landroid/text/format/Time;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 799
    .local v11, queryEnd:Landroid/text/format/Time;
    iget v0, v10, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 800
    const/16 v0, 0x17

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 801
    const/16 v0, 0x3b

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 802
    iput v1, v11, Landroid/text/format/Time;->second:I

    .line 804
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 805
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v10, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 806
    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 808
    const/4 v3, 0x0

    .line 811
    .local v3, selection:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    monitor-enter p0

    .line 813
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 814
    const-string v3, "visible=1"

    .line 823
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :goto_1
    const-string v0, "HtcCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Today\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v0, "HtcCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 834
    .local v7, c:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendarUtils;->getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 817
    .end local v7           #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    const-string v3, "calendar_id in ( "

    .line 818
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 819
    .local v8, i:I
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

    .line 821
    .end local v8           #i:I
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

    goto/16 :goto_0

    .line 823
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 825
    :cond_2
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;Z)Ljava/util/ArrayList;
    .locals 13
    .parameter "c"
    .parameter "qbegin"
    .parameter "category"
    .parameter "skip_crossday_event"
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

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, start_mins:I
    const/4 v3, 0x0

    .line 146
    .local v3, end_mins:I
    const/4 v1, 0x0

    .line 147
    .local v1, bSkip:Z
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 148
    .local v7, tnow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 151
    :cond_0
    new-instance v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v2}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    .line 152
    .local v2, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v4, v8

    .line 153
    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    .line 154
    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    .line 155
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    .line 156
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 157
    const/16 v8, 0x8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 159
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 161
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_2

    .line 162
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 163
    .local v5, t:Landroid/text/format/Time;
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {v5, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 164
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-static {v5, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 165
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 166
    .local v6, t1:Landroid/text/format/Time;
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 167
    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_1

    .line 168
    const/4 v1, 0x1

    .line 169
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

    .line 170
    const/4 v1, 0x1

    .line 173
    .end local v5           #t:Landroid/text/format/Time;
    .end local v6           #t1:Landroid/text/format/Time;
    :cond_2
    div-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    .line 174
    rem-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    .line 175
    div-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 176
    rem-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    .line 177
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 178
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 179
    :cond_3
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    .line 180
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 182
    :cond_4
    if-le v3, v4, :cond_7

    .line 183
    sub-int v8, v3, v4

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 184
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    .line 190
    :goto_1
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    .line 191
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    .line 192
    iput-object p2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 196
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

    .line 198
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    .line 199
    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    .line 201
    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 202
    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    .line 203
    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 204
    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 206
    if-eqz v1, :cond_9

    .line 207
    const/4 v2, 0x0

    .line 208
    const/4 v1, 0x0

    .line 255
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 257
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_5

    .line 258
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 259
    const/4 p0, 0x0

    .line 263
    :cond_5
    return-object v0

    .line 159
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 186
    :cond_7
    sub-int v8, v4, v3

    rsub-int v8, v8, 0x5a0

    int-to-long v8, v8

    :try_start_1
    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 187
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    .end local v1           #bSkip:Z
    .end local v2           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v3           #end_mins:I
    .end local v4           #start_mins:I
    .end local v7           #tnow:Landroid/text/format/Time;
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 258
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 259
    const/4 p0, 0x0

    :cond_8
    throw v8

    .line 210
    .restart local v1       #bSkip:Z
    .restart local v2       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v3       #end_mins:I
    .restart local v4       #start_mins:I
    .restart local v7       #tnow:Landroid/text/format/Time;
    :cond_9
    :try_start_2
    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_14

    .line 212
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    if-eqz v8, :cond_d

    .line 213
    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_c

    .line 214
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

    .line 217
    const/4 v2, 0x0

    goto :goto_2

    .line 219
    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 222
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 224
    :cond_d
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v8, :cond_f

    .line 225
    if-eqz p3, :cond_e

    .line 226
    const/4 v2, 0x0

    goto :goto_2

    .line 228
    :cond_e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 229
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

    .line 230
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

    .line 233
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 235
    :cond_11
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_12

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_12

    .line 236
    const/4 v2, 0x0

    .line 237
    goto/16 :goto_2

    .line 239
    :cond_12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 242
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 245
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

    .line 248
    :cond_16
    if-eqz p3, :cond_17

    .line 249
    const/4 v2, 0x0

    .line 250
    goto/16 :goto_2

    .line 253
    :cond_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 24
    .parameter "context"
    .parameter
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

    .prologue
    .line 441
    .local p1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 442
    const/4 v5, 0x0

    .line 724
    :goto_0
    return-object v5

    .line 445
    :cond_0
    const/4 v10, 0x0

    .line 446
    .local v10, monthEvent:Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v4, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 449
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 450
    .local v14, queryEnd:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 452
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    sget-object v20, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_1

    .line 453
    iget v0, v13, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 454
    iget v0, v13, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 455
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    aget v21, v21, v9

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 456
    const/16 v20, 0x17

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 457
    const/16 v20, 0x3b

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 458
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v13, v14, v1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 461
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 462
    sget-object v20, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_1

    .line 463
    const/4 v10, 0x1

    .line 469
    :cond_1
    const/16 v16, -0x1

    .line 470
    .local v16, startingEventIdx:I
    const/4 v11, -0x1

    .line 471
    .local v11, nonStartEventIdx:I
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 472
    .local v15, startingEventBegin:Landroid/text/format/Time;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 474
    .local v12, notStartEventBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 475
    .local v7, eventBegin:Landroid/text/format/Time;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 477
    .local v8, eventEnd:Landroid/text/format/Time;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 478
    .local v19, tnow:Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 481
    const/4 v6, 0x0

    .line 483
    .local v6, e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_1b

    .line 484
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 485
    .local v5, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 486
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 488
    const-string v21, "HtcCalendarUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Is today\'s event:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v20, v0

    sget-object v23, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v20, "HtcCalendarUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Event title:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", start time:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", end time:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", monthday:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v10, :cond_9

    .line 503
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 504
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 505
    :cond_2
    if-nez v6, :cond_3

    .line 506
    move/from16 v16, v9

    .line 507
    move-object v6, v5

    .line 483
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 452
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v6           #e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v7           #eventBegin:Landroid/text/format/Time;
    .end local v8           #eventEnd:Landroid/text/format/Time;
    .end local v11           #nonStartEventIdx:I
    .end local v12           #notStartEventBegin:Landroid/text/format/Time;
    .end local v15           #startingEventBegin:Landroid/text/format/Time;
    .end local v16           #startingEventIdx:I
    .end local v19           #tnow:Landroid/text/format/Time;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 488
    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v6       #e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v7       #eventBegin:Landroid/text/format/Time;
    .restart local v8       #eventEnd:Landroid/text/format/Time;
    .restart local v11       #nonStartEventIdx:I
    .restart local v12       #notStartEventBegin:Landroid/text/format/Time;
    .restart local v15       #startingEventBegin:Landroid/text/format/Time;
    .restart local v16       #startingEventIdx:I
    .restart local v19       #tnow:Landroid/text/format/Time;
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 514
    :cond_6
    if-nez v6, :cond_7

    .line 515
    move/from16 v16, v9

    .line 516
    move-object v6, v5

    .line 517
    goto :goto_4

    .line 519
    :cond_7
    if-eqz v6, :cond_8

    iget-boolean v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 520
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 521
    .local v17, t1:Landroid/text/format/Time;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 523
    .local v18, t2:Landroid/text/format/Time;
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 524
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 526
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

    .line 527
    move/from16 v16, v9

    .line 528
    move-object v6, v5

    .line 529
    goto :goto_4

    .line 532
    .end local v17           #t1:Landroid/text/format/Time;
    .end local v18           #t2:Landroid/text/format/Time;
    :cond_8
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 533
    move/from16 v16, v9

    .line 534
    move-object v6, v5

    .line 535
    goto/16 :goto_4

    .line 540
    :cond_9
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 541
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 542
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 543
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 544
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->hour:I

    .line 545
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->minute:I

    .line 546
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->second:I

    .line 548
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 549
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 550
    invoke-virtual {v4, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v20, "HtcCalendarUtils"

    const-string v21, "All day is the starting event"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 560
    :cond_a
    if-nez v6, :cond_3

    .line 561
    move/from16 v16, v9

    .line 562
    move-object v6, v5

    goto/16 :goto_4

    .line 573
    :cond_b
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_11

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_11

    .line 575
    const-string v20, "HtcCalendarUtils"

    const-string v21, "starting event"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    if-eqz v6, :cond_f

    .line 579
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_c

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    move-wide/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_d

    :cond_c
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_e

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_e

    .line 581
    :cond_d
    const/4 v11, -0x1

    .line 582
    goto/16 :goto_4

    .line 584
    :cond_e
    move/from16 v16, v9

    .line 585
    move-object v6, v5

    .line 586
    goto/16 :goto_4

    .line 589
    :cond_f
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 590
    :cond_10
    move/from16 v16, v9

    .line 591
    move-object v6, v5

    .line 592
    goto/16 :goto_4

    .line 595
    :cond_11
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_17

    .line 596
    if-eqz v6, :cond_15

    .line 597
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x18

    cmp-long v20, v20, v22

    if-nez v20, :cond_12

    .line 598
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 599
    :cond_12
    iget-boolean v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 601
    iget-object v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v20, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 603
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_14

    .line 604
    move/from16 v16, v9

    .line 605
    move-object v6, v5

    .line 606
    goto/16 :goto_4

    .line 609
    :cond_13
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-lez v20, :cond_14

    .line 610
    move/from16 v16, v9

    .line 611
    move-object v6, v5

    .line 612
    goto/16 :goto_4

    .line 617
    :cond_14
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_3

    .line 618
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 619
    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 620
    move/from16 v16, v9

    .line 621
    move-object v6, v5

    .line 622
    goto/16 :goto_4

    .line 627
    :cond_15
    iget v0, v13, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    .line 628
    const/16 v16, -0x1

    .line 629
    goto/16 :goto_4

    .line 631
    :cond_16
    move/from16 v16, v9

    .line 632
    move-object v6, v5

    .line 633
    goto/16 :goto_4

    .line 636
    :cond_17
    invoke-virtual {v13, v8}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 638
    const-string v20, "HtcCalendarUtils"

    const-string v21, "Ending event"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 643
    :cond_18
    move/from16 v16, v9

    .line 644
    move-object v6, v5

    .line 645
    goto/16 :goto_4

    .line 649
    :cond_19
    const-string v20, "HtcCalendarUtils"

    const-string v21, "not starting event"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_1a

    invoke-virtual {v7, v15}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 654
    :cond_1a
    move v11, v9

    .line 655
    invoke-virtual {v12, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_4

    .line 661
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_1b
    if-ltz v16, :cond_1e

    .line 662
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 663
    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-boolean v3, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 664
    .local v3, allDay:Z
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 670
    if-eqz v3, :cond_1c

    .line 671
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->hour:I

    .line 672
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->minute:I

    .line 674
    :cond_1c
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->second:I

    .line 677
    const-string v20, "HtcCalendarUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "##schedular query event on  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "day  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "hour  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "min "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->second:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "sec "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    .line 719
    .end local v3           #allDay:Z
    :goto_5
    if-eqz v4, :cond_1d

    .line 720
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 722
    :cond_1d
    const/4 v4, 0x0

    .line 724
    goto/16 :goto_0

    .line 684
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_1e
    if-ltz v11, :cond_20

    .line 685
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 686
    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 687
    iget-boolean v3, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 692
    .restart local v3       #allDay:Z
    if-eqz v3, :cond_1f

    .line 693
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 694
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 696
    :cond_1f
    const/16 v20, 0x3b

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 699
    const-string v20, "HtcCalendarUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "@@schedular query event on  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "day  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "hour  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "min "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v8, Landroid/text/format/Time;->second:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "sec "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    goto/16 :goto_5

    .line 712
    .end local v3           #allDay:Z
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_20
    const-string v20, "HtcCalendarUtils"

    const-string v21, "no event, schedular query event on tomorrow  "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    .line 716
    const/4 v5, 0x0

    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    goto/16 :goto_5
.end method

.method public static final queryTodayOnly(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 14
    .parameter "context"
    .parameter
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

    .prologue
    .local p1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 380
    if-nez p0, :cond_0

    .line 381
    const/4 v3, 0x0

    .line 428
    :goto_0
    return-object v3

    .line 384
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    const/4 v1, 0x0

    .line 387
    .local v1, count:I
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 388
    .local v6, queryBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 389
    .local v7, queryEnd:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 392
    const/4 v5, 0x0

    .line 394
    .local v5, onlytoday:Z
    iput v11, v6, Landroid/text/format/Time;->hour:I

    .line 395
    iput v11, v6, Landroid/text/format/Time;->minute:I

    .line 396
    iput v11, v6, Landroid/text/format/Time;->second:I

    .line 397
    const/16 v9, 0x17

    iput v9, v7, Landroid/text/format/Time;->hour:I

    .line 398
    const/16 v9, 0x3b

    iput v9, v7, Landroid/text/format/Time;->minute:I

    .line 399
    iput v11, v7, Landroid/text/format/Time;->second:I

    .line 400
    invoke-static {p0, v6, v7, p1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 403
    const/4 v5, 0x1

    .line 404
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 407
    :cond_1
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 408
    .local v8, tnow:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 413
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 415
    .local v2, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    if-eqz v5, :cond_2

    .line 416
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

    .line 417
    move-object v3, v2

    .line 412
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 423
    .end local v2           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_3
    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    :cond_4
    const/4 v0, 0x0

    .line 428
    goto :goto_0
.end method

.method private static schedularNextEvent(J)V
    .locals 6
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    .line 343
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 344
    .local v0, next:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 345
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 346
    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 347
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 348
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 350
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 351
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    .line 361
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 362
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 363
    const-string v3, "HtcCalendarUtils"

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

    .line 365
    return-void

    .line 354
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 355
    .local v1, t:J
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 356
    move-wide p0, v1

    goto :goto_0
.end method

.method public static final startQuery(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter
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

    .prologue
    .line 728
    .local p1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 729
    const/4 v8, 0x0

    .line 793
    :cond_0
    :goto_0
    return-object v8

    .line 732
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 735
    .local v7, queryBegin:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 736
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 738
    .local v1, begin:J
    invoke-static {p0, v7, p1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 740
    const/4 v3, 0x0

    .line 741
    .local v3, currentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v6, 0x0

    .line 743
    .local v6, nextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 744
    .local v4, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-boolean v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v9, :cond_8

    .line 745
    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    cmp-long v9, v9, v1

    if-gez v9, :cond_7

    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    cmp-long v9, v9, v1

    if-lez v9, :cond_7

    .line 746
    if-nez v3, :cond_3

    .line 747
    move-object v3, v4

    .line 749
    const-string v9, "HtcCalendarUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentEvent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", begin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-eqz v6, :cond_2

    .line 777
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v8, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    if-eqz v3, :cond_6

    .line 779
    if-eqz v6, :cond_6

    .line 780
    iget-wide v9, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    sub-long/2addr v9, v1

    const-wide/32 v11, 0x36ee80

    div-long/2addr v9, v11

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    .line 782
    const-string v9, "HtcCalendarUtils"

    const-string v10, "currentEvent, nextEvent is within 2 Hours!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_6
    if-eqz v6, :cond_0

    .line 790
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 754
    .end local v8           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_7
    if-nez v6, :cond_3

    .line 755
    move-object v6, v4

    .line 757
    const-string v9, "HtcCalendarUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nextEvent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", begin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 763
    :cond_8
    if-nez v6, :cond_3

    .line 764
    move-object v6, v4

    .line 766
    const-string v9, "HtcCalendarUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allDayEvent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", begin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
