.class public final Lcom/htc/messaging/utils/MessageProvider$MissedMessages;
.super Ljava/lang/Object;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/messaging/utils/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissedMessages"
.end annotation


# static fields
.field public static final ALL_MSG_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ALL_MSG_CONTENT_V2_URI:Landroid/net/Uri; = null

.field public static final COLUMN_INDEX_ADDRESS:I = 0x3

.field public static final COLUMN_INDEX_BODY:I = 0x4

.field public static final COLUMN_INDEX_CONTACT_ID:I = 0xe

.field public static final COLUMN_INDEX_CONTENT_TYPE:I = 0xf

.field public static final COLUMN_INDEX_DATE:I = 0x5

.field public static final COLUMN_INDEX_INTERNAL_TYPE:I = 0x9

.field public static final COLUMN_INDEX_IS_EVDO:I = 0xd

.field public static final COLUMN_INDEX_LOCKED:I = 0xc

.field public static final COLUMN_INDEX_MSG_ID:I = 0x1

.field public static final COLUMN_INDEX_MSG_TYPE:I = 0x0

.field public static final COLUMN_INDEX_PRIORITY:I = 0xb

.field public static final COLUMN_INDEX_READ:I = 0x8

.field public static final COLUMN_INDEX_SUBJECT:I = 0x6

.field public static final COLUMN_INDEX_SUBJECT_CHARSET:I = 0x7

.field public static final COLUMN_INDEX_THREAD_ID:I = 0x2

.field public static final COLUMN_INDEX_UNREAD_COUNT:I = 0xa

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROJECTION_V2:[Ljava/lang/String; = null

.field public static final SMS_MMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SMS_MMS_CONTENT_V2_URI:Landroid/net/Uri; = null

.field public static final V2_COLUMN_INDEX_ADDRESS:I = 0x3

.field public static final V2_COLUMN_INDEX_BODY:I = 0x4

.field public static final V2_COLUMN_INDEX_CONTACT_ID:I = 0x14

.field public static final V2_COLUMN_INDEX_CONTENT_TYPE:I = 0x15

.field public static final V2_COLUMN_INDEX_DATE:I = 0x5

.field public static final V2_COLUMN_INDEX_HTC_THREAD_ID:I = 0xd

.field public static final V2_COLUMN_INDEX_INTERNAL_TYPE:I = 0x9

.field public static final V2_COLUMN_INDEX_ISEVDO_TYPE:I = 0x13

.field public static final V2_COLUMN_INDEX_LOCKED:I = 0xc

.field public static final V2_COLUMN_INDEX_MSG_ID:I = 0x1

.field public static final V2_COLUMN_INDEX_MSG_TYPE:I = 0x0

.field public static final V2_COLUMN_INDEX_PLAY_TIME:I = 0xf

.field public static final V2_COLUMN_INDEX_PRIORITY:I = 0xb

.field public static final V2_COLUMN_INDEX_PRIVATE:I = 0x10

.field public static final V2_COLUMN_INDEX_READ:I = 0x8

.field public static final V2_COLUMN_INDEX_SUBJECT:I = 0x6

.field public static final V2_COLUMN_INDEX_SUBJECT_CHARSET:I = 0x7

.field public static final V2_COLUMN_INDEX_THREAD_ID:I = 0x2

.field public static final V2_COLUMN_INDEX_UNREAD_COUNT:I = 0xa

.field public static final V2_COLUMN_INDEX_URGENT:I = 0x11

.field public static final V2_COLUMN_INDEX_VVM_ID:I = 0xe

.field public static final V2_COLUMN_INDEX_VVM_TYPE:I = 0x12

.field private static sDailyFormat:Ljava/lang/CharSequence; = null

.field private static sDailyFormat24:Ljava/lang/CharSequence; = null

.field private static final sDailyMillis:J = 0x5265c00L

.field private static sYearlyFormat:Ljava/lang/CharSequence;

.field public static today:J

.field public static yesterday:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    const-string v0, "content://mms-sms/missed_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->SMS_MMS_CONTENT_URI:Landroid/net/Uri;

    .line 202
    const-string v0, "content://mms-sms-v2/missed_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->SMS_MMS_CONTENT_V2_URI:Landroid/net/Uri;

    .line 210
    const-string v0, "content://allmessages/missed_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->ALL_MSG_CONTENT_URI:Landroid/net/Uri;

    .line 218
    const-string v0, "content://allmessages/contactbase/missed_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->ALL_MSG_CONTENT_V2_URI:Landroid/net/Uri;

    .line 228
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "htcthread_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vvm_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ptime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "vvm_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "is_evdo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->PROJECTION_V2:[Ljava/lang/String;

    .line 279
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_evdo"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatDetailTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 4
    .parameter "c"
    .parameter "millis"
    .parameter "format24"

    .prologue
    .line 443
    invoke-static {p0, p1, p2, p3}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, timeformat:Ljava/lang/String;
    sget-wide v2, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->today:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 452
    .end local v0           #timeformat:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 446
    .restart local v0       #timeformat:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    .local v1, value:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    .line 448
    sget-object v2, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat24:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 452
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_1
    sget-object v2, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 408
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 19
    .parameter "c"
    .parameter "millis"
    .parameter "format24"

    .prologue
    .line 459
    sget-object v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->init(Landroid/content/Context;)V

    .line 464
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 466
    .local v18, yearStart:Ljava/util/Calendar;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 467
    .local v2, mNowtime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 468
    .local v10, currectTime:J
    invoke-virtual {v2, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 471
    iget v0, v2, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    .line 472
    .local v17, year:I
    iget v0, v2, Landroid/text/format/Time;->weekDay:I

    move/from16 v16, v0

    .line 474
    .local v16, weekday:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    iget v7, v2, Landroid/text/format/Time;->month:I

    iget v8, v2, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 475
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    sput-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->today:J

    .line 476
    sget-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->today:J

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->yesterday:J

    .line 479
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v18

    move/from16 v4, v17

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 482
    const-wide/32 v3, 0x5265c00

    div-long v13, v10, v3

    .line 487
    .local v13, todayValue:J
    const/4 v12, 0x0

    .line 489
    .local v12, format:Ljava/lang/CharSequence;
    sget-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->today:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_2

    .line 490
    if-eqz p3, :cond_1

    .line 491
    sget-object v12, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 536
    :goto_0
    move-wide/from16 v0, p1

    invoke-static {v12, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_1
    return-object v15

    .line 494
    :cond_1
    sget-object v12, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 502
    :cond_2
    sget-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->today:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    sget-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->yesterday:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_3

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 506
    :cond_3
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_4

    sget-wide v3, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->today:J

    move/from16 v0, v16

    int-to-long v5, v0

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    .line 510
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 514
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v15

    .line 516
    .local v15, weekDay:Ljava/lang/String;
    goto :goto_1

    .line 533
    .end local v15           #weekDay:Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sYearlyFormat:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static formatTimeStampStringForFuture(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "when"

    .prologue
    .line 339
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 340
    .local v4, then:Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 342
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 343
    .local v3, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 346
    const-string v5, ", yyyy"

    .line 347
    .local v5, year_format:Ljava/lang/String;
    const-string v0, "MMM dd"

    .line 348
    .local v0, date_format:Ljava/lang/String;
    const-string v1, "hh:mm aa"

    .line 349
    .local v1, format_12hr:Ljava/lang/String;
    const-string v2, "kk:mm"

    .line 351
    .local v2, format_24hr:Ljava/lang/String;
    iget v6, v4, Landroid/text/format/Time;->year:I

    iget v7, v3, Landroid/text/format/Time;->year:I

    if-ne v6, v7, :cond_2

    .line 352
    iget v6, v4, Landroid/text/format/Time;->month:I

    iget v7, v3, Landroid/text/format/Time;->month:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    iget v7, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v7, :cond_1

    .line 354
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 355
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    :goto_0
    return-object v6

    .line 358
    :cond_0
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 369
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static get24HourMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContactInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-static {p0, p1}, Landroid/provider/Telephony$Mms;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSenderInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 319
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static final init(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const v4, 0x20c010b

    const v3, 0x20c0109

    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, rc:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 430
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat:Ljava/lang/CharSequence;

    .line 433
    const-string v1, "kk:mm"

    sput-object v1, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 435
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sYearlyFormat:Ljava/lang/CharSequence;

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    .line 430
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat:Ljava/lang/CharSequence;

    .line 433
    const-string v1, "kk:mm"

    sput-object v1, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 435
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sYearlyFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat:Ljava/lang/CharSequence;

    .line 433
    const-string v2, "kk:mm"

    sput-object v2, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 435
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->sYearlyFormat:Ljava/lang/CharSequence;

    :cond_1
    throw v1
.end method
