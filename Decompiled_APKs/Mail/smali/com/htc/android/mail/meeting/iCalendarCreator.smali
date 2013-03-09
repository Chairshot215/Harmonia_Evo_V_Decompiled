.class public Lcom/htc/android/mail/meeting/iCalendarCreator;
.super Lcom/htc/android/mail/meeting/iCalendarBase;
.source "iCalendarCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "iCalendarCreator"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final sCurrentYear:I

.field private static final sDayTokens:[Ljava/lang/String;

.field private static final sGmtTimeZone:Ljava/util/TimeZone;


# instance fields
.field private mCmd:I

.field private final mOut:Ljava/io/ByteArrayOutputStream;

.field private mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->DEBUG:Z

    .line 24
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->sCurrentYear:I

    .line 25
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SU"

    aput-object v2, v0, v1

    const-string v1, "MO"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "TU"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->sDayTokens:[Ljava/lang/String;

    .line 302
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(ILcom/htc/android/mail/meeting/MeetingRequest;)V
    .locals 1
    .parameter "cmd"
    .parameter "request"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/mail/meeting/iCalendarBase;-><init>()V

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    .line 83
    iput p1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    .line 84
    iput-object p2, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    .line 85
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->sDayTokens:[Ljava/lang/String;

    return-object v0
.end method

.method static findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;
    .locals 12
    .parameter "tz"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "startInDaylightTime"

    .prologue
    .line 602
    move-wide v6, p3

    .line 603
    .local v6, startingEndTime:J
    const/4 v4, 0x0

    .line 606
    .local v4, date:Ljava/util/Date;
    :goto_0
    sub-long v8, p3, p1

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 607
    add-long v8, p1, p3

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 608
    .local v2, checkTime:J
    new-instance v4, Ljava/util/Date;

    .end local v4           #date:Ljava/util/Date;
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 609
    .restart local v4       #date:Ljava/util/Date;
    invoke-virtual {p0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 610
    .local v5, inDaylightTime:Z
    move/from16 v0, p5

    if-eq v5, v0, :cond_0

    .line 611
    move-wide p3, v2

    goto :goto_0

    .line 613
    :cond_0
    move-wide p1, v2

    goto :goto_0

    .line 618
    .end local v2           #checkTime:J
    .end local v5           #inDaylightTime:Z
    :cond_1
    cmp-long v8, p3, v6

    if-nez v8, :cond_2

    .line 619
    const/4 v1, 0x0

    .line 625
    :goto_1
    return-object v1

    .line 623
    :cond_2
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 624
    .local v1, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method static getTrueTransitionHour(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 564
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 565
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 566
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 569
    :cond_0
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 584
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 585
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 588
    :cond_0
    return v0
.end method

.method static inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;
    .locals 14
    .parameter "calendars"

    .prologue
    .line 483
    const/4 v12, 0x0

    aget-object v1, p0, v12

    .line 484
    .local v1, calendar:Ljava/util/GregorianCalendar;
    if-nez v1, :cond_0

    const/4 v12, 0x0

    .line 533
    :goto_0
    return-object v12

    .line 485
    :cond_0
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 486
    .local v8, month:I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 487
    .local v2, date:I
    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 488
    .local v4, dayOfWeek:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 489
    .local v11, week:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 490
    .local v7, maxWeek:I
    const/4 v3, 0x0

    .line 491
    .local v3, dateRule:Z
    const/4 v5, 0x0

    .line 492
    .local v5, dayOfWeekRule:Z
    const/4 v6, 0x1

    .local v6, i:I
    :goto_1
    array-length v12, p0

    if-ge v6, v12, :cond_a

    .line 493
    aget-object v0, p0, v6

    .line 494
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 496
    :cond_1
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-eq v12, v8, :cond_2

    .line 497
    const/4 v12, 0x0

    goto :goto_0

    .line 498
    :cond_2
    const/4 v12, 0x7

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v4, v12, :cond_7

    .line 500
    if-eqz v3, :cond_3

    .line 501
    const/4 v12, 0x0

    goto :goto_0

    .line 503
    :cond_3
    const/4 v5, 0x1

    .line 504
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 505
    .local v10, thisWeek:I
    if-eq v11, v10, :cond_5

    .line 506
    if-ltz v11, :cond_4

    if-ne v11, v7, :cond_6

    .line 507
    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 508
    .local v9, thisMaxWeek:I
    if-ne v10, v9, :cond_6

    .line 510
    const/4 v11, -0x1

    .line 492
    .end local v9           #thisMaxWeek:I
    .end local v10           #thisWeek:I
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 514
    .restart local v10       #thisWeek:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 516
    .end local v10           #thisWeek:I
    :cond_7
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v2, v12, :cond_9

    .line 518
    if-eqz v5, :cond_8

    .line 519
    const/4 v12, 0x0

    goto :goto_0

    .line 521
    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    .line 523
    :cond_9
    const/4 v12, 0x0

    goto :goto_0

    .line 527
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :cond_a
    if-eqz v3, :cond_b

    .line 528
    new-instance v12, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;-><init>(II)V

    goto :goto_0

    .line 533
    :cond_b
    new-instance v12, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v4, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;-><init>(III)V

    goto :goto_0
.end method

.method private static isFirstUtf8Byte(B)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 315
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private timeZoneToVTimezone(Ljava/util/TimeZone;)V
    .locals 14
    .parameter "tz"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 321
    .local v5, rawOffsetMinutes:I
    invoke-static {v5}, Lcom/htc/android/mail/meeting/iCalendarCreator;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, standardOffsetString:Ljava/lang/String;
    const-string v10, "BEGIN"

    const-string v11, "VTIMEZONE"

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v10, "TZID"

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v10, "X-LIC-LOCATION"

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-nez v10, :cond_0

    .line 330
    invoke-direct {p0, p1, v6}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeNoDST(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v4, 0x3

    .line 335
    .local v4, maxYears:I
    new-array v8, v4, [Ljava/util/GregorianCalendar;

    .line 336
    .local v8, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v9, v4, [Ljava/util/GregorianCalendar;

    .line 337
    .local v9, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-virtual {p0, p1, v8, v9}, Lcom/htc/android/mail/meeting/iCalendarCreator;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 338
    invoke-direct {p0, p1, v6}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeNoDST(Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {v8}, Lcom/htc/android/mail/meeting/iCalendarCreator;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;

    move-result-object v1

    .line 343
    .local v1, daylightRule:Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;
    invoke-static {v9}, Lcom/htc/android/mail/meeting/iCalendarCreator;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;

    move-result-object v7

    .line 344
    .local v7, standardRule:Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    long-to-int v10, v10

    add-int/2addr v10, v5

    invoke-static {v10}, Lcom/htc/android/mail/meeting/iCalendarCreator;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .line 351
    .local v2, hasRule:Z
    :goto_1
    const-string v10, "BEGIN"

    const-string v11, "DAYLIGHT"

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v10, "TZOFFSETFROM"

    invoke-direct {p0, v10, v6}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v10, "TZOFFSETTO"

    invoke-direct {p0, v10, v0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p1, v13}, Lcom/htc/android/mail/meeting/iCalendarCreator;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    if-eqz v2, :cond_5

    .line 356
    const-string v10, "RRULE"

    invoke-virtual {v1}, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_2
    const-string v10, "END"

    const-string v11, "DAYLIGHT"

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v10, "BEGIN"

    const-string v11, "STANDARD"

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v10, "TZOFFSETFROM"

    invoke-direct {p0, v10, v0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v10, "TZOFFSETTO"

    invoke-direct {p0, v10, v6}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-static {v11, v12, p1, v13}, Lcom/htc/android/mail/meeting/iCalendarCreator;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-eqz v2, :cond_6

    .line 369
    const-string v10, "RRULE"

    invoke-virtual {v7}, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_3
    const-string v10, "END"

    const-string v11, "STANDARD"

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v10, "END"

    const-string v11, "VTIMEZONE"

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v2           #hasRule:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 358
    .restart local v2       #hasRule:Z
    :cond_5
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 359
    const-string v10, "RDATE"

    aget-object v11, v8, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p1, v13}, Lcom/htc/android/mail/meeting/iCalendarCreator;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 371
    .end local v3           #i:I
    :cond_6
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v4, :cond_3

    .line 372
    const-string v10, "RDATE"

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p1, v13}, Lcom/htc/android/mail/meeting/iCalendarCreator;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private static toUtf8(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 304
    sget-object v2, Lcom/htc/android/mail/meeting/iCalendarCreator;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 305
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 306
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 307
    return-object v1
.end method

.method static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "dst"

    .prologue
    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 546
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 547
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {v0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {v0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .locals 6
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 454
    .local v0, hours:I
    if-gez v0, :cond_2

    .line 455
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    rsub-int/lit8 v0, v0, 0x0

    .line 460
    :goto_0
    rem-int/lit8 v1, p0, 0x3c

    .line 461
    .local v1, minutes:I
    if-ge v0, v4, :cond_0

    .line 462
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    if-ge v1, v4, :cond_1

    .line 466
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 458
    .end local v1           #minutes:I
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private writeLine(Ljava/lang/String;)V
    .locals 9
    .parameter "string"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v4, 0x0

    .line 282
    .local v4, numBytes:I
    invoke-static {p1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-byte v1, v0, v2

    .line 287
    .local v1, b:B
    const/16 v5, 0x47

    if-le v4, v5, :cond_1

    invoke-static {v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->isFirstUtf8Byte(B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 290
    iget-object v5, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 291
    iget-object v5, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 292
    const/4 v4, 0x1

    .line 294
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 295
    add-int/lit8 v4, v4, 0x1

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    .end local v1           #b:B
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    iget-object v5, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private writeNoDST(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 6
    .parameter "tz"
    .parameter "offsetString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "TZOFFSETFROM"

    invoke-direct {p0, v0, p2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "TZOFFSETTO"

    invoke-direct {p0, v0, p2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/meeting/MeetingUtil;->millisToEasDateTime(JLjava/util/TimeZone;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "END"

    const-string v1, "STANDARD"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "END"

    const-string v1, "VTIMEZONE"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private writeTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {p2}, Lcom/htc/android/mail/meeting/iCalendarBase;->isNeedEscape(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p2}, Lcom/htc/android/mail/meeting/iCalendarBase;->escapeTextValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeLine(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public create_iCalendar()Ljava/lang/String;
    .locals 30

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 89
    const/16 v25, 0x0

    .line 244
    :goto_0
    return-object v25

    .line 92
    :cond_0
    sget-boolean v25, Lcom/htc/android/mail/meeting/iCalendarCreator;->DEBUG:Z

    if-eqz v25, :cond_1

    const-string v25, "iCalendarCreator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "create iCalendar: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/meeting/iCalendarBase;->getMethod(I)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, method:Ljava/lang/String;
    const-string v23, ""

    .line 95
    .local v23, vCalendarDateSuffix:Ljava/lang/String;
    sget-object v24, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 98
    .local v24, vCalendarTimeZone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 100
    const-string v23, ";VALUE=DATE"

    .line 103
    :cond_2
    const-string v25, "BEGIN"

    const-string v26, "VCALENDAR"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v25, "METHOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v25, "PRODID"

    const-string v26, "-//HTC Corporation//Email 1.0 MIMEDIR//EN"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v25, "VERSION"

    const-string v26, "2.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->rrule:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 113
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->timeZoneToVTimezone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ";TZID="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 121
    :cond_3
    const-string v25, "BEGIN"

    const-string v26, "VEVENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 125
    const-string v25, "UID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/meeting/MeetingRequest;->getDTStampTime()Landroid/text/format/Time;

    move-result-object v17

    .line 130
    .local v17, stamp:Landroid/text/format/Time;
    if-nez v17, :cond_5

    .line 131
    new-instance v17, Landroid/text/format/Time;

    .end local v17           #stamp:Landroid/text/format/Time;
    const-string v25, "UTC"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v17       #stamp:Landroid/text/format/Time;
    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->setToNow()V

    .line 134
    :cond_5
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/meeting/MeetingUtil;->TimeToString1(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v20

    .line 135
    .local v20, strStamp:Ljava/lang/String;
    const-string v25, "DTSTAMP"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneStartTime()Landroid/text/format/Time;

    move-result-object v18

    .line 139
    .local v18, startTime:Landroid/text/format/Time;
    if-eqz v18, :cond_6

    .line 140
    const/16 v21, 0x0

    .line 141
    .local v21, strStart:Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    const/16 v25, 0x1

    :goto_2
    sget-object v28, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/meeting/MeetingUtil;->millisToEasDateTime(JLjava/util/TimeZone;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v21

    .line 142
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DTSTART"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v21           #strStart:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->isException:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->originalInstanceTime:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_7

    .line 147
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RECURRENCE-ID"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->originalInstanceTime:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    const/16 v25, 0x1

    :goto_3
    sget-object v29, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    move-wide/from16 v0, v27

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/meeting/MeetingUtil;->millisToEasDateTime(JLjava/util/TimeZone;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneEndTime()Landroid/text/format/Time;

    move-result-object v8

    .line 152
    .local v8, endTime:Landroid/text/format/Time;
    if-eqz v8, :cond_8

    .line 153
    const/16 v19, 0x0

    .line 154
    .local v19, strEnd:Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v25, v0

    if-nez v25, :cond_e

    const/16 v25, 0x1

    :goto_4
    sget-object v28, Lcom/htc/android/mail/meeting/iCalendarCreator;->sGmtTimeZone:Ljava/util/TimeZone;

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/meeting/MeetingUtil;->millisToEasDateTime(JLjava/util/TimeZone;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v19

    .line 155
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DTEND"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v19           #strEnd:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 169
    .local v15, person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    const-string v10, "ORGANIZER"

    .line 170
    .local v10, icalTag:Ljava/lang/String;
    iget-object v0, v15, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 171
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";CN="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/meeting/iCalendarBase;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 173
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MAILTO:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v10           #icalTag:Ljava/lang/String;
    .end local v15           #person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_12

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 180
    .local v6, attendee:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    const-string v10, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    .line 181
    .restart local v10       #icalTag:Ljava/lang/String;
    iget-object v0, v6, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 182
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";CN="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v6, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/meeting/iCalendarBase;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 184
    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MAILTO:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v6, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 114
    .end local v6           #attendee:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    .end local v8           #endTime:Landroid/text/format/Time;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #icalTag:Ljava/lang/String;
    .end local v17           #stamp:Landroid/text/format/Time;
    .end local v18           #startTime:Landroid/text/format/Time;
    .end local v20           #strStamp:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 115
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 141
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v17       #stamp:Landroid/text/format/Time;
    .restart local v18       #startTime:Landroid/text/format/Time;
    .restart local v20       #strStamp:Ljava/lang/String;
    .restart local v21       #strStart:Ljava/lang/String;
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 147
    .end local v21           #strStart:Ljava/lang/String;
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 154
    .restart local v8       #endTime:Landroid/text/format/Time;
    .restart local v19       #strEnd:Ljava/lang/String;
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 186
    .end local v19           #strEnd:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 190
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 191
    .restart local v6       #attendee:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/meeting/iCalendarCreator;->getResponseString(I)Ljava/lang/String;

    move-result-object v16

    .line 192
    .local v16, resp:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->getName()Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, name:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ATTENDEE;PARTSTAT="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";CN="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":MAILTO"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 194
    .local v22, tag:Ljava/lang/String;
    iget-object v5, v6, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 195
    .local v5, addr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 197
    .end local v5           #addr:Ljava/lang/String;
    .end local v6           #attendee:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #name:Ljava/lang/String;
    .end local v16           #resp:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 203
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->rrule:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 204
    const-string v25, "RRULE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->rrule:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_13
    const-string v26, "SUMMARY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->summary:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_18

    const-string v25, ""

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v25, "LOCATION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v25, "DESCRIPTION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v25, "CLASS"

    const-string v26, "PUBLIC"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v25, "TRANSP"

    const-string v26, "OPAQUE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v25, "SEQUENCE"

    const-string v26, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v25, "PRIORITY"

    const-string v26, "5"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v25, "X-MICROSOFT-CDO-IMPORTANCE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->importance:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v25, "REPLY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 217
    const-string v25, "STATUS"

    const-string v26, "CONFIRMED"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_14
    const-string v25, "REQUEST"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 223
    const-string v26, "X-MICROSOFT-CDO-ALLDAYEVENT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v25, v0

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    const-string v25, "TRUE"

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mCmd:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->originalStartTime:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/meeting/MeetingUtil;->RFC3339ToString1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, origStart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->originalEndTime:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/meeting/MeetingUtil;->RFC3339ToString1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, origEnd:Ljava/lang/String;
    const-string v25, "X-MS-OLK-ORIGINALSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v25, "X-MS-OLK-ORIGINALEND"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v13}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v13           #origEnd:Ljava/lang/String;
    .end local v14           #origStart:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I

    move/from16 v25, v0

    if-lez v25, :cond_17

    .line 235
    const-string v25, "BEGIN"

    const-string v26, "VALARM"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v25, "TRIGGER"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "-PT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "M"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v25, "ACTION"

    const-string v26, "AUDIO"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v25, "END"

    const-string v26, "VALARM"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_17
    const-string v25, "END"

    const-string v26, "VEVENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v25, "END"

    const-string v26, "VCALENDAR"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->get_vCalendar()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 207
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->summary:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_7

    .line 223
    :cond_19
    const-string v25, "FALSE"

    goto/16 :goto_8
.end method

.method getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z
    .locals 17
    .parameter "tz"
    .parameter "toDaylightCalendars"
    .parameter "toStandardCalendars"

    .prologue
    .line 410
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    .line 411
    .local v16, maxYears:I
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v16

    if-eq v2, v0, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 442
    :goto_0
    return v2

    .line 415
    :cond_0
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 416
    new-instance v1, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 417
    .local v1, cal:Ljava/util/GregorianCalendar;
    sget v2, Lcom/htc/android/mail/meeting/iCalendarCreator;->sCurrentYear:I

    add-int/2addr v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 418
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 420
    .local v3, startTime:J
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v3

    const-wide/32 v10, 0x1499700

    add-long v5, v8, v10

    .line 421
    .local v5, endOfYearTime:J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 422
    .local v14, date:Ljava/util/Date;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    .local v7, startInDaylightTime:Z
    move-object/from16 v2, p1

    .line 424
    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/meeting/iCalendarCreator;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 425
    if-nez v1, :cond_1

    .line 426
    const/4 v2, 0x0

    goto :goto_0

    .line 427
    :cond_1
    if-eqz v7, :cond_2

    .line 428
    aput-object v1, p3, v15

    .line 433
    :goto_2
    if-nez v7, :cond_3

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v8, p1

    move-wide v9, v3

    move-wide v11, v5

    invoke-static/range {v8 .. v13}, Lcom/htc/android/mail/meeting/iCalendarCreator;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 434
    if-nez v1, :cond_4

    .line 435
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    :cond_2
    aput-object v1, p2, v15

    goto :goto_2

    .line 433
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 436
    :cond_4
    if-eqz v7, :cond_5

    .line 437
    aput-object v1, p2, v15

    .line 415
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 439
    :cond_5
    aput-object v1, p3, v15

    goto :goto_4

    .line 442
    .end local v1           #cal:Ljava/util/GregorianCalendar;
    .end local v3           #startTime:J
    .end local v5           #endOfYearTime:J
    .end local v7           #startInDaylightTime:Z
    .end local v14           #date:Ljava/util/Date;
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get_vCalendar()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, vCalendar:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_1

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 252
    iget-object v3, p0, Lcom/htc/android/mail/meeting/iCalendarCreator;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    sget-boolean v2, Lcom/htc/android/mail/meeting/iCalendarCreator;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "iCalendarCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get_vCalendar: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, v1

    .line 261
    :cond_1
    :goto_0
    return-object v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
