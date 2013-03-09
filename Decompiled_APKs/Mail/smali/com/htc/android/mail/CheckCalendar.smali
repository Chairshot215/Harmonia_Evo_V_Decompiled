.class public Lcom/htc/android/mail/CheckCalendar;
.super Ljava/lang/Object;
.source "CheckCalendar.java"


# static fields
.field private static DEBUG:Z = false

.field static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field public static final INDEX_ALL_DAY:I = 0x2

.field public static final INDEX_BEGIN:I = 0x3

.field public static final INDEX_END:I = 0x4

.field public static final INDEX_END_DAY:I = 0x6

.field public static final INDEX_END_MINUTE:I = 0x8

.field public static final INDEX_START_DAY:I = 0x5

.field public static final INDEX_START_MINUTE:I = 0x7

.field public static final INDEX_TITLE:I = 0x1

.field public static final INSTANCES_PROJ:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CheckCalendar"

.field private static end:J

.field private static mEndTime:Landroid/text/format/Time;

.field private static mStartTime:Landroid/text/format/Time;

.field private static start:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/CheckCalendar;->DEBUG:Z

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/CheckCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 115
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 117
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "starttime"
    .parameter "endtime"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    .line 89
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Lcom/htc/android/mail/CheckCalendar;->mEndTime:Landroid/text/format/Time;

    .line 91
    const-string v2, "\\-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\:"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, strTemp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 95
    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/mail/CheckCalendar;->start:J

    .line 97
    const-string v2, "\\-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\:"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 101
    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/mail/CheckCalendar;->end:J

    .line 104
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 105
    .local v1, t:Landroid/text/format/Time;
    sget-wide v2, Lcom/htc/android/mail/CheckCalendar;->start:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/CheckCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/mail/CheckCalendar;->start:J

    .line 106
    sget-wide v2, Lcom/htc/android/mail/CheckCalendar;->end:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/CheckCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/mail/CheckCalendar;->end:J

    .line 108
    return-void
.end method

.method private static getTimeMills(IIIIII)J
    .locals 7
    .parameter "second"
    .parameter "minute"
    .parameter "hour"
    .parameter "monthDay"
    .parameter "month"
    .parameter "year"

    .prologue
    .line 217
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .local v0, t:Landroid/text/format/Time;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 218
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public static isConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "starttime"
    .parameter "endtime"
    .parameter "subject"

    .prologue
    .line 49
    invoke-static/range {p1 .. p2}, Lcom/htc/android/mail/CheckCalendar;->getTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 53
    .local v1, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 56
    .local v13, queryEnd:Landroid/text/format/Time;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    sget-object v6, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    sget-object v7, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 57
    const/16 v3, 0x3b

    const/16 v4, 0x3b

    const/16 v5, 0x17

    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mEndTime:Landroid/text/format/Time;

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mEndTime:Landroid/text/format/Time;

    iget v7, v2, Landroid/text/format/Time;->month:I

    sget-object v2, Lcom/htc/android/mail/CheckCalendar;->mEndTime:Landroid/text/format/Time;

    iget v8, v2, Landroid/text/format/Time;->year:I

    move-object v2, v13

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 60
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 61
    .local v10, builder:Landroid/net/Uri$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/CheckCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const-string v5, "visible=1"

    const/4 v6, 0x0

    const-string v7, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 75
    .local v11, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 76
    .local v9, bConflict:Z
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/htc/android/mail/CheckCalendar;->parseCursor(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 81
    const/4 v13, 0x0

    .line 83
    .end local v9           #bConflict:Z
    :goto_0
    return v9

    .line 69
    .end local v11           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 70
    .local v12, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 71
    .restart local v11       #c:Landroid/database/Cursor;
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 124
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 126
    if-eqz p4, :cond_0

    .line 127
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 132
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 134
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    .line 135
    const/4 v4, 0x1

    .line 138
    :goto_1
    return v4

    .line 129
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 138
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static parseCursor(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 29
    .parameter "c"
    .parameter "subject"

    .prologue
    .line 143
    const/4 v13, 0x0

    .line 144
    .local v13, bConflict:Z
    const/4 v12, 0x0

    .line 145
    .local v12, bAllday:Z
    const/4 v14, 0x0

    .line 148
    .local v14, bRegular:Z
    const/16 v26, 0x0

    .line 150
    .local v26, sSubject:Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    :cond_0
    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v3, v6, :cond_8

    const/4 v12, 0x1

    .line 153
    :goto_0
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v12}, Lcom/htc/android/mail/CheckCalendar;->isRegularMeeting(JJZ)Z

    move-result v14

    .line 154
    if-nez v12, :cond_5

    .line 155
    new-instance v28, Landroid/text/format/Time;

    invoke-direct/range {v28 .. v28}, Landroid/text/format/Time;-><init>()V

    .line 158
    .local v28, t:Landroid/text/format/Time;
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v28

    invoke-static {v0, v6, v7}, Lcom/htc/android/mail/CheckCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v22

    .line 159
    .local v22, evbegin:J
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v28

    invoke-static {v0, v6, v7}, Lcom/htc/android/mail/CheckCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v24

    .line 160
    .local v24, evend:J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 162
    if-eqz v14, :cond_3

    .line 163
    const/16 v27, 0x0

    .line 164
    .local v27, start_mins:I
    const/16 v19, 0x0

    .line 165
    .local v19, end_mins:I
    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v27, v0

    .line 166
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v19, v0

    .line 168
    div-int/lit8 v5, v27, 0x3c

    .line 169
    .local v5, starthour:I
    rem-int/lit8 v4, v27, 0x3c

    .line 170
    .local v4, startmins:I
    div-int/lit8 v20, v19, 0x3c

    .line 171
    .local v20, endhour:I
    rem-int/lit8 v21, v19, 0x3c

    .line 172
    .local v21, endmins:I
    move/from16 v0, v20

    if-ge v0, v5, :cond_1

    .line 173
    add-int/lit8 v20, v20, 0x18

    .line 174
    :cond_1
    const/16 v3, 0x18

    move/from16 v0, v20

    if-lt v0, v3, :cond_2

    .line 175
    add-int/lit8 v20, v20, -0x18

    .line 178
    :cond_2
    const/4 v3, 0x0

    sget-object v6, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->monthDay:I

    sget-object v7, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    sget-object v8, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->year:I

    invoke-static/range {v3 .. v8}, Lcom/htc/android/mail/CheckCalendar;->getTimeMills(IIIIII)J

    move-result-wide v17

    .line 179
    .local v17, eStart:J
    const/4 v6, 0x0

    sget-object v3, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v9, v3, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v10, v3, Landroid/text/format/Time;->month:I

    sget-object v3, Lcom/htc/android/mail/CheckCalendar;->mStartTime:Landroid/text/format/Time;

    iget v11, v3, Landroid/text/format/Time;->year:I

    move/from16 v7, v21

    move/from16 v8, v20

    invoke-static/range {v6 .. v11}, Lcom/htc/android/mail/CheckCalendar;->getTimeMills(IIIIII)J

    move-result-wide v15

    .line 182
    .local v15, eEnd:J
    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/CheckCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v22

    .line 183
    move-object/from16 v0, v28

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/CheckCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v24

    .line 188
    .end local v4           #startmins:I
    .end local v5           #starthour:I
    .end local v15           #eEnd:J
    .end local v17           #eStart:J
    .end local v19           #end_mins:I
    .end local v20           #endhour:I
    .end local v21           #endmins:I
    .end local v27           #start_mins:I
    :cond_3
    sget-wide v6, Lcom/htc/android/mail/CheckCalendar;->start:J

    cmp-long v3, v24, v6

    if-lez v3, :cond_4

    sget-wide v6, Lcom/htc/android/mail/CheckCalendar;->end:J

    cmp-long v3, v6, v22

    if-gtz v3, :cond_9

    .line 189
    :cond_4
    const/4 v13, 0x0

    .line 197
    :goto_1
    sget-boolean v3, Lcom/htc/android/mail/CheckCalendar;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 198
    const-string v3, "CheckCalendar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sSubject="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subject="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "CheckCalendar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/htc/android/mail/CheckCalendar;->start:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/htc/android/mail/CheckCalendar;->end:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "CheckCalendar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "evbegin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " evend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v22           #evbegin:J
    .end local v24           #evend:J
    .end local v28           #t:Landroid/text/format/Time;
    :cond_5
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v13, :cond_0

    .line 207
    :cond_6
    if-eqz p0, :cond_7

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 208
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 209
    const/16 p0, 0x0

    .line 213
    :cond_7
    return v13

    .line 152
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 191
    .restart local v22       #evbegin:J
    .restart local v24       #evend:J
    .restart local v28       #t:Landroid/text/format/Time;
    :cond_9
    :try_start_1
    sget-wide v6, Lcom/htc/android/mail/CheckCalendar;->end:J

    cmp-long v3, v24, v6

    if-nez v3, :cond_a

    sget-wide v6, Lcom/htc/android/mail/CheckCalendar;->start:J

    cmp-long v3, v22, v6

    if-nez v3, :cond_a

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 194
    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 207
    .end local v22           #evbegin:J
    .end local v24           #evend:J
    .end local v28           #t:Landroid/text/format/Time;
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_b

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_b

    .line 208
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 209
    const/16 p0, 0x0

    .line 207
    :cond_b
    throw v3
.end method
