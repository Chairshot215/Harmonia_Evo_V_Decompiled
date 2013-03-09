.class public Lcom/htc/android/mail/meeting/MeetingUtil;
.super Ljava/lang/Object;
.source "MeetingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;
    }
.end annotation


# static fields
.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static DEBUG:Z = false

.field private static REMINDERS_SQL_WHERE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MeetingUtil"

.field static final sTwoCharacterNumbers:[Ljava/lang/String; = null

.field private static final vCalUid:Ljava/lang/String; = "7643616c2d55696401000000"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    .line 52
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/meeting/MeetingUtil;->sTwoCharacterNumbers:[Ljava/lang/String;

    .line 1297
    const-string v0, "event_id=%d AND (method=1 OR method=0)"

    sput-object v0, Lcom/htc/android/mail/meeting/MeetingUtil;->REMINDERS_SQL_WHERE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static RFC3339ToString1(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "rfc3339"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 630
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 641
    :goto_0
    return-object v0

    .line 634
    :cond_0
    const/4 v0, 0x0

    .line 635
    .local v0, ret:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->splitTime(Ljava/lang/String;)[I

    move-result-object v1

    .line 636
    .local v1, split:[I
    if-nez v1, :cond_1

    .line 637
    const/4 v0, 0x0

    goto :goto_0

    .line 640
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d%02d%02dT%02d%02d00Z"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aget v5, v1, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aget v5, v1, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 641
    goto :goto_0
.end method

.method public static TimeToString1(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 7
    .parameter "time"

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 555
    :goto_0
    return-object v1

    .line 551
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 552
    .local v0, UTCTime:Landroid/text/format/Time;
    const-string v2, "UTC"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 553
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d%02d%02dT%02d%02d%02dZ"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v0, Landroid/text/format/Time;->second:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, strTime:Ljava/lang/String;
    goto :goto_0
.end method

.method public static TimeToString2(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 564
    if-nez p0, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 570
    :goto_0
    return-object v0

    .line 568
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d-%02d-%02d %02d:%02d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Landroid/text/format/Time;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, strTime:Ljava/lang/String;
    goto :goto_0
.end method

.method public static TimeToStringRFC3339(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 7
    .parameter "time"

    .prologue
    .line 579
    if-nez p0, :cond_0

    .line 580
    const/4 v1, 0x0

    .line 587
    :goto_0
    return-object v1

    .line 583
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 584
    .local v0, UTCTime:Landroid/text/format/Time;
    const-string v2, "UTC"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 585
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d-%02d-%02dT%02d:%02d:%02d.000Z"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v0, Landroid/text/format/Time;->second:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, strTime:Ljava/lang/String;
    goto :goto_0
.end method

.method public static adjustStartTime(J)J
    .locals 8
    .parameter "startTime"

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1280
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MeetingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> adjustStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1282
    .local v1, newStart:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1285
    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 1286
    iget v0, v1, Landroid/text/format/Time;->minute:I

    .line 1287
    .local v0, minute:I
    if-lez v0, :cond_2

    if-gt v0, v7, :cond_2

    .line 1288
    iput v7, v1, Landroid/text/format/Time;->minute:I

    .line 1293
    :goto_0
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MeetingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< adjustStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_1
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 1290
    :cond_2
    iput v5, v1, Landroid/text/format/Time;->minute:I

    .line 1291
    iget v2, v1, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public static buildMeetingInfo(ILcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "cmd"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 676
    sget-boolean v10, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MeetingUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "> buildMeetingInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 678
    :cond_1
    const-string v10, "MeetingUtil"

    const-string v11, "buildMeetingInfo error: parameter is null"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v2, 0x0

    .line 728
    :cond_2
    :goto_0
    return-object v2

    .line 682
    :cond_3
    const-string v10, ""

    iput-object v10, p1, Lcom/htc/android/mail/meeting/MeetingRequest;->meetingInfo:Ljava/lang/String;

    .line 683
    const-string v2, ""

    .line 684
    .local v2, meetingInfo:Ljava/lang/String;
    const/4 v10, 0x6

    if-ne p0, v10, :cond_9

    .line 685
    invoke-virtual {p1}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneStartTime()Landroid/text/format/Time;

    move-result-object v6

    .line 686
    .local v6, startTm:Landroid/text/format/Time;
    invoke-virtual {p1}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneEndTime()Landroid/text/format/Time;

    move-result-object v1

    .line 687
    .local v1, endTm:Landroid/text/format/Time;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 688
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 689
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 691
    .local v9, timeZone:Ljava/util/TimeZone;
    iget-object v10, p1, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    invoke-static {v10}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->createString(Lcom/htc/android/mail/meeting/MeetingRequest$Person;)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, organizer:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/meeting/MeetingUtil;->TimeToString2(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v8

    .line 693
    .local v8, strStart:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/meeting/MeetingUtil;->TimeToString2(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v7

    .line 695
    .local v7, strEnd:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 696
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0b01f8

    invoke-virtual {p2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 699
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0b01f9

    invoke-virtual {p2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0b01fa

    invoke-virtual {p2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 704
    :cond_6
    iget-object v10, p1, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0b01fb

    invoke-virtual {p2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 707
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n*~*~*~*~*~*~*~*~*~*\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    iput-object v2, p1, Lcom/htc/android/mail/meeting/MeetingRequest;->meetingInfo:Ljava/lang/String;

    .line 727
    .end local v1           #endTm:Landroid/text/format/Time;
    .end local v3           #organizer:Ljava/lang/String;
    .end local v6           #startTm:Landroid/text/format/Time;
    .end local v7           #strEnd:Ljava/lang/String;
    .end local v8           #strStart:Ljava/lang/String;
    .end local v9           #timeZone:Ljava/util/TimeZone;
    :cond_8
    :goto_1
    sget-boolean v10, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "MeetingUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "< buildMeetingInfo:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :cond_9
    const/4 v10, 0x5

    if-ne p0, v10, :cond_8

    .line 710
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 711
    .restart local v9       #timeZone:Ljava/util/TimeZone;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 712
    .local v4, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 713
    .local v5, start:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 714
    .local v0, end:Ljava/util/Date;
    invoke-virtual {p1}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneStartTime()Landroid/text/format/Time;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 715
    invoke-virtual {p1}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneEndTime()Landroid/text/format/Time;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 717
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0b01ee

    invoke-virtual {p2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 724
    iput-object v2, p1, Lcom/htc/android/mail/meeting/MeetingRequest;->meetingInfo:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static check_SelfAttendeeStatus(I)Landroid/content/ContentValues;
    .locals 4
    .parameter "eventStatus"

    .prologue
    .line 1159
    const/4 v1, 0x0

    .line 1160
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1162
    .local v0, status:I
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 1163
    const/4 v0, 0x1

    .line 1170
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1171
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1172
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v2, "selfAttendeeStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    :cond_1
    return-object v1

    .line 1164
    :cond_2
    if-nez p0, :cond_3

    .line 1165
    const/4 v0, 0x4

    goto :goto_0

    .line 1166
    :cond_3
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 1167
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static convert2MailGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "calGUID"

    .prologue
    .line 887
    invoke-static {p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->needConvert2MailGUID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 888
    const-string v2, ""

    .line 899
    :goto_0
    return-object v2

    .line 891
    :cond_0
    const/4 v0, 0x0

    .line 892
    .local v0, byteGUID64:[B
    :try_start_0
    invoke-static {p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 893
    invoke-static {v0}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, result:Ljava/lang/String;
    const-string v3, "\\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 895
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 896
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MeetingUtil"

    const-string v4, "Base64 encode error"

    invoke-static {v3, v4, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 897
    const-string v2, ""

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static convertMailGUID2CalendarGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "meetingGUID"

    .prologue
    .line 1179
    const/4 v2, 0x0

    .line 1180
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1181
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v0

    .line 1182
    .local v0, byteGUIDb64:[B
    if-eqz v0, :cond_0

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1185
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1188
    .end local v1           #i:I
    :cond_0
    const-string v3, "MeetingUtil"

    const-string v4, "Base64 decode error"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    .end local v0           #byteGUIDb64:[B
    :cond_1
    if-nez v2, :cond_2

    .line 1192
    const/4 v3, 0x0

    .line 1194
    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 9
    .parameter "string"

    .prologue
    const/16 v8, 0x61

    .line 912
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v1, v6, [B

    .line 913
    .local v1, bytes:[B
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, buf:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 916
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 917
    .local v4, left:C
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 918
    .local v5, right:C
    div-int/lit8 v3, v2, 0x2

    .line 920
    .local v3, index:I
    if-ge v4, v8, :cond_0

    .line 921
    add-int/lit8 v6, v4, -0x30

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 925
    :goto_1
    if-ge v5, v8, :cond_1

    .line 926
    aget-byte v6, v1, v3

    add-int/lit8 v7, v5, -0x30

    int-to-byte v7, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 915
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 923
    :cond_0
    add-int/lit8 v6, v4, -0x61

    add-int/lit8 v6, v6, 0xa

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    goto :goto_1

    .line 928
    :cond_1
    aget-byte v6, v1, v3

    add-int/lit8 v7, v5, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-byte v7, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    goto :goto_2

    .line 931
    .end local v3           #index:I
    .end local v4           #left:C
    .end local v5           #right:C
    :cond_2
    return-object v1
.end method

.method public static decodeCalGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "calGUID"

    .prologue
    .line 1376
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1377
    const/4 v0, 0x0

    .line 1396
    :cond_0
    :goto_0
    return-object v0

    .line 1379
    :cond_1
    const/4 v0, 0x0

    .line 1380
    .local v0, guid:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1381
    .local v3, lowerCalGUID:Ljava/lang/String;
    const-string v4, "7643616c2d55696401000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1382
    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 1383
    sget-boolean v4, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "MeetingUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeCalGUID: index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :cond_2
    const-string v4, "7643616c2d55696401000000"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, hexGuid:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    const-string v4, "00"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_3

    .line 1388
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1390
    :cond_3
    sget-boolean v4, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MeetingUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeCalGUID(hexGuid): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :cond_4
    invoke-static {v1}, Lcom/htc/android/mail/meeting/MeetingUtil;->decodeHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    goto :goto_0

    .line 1394
    .end local v1           #hexGuid:Ljava/lang/String;
    :cond_5
    sget-boolean v4, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MeetingUtil"

    const-string v5, "decodeCalGUID: index -1"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static decodeHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hex"

    .prologue
    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1401
    .local v1, hexString:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 1402
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1403
    .local v3, output:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1404
    .local v0, decimal:I
    int-to-char v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1406
    .end local v0           #decimal:I
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static deleteCalendarEvent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 13
    .parameter "mailGUID"
    .parameter "userName"
    .parameter "context"

    .prologue
    .line 1339
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MeetingUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteCalendarEvent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1341
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MeetingUtil"

    const-string v9, "deleteCalendarEvent: Error! GUID null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :cond_1
    const/4 v2, -0x1

    .line 1372
    :cond_2
    :goto_0
    return v2

    .line 1345
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v0

    .line 1346
    .local v0, byteGUIDb64:[B
    if-eqz v0, :cond_4

    array-length v8, v0

    if-nez v8, :cond_6

    .line 1347
    :cond_4
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "MeetingUtil"

    const-string v9, "deleteCalendarEvent: Error! byte array null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_5
    const/4 v2, -0x1

    goto :goto_0

    .line 1351
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    .local v1, calGUID:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_7

    .line 1353
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, v0, v4

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1356
    :cond_7
    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1357
    .local v5, uriEvent:Landroid/net/Uri;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "iCalGUID=\'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1358
    .local v6, where1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1359
    .local v2, count:I
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "MeetingUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteCalendarEvent #1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_8
    if-nez v2, :cond_2

    .line 1363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/meeting/MeetingUtil;->decodeCalGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1364
    .local v3, guid:Ljava/lang/String;
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "MeetingUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteCalendarEvent(guid): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1366
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "iCalGUID=\'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1367
    .local v7, where2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1368
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "MeetingUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteCalendarEvent #2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static fetchMeetingRule(Lcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "request"
    .parameter "context"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/mail/meeting/MeetingUtil;->convert2MailGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, calGuid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 736
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 737
    .local v12, rrule:Ljava/lang/String;
    new-instance v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    invoke-direct {v10}, Lcom/htc/android/mail/eassvc/common/EASCalEvent;-><init>()V

    .line 739
    .local v10, easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    const/16 v0, 0x8

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_recurrence_type"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_recurrence_occurrences"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_recurrence_interval"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_recurrence_dayofweek"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_recurrence_dayofmonth"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_recurrence_weekofmonth"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_recurrence_monthofyear"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "_recurrence_until"

    aput-object v1, v2, v0

    .line 743
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_globalObjId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 745
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 746
    const-string v0, "_recurrence_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 747
    const-string v0, "_recurrence_occurrences"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurOccurrences:I

    .line 748
    const-string v0, "_recurrence_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurInterval:I

    .line 749
    const-string v0, "_recurrence_dayofweek"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 750
    const-string v0, "_recurrence_dayofmonth"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    .line 751
    const-string v0, "_recurrence_weekofmonth"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    .line 752
    const-string v0, "_recurrence_monthofyear"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurMonthOfYear:I

    .line 753
    const-string v0, "_recurrence_until"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    .line 760
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 761
    const-string v11, "FREQ="

    .line 763
    .local v11, rRULE:Ljava/lang/String;
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    packed-switch v0, :pswitch_data_0

    .line 864
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurInterval:I

    if-eqz v0, :cond_1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";INTERVAL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 866
    :cond_1
    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";UNTIL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 868
    :cond_2
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurOccurrences:I

    if-eqz v0, :cond_3

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";COUNT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurOccurrences:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 871
    :cond_3
    move-object v12, v11

    .line 877
    .end local v11           #rRULE:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 878
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v12

    .line 882
    :cond_6
    :goto_2
    return-object v0

    .line 756
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v0, "MeetingUtil"

    const-string v1, "getMeetingInfo, can\'t query messageId"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 757
    const/4 v0, 0x0

    .line 877
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 878
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 765
    .restart local v11       #rRULE:Ljava/lang/String;
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DAILY;WKST=SU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 766
    goto/16 :goto_0

    .line 768
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WEEKLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 769
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    if-eqz v0, :cond_0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";WKST=SU;BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 771
    const-string v8, ""

    .line 772
    .local v8, days:Ljava/lang/String;
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 773
    const-string v8, "SU"

    .line 774
    :cond_8
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 775
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 777
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 779
    :cond_a
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 780
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 782
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 784
    :cond_c
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 785
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 787
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 789
    :cond_e
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    .line 790
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 792
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 794
    :cond_10
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_12

    .line 795
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 797
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 799
    :cond_12
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_14

    .line 800
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 802
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 804
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 805
    goto/16 :goto_0

    .line 808
    .end local v8           #days:Ljava/lang/String;
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MONTHLY;WKST=SU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 810
    goto/16 :goto_0

    .line 812
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "YEARLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurMonthOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 814
    goto/16 :goto_0

    .line 817
    :pswitch_5
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MONTHLY;WKST=SU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 824
    :goto_3
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_17

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 826
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 820
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "YEARLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurMonthOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 829
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 830
    :cond_17
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_19

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYDAY=MO,TU,WE,TH,FR;BYSETPOS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 836
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 839
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 840
    :cond_19
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_1a

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYDAY=-1SU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 843
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_21

    const/4 v0, -0x1

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 845
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 847
    :cond_1b
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 849
    :cond_1c
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 851
    :cond_1d
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 853
    :cond_1e
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1f

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 855
    :cond_1f
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_20

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 857
    :cond_20
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 843
    :cond_21
    iget v0, v10, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 874
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v11           #rRULE:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 875
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 877
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_22

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_22

    .line 878
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 877
    :cond_22
    throw v0

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static fillAttendee(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)V
    .locals 17
    .parameter "exSyncSources"
    .parameter "eventId"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 1200
    if-nez p3, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    const/4 v10, 0x0

    .line 1205
    .local v10, cur:Landroid/database/Cursor;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1207
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 1208
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "event_id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1209
    .local v5, where:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1210
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1211
    :cond_2
    const-string v4, "MeetingUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillAttendee, Can not get attendee: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v4, v0, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1216
    :cond_3
    :try_start_1
    const-string v4, "attendeeRelationship"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1217
    .local v13, relationship:I
    const-string v4, "attendeeName"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1218
    .local v9, attendeeName:Ljava/lang/String;
    const-string v4, "attendeeEmail"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1219
    .local v8, attendeeAddr:Ljava/lang/String;
    new-instance v12, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    invoke-direct {v12}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;-><init>()V

    .line 1220
    .local v12, p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1221
    iput-object v9, v12, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 1223
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1224
    iput-object v8, v12, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 1227
    :cond_5
    const/4 v4, 0x2

    if-ne v13, v4, :cond_9

    .line 1228
    move-object/from16 v0, p3

    iput-object v12, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 1232
    :cond_6
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 1235
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1241
    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v14, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    if-eqz v4, :cond_b

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v4, v4, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1244
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    check-cast v12, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 1245
    .restart local v12       #p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v4, v4, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    iget-object v6, v12, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1246
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1229
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    :cond_9
    const/4 v4, 0x1

    if-ne v13, v4, :cond_6

    .line 1230
    :try_start_2
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1235
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #attendeeAddr:Ljava/lang/String;
    .end local v9           #attendeeName:Ljava/lang/String;
    .end local v12           #p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    .end local v13           #relationship:I
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1235
    :cond_a
    throw v4

    .line 1250
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #attendeeAddr:Ljava/lang/String;
    .restart local v9       #attendeeName:Ljava/lang/String;
    .restart local v12       #p:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    .restart local v13       #relationship:I
    .restart local v14       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    :cond_b
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static fillReminder(JLcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)V
    .locals 9
    .parameter "calEventId"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 1301
    if-nez p2, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MeetingUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillReminder: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_2
    const/4 v6, 0x0

    .line 1307
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "minutes"

    aput-object v1, v2, v0

    .line 1308
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/htc/android/mail/meeting/MeetingUtil;->REMINDERS_SQL_WHERE:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1309
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1310
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1311
    const-string v0, "minutes"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1312
    .local v7, reminder:I
    if-lez v7, :cond_3

    .line 1313
    iput v7, p2, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    .end local v7           #reminder:I
    :cond_3
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1317
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1318
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1317
    :cond_4
    throw v0
.end method

.method public static formatTwo(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 618
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 619
    sget-object v0, Lcom/htc/android/mail/meeting/MeetingUtil;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 621
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMeetingData(ILcom/htc/android/mail/Account;JLandroid/content/Context;)Lcom/htc/android/mail/meeting/MeetingRequest;
    .locals 40
    .parameter "cmd"
    .parameter "account"
    .parameter "msgId"
    .parameter "context"

    .prologue
    .line 190
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MeetingUtil"

    const-string v4, "> getMeetingData"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    if-nez p4, :cond_3

    .line 192
    :cond_1
    const-string v3, "MeetingUtil"

    const-string v4, "getMeetingData error: parameter is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/16 v28, 0x0

    .line 384
    :cond_2
    :goto_0
    return-object v28

    .line 196
    :cond_3
    const/4 v15, 0x0

    .local v15, cur:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 197
    .local v16, curPart:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 199
    .local v28, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :try_start_0
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 200
    .local v12, build:Landroid/net/Uri$Builder;
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 202
    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6

    .line 203
    :cond_4
    const-string v3, "MeetingUtil"

    const-string v4, "getMeetingData error: query message"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    const/16 v28, 0x0

    .line 375
    .end local v28           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 376
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_5
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 379
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 207
    .restart local v28       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :cond_6
    :try_start_1
    new-instance v29, Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-direct/range {v29 .. v29}, Lcom/htc/android/mail/meeting/MeetingRequest;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .end local v28           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .local v29, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->id:J

    .line 211
    const-string v3, "_uid"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    .line 212
    const-string v3, "_account"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->accountId:J

    .line 213
    const-string v3, "_location"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    .line 214
    const-string v3, "_subject"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->summary:Ljava/lang/String;

    .line 216
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->getMessageCalss(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->messageClass:Ljava/lang/String;

    .line 217
    const-string v3, "_importance"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->importance:I

    .line 218
    const-string v3, "_instanceType"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->instanceType:I

    .line 219
    const-string v3, "_reminder"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I

    .line 221
    const-string v3, "_subject"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 222
    .local v36, subject:Ljava/lang/String;
    const/16 v26, 0x0

    .line 223
    .local v26, prefix:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p0

    if-ne v0, v3, :cond_a

    .line 224
    const v3, 0x7f0b0145

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 230
    :cond_7
    :goto_1
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    const-string v36, ""

    .line 233
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->subject:Ljava/lang/String;

    .line 235
    const-string v3, "_globalObjId"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 236
    .local v18, globalObjId:Ljava/lang/String;
    const/16 v33, 0x0

    .line 237
    .local v33, strMeetingGUID:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 239
    const/4 v14, 0x0

    .line 240
    .local v14, byteGUIDb64:[B
    move-object/from16 v33, v18

    .line 241
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 242
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v14

    .line 244
    :cond_9
    if-eqz v14, :cond_d

    .line 245
    const-string v33, ""

    .line 246
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    array-length v3, v14

    move/from16 v0, v19

    if-ge v0, v3, :cond_d

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v39, v14, v19

    invoke-static/range {v39 .. v39}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v39

    aput-object v39, v7, v8

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 246
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 225
    .end local v14           #byteGUIDb64:[B
    .end local v18           #globalObjId:Ljava/lang/String;
    .end local v19           #i:I
    .end local v33           #strMeetingGUID:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x3

    move/from16 v0, p0

    if-ne v0, v3, :cond_b

    .line 226
    const v3, 0x7f0b0146

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 227
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, p0

    if-ne v0, v3, :cond_7

    .line 228
    const v3, 0x7f0b0147

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 252
    .restart local v18       #globalObjId:Ljava/lang/String;
    .restart local v33       #strMeetingGUID:Ljava/lang/String;
    :cond_c
    move-object/from16 v33, v18

    .line 253
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    .line 261
    :cond_d
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 266
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    .line 270
    :cond_e
    const-string v3, "_allDayEvent"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 271
    .local v21, isAllDay:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 272
    const-string v3, "1"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v29

    iput-boolean v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    .line 275
    :cond_f
    const-string v3, "_organizer"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 276
    .local v34, strOrganizer:Ljava/lang/String;
    const/16 v24, 0x0

    .line 277
    .local v24, organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    const/4 v3, 0x1

    const-string v4, "utf-8"

    const-string v6, "utf-8"

    move-object/from16 v0, v34

    invoke-static {v0, v3, v4, v6}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 278
    if-eqz v24, :cond_14

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 279
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    iput-object v3, v4, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 280
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    iput-object v3, v4, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 289
    :cond_10
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v30

    .line 290
    .local v30, strAttendee:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 291
    const/4 v10, 0x0

    .line 292
    .local v10, attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    const/4 v3, 0x1

    const-string v4, "utf-8"

    const-string v6, "utf-8"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4, v6}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 293
    if-eqz v10, :cond_18

    .line 294
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/Mailaddress;

    .line 295
    .local v9, attendee:Lcom/htc/android/mail/Mailaddress;
    new-instance v25, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    invoke-direct/range {v25 .. v25}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;-><init>()V

    .line 296
    .local v25, person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    iget-object v3, v9, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 297
    iget-object v3, v9, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 298
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 371
    .end local v9           #attendee:Lcom/htc/android/mail/Mailaddress;
    .end local v10           #attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .end local v18           #globalObjId:Ljava/lang/String;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #isAllDay:Ljava/lang/String;
    .end local v24           #organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .end local v25           #person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    .end local v26           #prefix:Ljava/lang/String;
    .end local v30           #strAttendee:Ljava/lang/String;
    .end local v33           #strMeetingGUID:Ljava/lang/String;
    .end local v34           #strOrganizer:Ljava/lang/String;
    .end local v36           #subject:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v28, v29

    .line 372
    .end local v12           #build:Landroid/net/Uri$Builder;
    .end local v29           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .local v17, e:Ljava/lang/Exception;
    .restart local v28       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :goto_6
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    const/16 v28, 0x0

    .line 375
    if-eqz v15, :cond_11

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_11

    .line 376
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_11
    if-eqz v16, :cond_12

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 379
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 383
    .end local v17           #e:Ljava/lang/Exception;
    :cond_12
    :goto_7
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MeetingUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< getMeetingData: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v28           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v12       #build:Landroid/net/Uri$Builder;
    .restart local v18       #globalObjId:Ljava/lang/String;
    .restart local v21       #isAllDay:Ljava/lang/String;
    .restart local v26       #prefix:Ljava/lang/String;
    .restart local v29       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v33       #strMeetingGUID:Ljava/lang/String;
    .restart local v36       #subject:Ljava/lang/String;
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 282
    .restart local v24       #organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .restart local v34       #strOrganizer:Ljava/lang/String;
    :cond_14
    :try_start_4
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 283
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "MeetingUtil"

    const-string v4, "get meeting data: organizer null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 375
    .end local v18           #globalObjId:Ljava/lang/String;
    .end local v21           #isAllDay:Ljava/lang/String;
    .end local v24           #organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .end local v26           #prefix:Ljava/lang/String;
    .end local v33           #strMeetingGUID:Ljava/lang/String;
    .end local v34           #strOrganizer:Ljava/lang/String;
    .end local v36           #subject:Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v28, v29

    .end local v12           #build:Landroid/net/Uri$Builder;
    .end local v29           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v28       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :goto_8
    if-eqz v15, :cond_15

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_15

    .line 376
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_15
    if-eqz v16, :cond_16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_16

    .line 379
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_16
    throw v3

    .line 285
    .end local v28           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v12       #build:Landroid/net/Uri$Builder;
    .restart local v18       #globalObjId:Ljava/lang/String;
    .restart local v21       #isAllDay:Ljava/lang/String;
    .restart local v24       #organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .restart local v26       #prefix:Ljava/lang/String;
    .restart local v29       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v33       #strMeetingGUID:Ljava/lang/String;
    .restart local v34       #strOrganizer:Ljava/lang/String;
    .restart local v36       #subject:Ljava/lang/String;
    :cond_17
    :try_start_5
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "MeetingUtil"

    const-string v4, "get meeting data: organizerList null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 315
    .restart local v30       #strAttendee:Ljava/lang/String;
    :cond_18
    const-string v3, "_startTime"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 316
    .local v35, strStartTime:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 317
    invoke-static/range {v35 .. v35}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v22

    .line 318
    .local v22, millis:J
    new-instance v37, Landroid/text/format/Time;

    const-string v3, "UTC"

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 319
    .local v37, t:Landroid/text/format/Time;
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 320
    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setStartTime(Landroid/text/format/Time;)V

    .line 323
    .end local v22           #millis:J
    .end local v37           #t:Landroid/text/format/Time;
    :cond_19
    const-string v3, "_endTime"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 324
    .local v32, strEndTime:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 325
    invoke-static/range {v32 .. v32}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v22

    .line 326
    .restart local v22       #millis:J
    new-instance v37, Landroid/text/format/Time;

    const-string v3, "UTC"

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v37       #t:Landroid/text/format/Time;
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 328
    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setEndTime(Landroid/text/format/Time;)V

    .line 331
    .end local v22           #millis:J
    .end local v37           #t:Landroid/text/format/Time;
    :cond_1a
    const-string v3, "_dtstamp"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 332
    .local v31, strDTStamp:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 333
    invoke-static/range {v31 .. v31}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v22

    .line 334
    .restart local v22       #millis:J
    new-instance v37, Landroid/text/format/Time;

    const-string v3, "UTC"

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 335
    .restart local v37       #t:Landroid/text/format/Time;
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 336
    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setDTStampTime(Landroid/text/format/Time;)V

    .line 339
    .end local v22           #millis:J
    .end local v37           #t:Landroid/text/format/Time;
    :cond_1b
    const-string v3, "_recurrenceId"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 340
    .local v27, recurrenceId:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 341
    invoke-static/range {v27 .. v27}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v22

    .line 342
    .restart local v22       #millis:J
    new-instance v37, Landroid/text/format/Time;

    const-string v3, "UTC"

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v37       #t:Landroid/text/format/Time;
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 344
    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setRecurrenceId(Landroid/text/format/Time;)V

    .line 348
    .end local v22           #millis:J
    .end local v37           #t:Landroid/text/format/Time;
    :cond_1c
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_mimetype"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_text"

    aput-object v4, v5, v3

    .line 349
    .local v5, proPart:[Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsMessageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 350
    .local v13, buildPart:Landroid/net/Uri$Builder;
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 351
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 352
    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 354
    :cond_1d
    const-string v3, "_mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 355
    .local v38, type:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 368
    :cond_1e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    if-nez v3, :cond_1d

    .line 375
    .end local v38           #type:Ljava/lang/String;
    :cond_1f
    :goto_9
    if-eqz v15, :cond_20

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_20

    .line 376
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_20
    if-eqz v16, :cond_21

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_21

    .line 379
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_21
    move-object/from16 v28, v29

    .line 381
    .end local v29           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v28       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    goto/16 :goto_7

    .line 358
    .end local v28           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v29       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v38       #type:Ljava/lang/String;
    :cond_22
    :try_start_6
    const-string v3, "text/html"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "text/plain"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 359
    :cond_23
    const-string v3, "_text"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, body:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 361
    const-string v11, ""

    .line 365
    :cond_24
    :goto_a
    move-object/from16 v0, v29

    iput-object v11, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    goto :goto_9

    .line 362
    :cond_25
    const-string v3, "text/html"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 363
    invoke-static {v11}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v11

    goto :goto_a

    .line 375
    .end local v5           #proPart:[Ljava/lang/String;
    .end local v11           #body:Ljava/lang/String;
    .end local v12           #build:Landroid/net/Uri$Builder;
    .end local v13           #buildPart:Landroid/net/Uri$Builder;
    .end local v18           #globalObjId:Ljava/lang/String;
    .end local v21           #isAllDay:Ljava/lang/String;
    .end local v24           #organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .end local v26           #prefix:Ljava/lang/String;
    .end local v27           #recurrenceId:Ljava/lang/String;
    .end local v29           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .end local v30           #strAttendee:Ljava/lang/String;
    .end local v31           #strDTStamp:Ljava/lang/String;
    .end local v32           #strEndTime:Ljava/lang/String;
    .end local v33           #strMeetingGUID:Ljava/lang/String;
    .end local v34           #strOrganizer:Ljava/lang/String;
    .end local v35           #strStartTime:Ljava/lang/String;
    .end local v36           #subject:Ljava/lang/String;
    .end local v38           #type:Ljava/lang/String;
    .restart local v28       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :catchall_1
    move-exception v3

    goto/16 :goto_8

    .line 371
    :catch_1
    move-exception v17

    goto/16 :goto_6
.end method

.method public static getMeetingData(Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;)Lcom/htc/android/mail/meeting/MeetingRequest;
    .locals 20
    .parameter "item"

    .prologue
    .line 390
    if-nez p0, :cond_0

    .line 391
    const-string v14, "MeetingUtil"

    const-string v15, "getMeetingData error: parameter is null"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v11, 0x0

    .line 512
    :goto_0
    return-object v11

    .line 395
    :cond_0
    new-instance v11, Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-direct {v11}, Lcom/htc/android/mail/meeting/MeetingRequest;-><init>()V

    .line 396
    .local v11, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->uid:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->subject:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->subject:Ljava/lang/String;

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->subject:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->summary:Ljava/lang/String;

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->body:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->location:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    .line 401
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->allDay:Z

    iput-boolean v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    .line 402
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->importance:I

    iput v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->importance:I

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->startTime:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->originalStartTime:Ljava/lang/String;

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->endTime:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->originalEndTime:Ljava/lang/String;

    .line 407
    const/4 v12, 0x0

    .line 408
    .local v12, strMeetingGUID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->calGUID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->calGuidType:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    sget-object v15, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->base64:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    if-ne v14, v15, :cond_2

    .line 411
    const/4 v4, 0x0

    .line 412
    .local v4, byteGUIDb64:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->calGUID:Ljava/lang/String;

    .line 413
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 414
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v4

    .line 416
    :cond_1
    if-eqz v4, :cond_3

    .line 417
    const-string v12, ""

    .line 418
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v4

    if-ge v5, v14, :cond_3

    .line 419
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "%02X"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v19, v4, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 418
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 424
    .end local v4           #byteGUIDb64:[B
    .end local v5           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->calGUID:Ljava/lang/String;

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->calGUID:Ljava/lang/String;

    iput-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    .line 433
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 438
    iput-object v12, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    .line 442
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->organizer:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 443
    const/4 v9, 0x0

    .line 444
    .local v9, organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->organizer:Ljava/lang/String;

    const/4 v15, 0x1

    const-string v16, "utf-8"

    const-string v17, "utf-8"

    invoke-static/range {v14 .. v17}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 445
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 446
    iget-object v15, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/Mailaddress;

    iget-object v14, v14, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    iput-object v14, v15, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 447
    iget-object v15, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/Mailaddress;

    iget-object v14, v14, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    iput-object v14, v15, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 452
    .end local v9           #organizerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->attendee:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 453
    const/4 v3, 0x0

    .line 454
    .local v3, attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->attendee:Ljava/lang/String;

    const/4 v15, 0x1

    const-string v16, "utf-8"

    const-string v17, "utf-8"

    invoke-static/range {v14 .. v17}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 455
    if-eqz v3, :cond_6

    .line 456
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Mailaddress;

    .line 457
    .local v2, attendee:Lcom/htc/android/mail/Mailaddress;
    new-instance v10, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    invoke-direct {v10}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;-><init>()V

    .line 458
    .local v10, person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    iget-object v14, v2, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    iput-object v14, v10, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 459
    iget-object v14, v2, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    iput-object v14, v10, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 460
    iget-object v14, v11, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 466
    .end local v2           #attendee:Lcom/htc/android/mail/Mailaddress;
    .end local v3           #attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    :cond_6
    const-string v14, "IPM.Schedule.Meeting.Request"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->messageClass:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "IPM.Schedule.Meeting.proposeNewTime"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->messageClass:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 470
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localStartTime:Landroid/text/format/Time;

    if-eqz v14, :cond_9

    .line 471
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->allDay:Z

    if-eqz v14, :cond_8

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localStartTime:Landroid/text/format/Time;

    const/4 v15, 0x0

    iput v15, v14, Landroid/text/format/Time;->hour:I

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localStartTime:Landroid/text/format/Time;

    const/4 v15, 0x0

    iput v15, v14, Landroid/text/format/Time;->minute:I

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localStartTime:Landroid/text/format/Time;

    const/4 v15, 0x0

    iput v15, v14, Landroid/text/format/Time;->second:I

    .line 476
    :cond_8
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localStartTime:Landroid/text/format/Time;

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 477
    .local v13, time:Landroid/text/format/Time;
    const-string v14, "UTC"

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v11, v13}, Lcom/htc/android/mail/meeting/MeetingRequest;->setStartTime(Landroid/text/format/Time;)V

    .line 480
    .end local v13           #time:Landroid/text/format/Time;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localEndTime:Landroid/text/format/Time;

    if-eqz v14, :cond_b

    .line 481
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->allDay:Z

    if-eqz v14, :cond_a

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localEndTime:Landroid/text/format/Time;

    const/4 v15, 0x0

    iput v15, v14, Landroid/text/format/Time;->hour:I

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localEndTime:Landroid/text/format/Time;

    const/4 v15, 0x0

    iput v15, v14, Landroid/text/format/Time;->minute:I

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localEndTime:Landroid/text/format/Time;

    const/4 v15, 0x0

    iput v15, v14, Landroid/text/format/Time;->second:I

    .line 486
    :cond_a
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localEndTime:Landroid/text/format/Time;

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 487
    .restart local v13       #time:Landroid/text/format/Time;
    const-string v14, "UTC"

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v11, v13}, Lcom/htc/android/mail/meeting/MeetingRequest;->setEndTime(Landroid/text/format/Time;)V

    .line 507
    .end local v13           #time:Landroid/text/format/Time;
    :cond_b
    :goto_3
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 508
    .local v1, DTStampTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 509
    const-string v14, "UTC"

    invoke-virtual {v1, v14}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v11, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setDTStampTime(Landroid/text/format/Time;)V

    goto/16 :goto_0

    .line 493
    .end local v1           #DTStampTime:Landroid/text/format/Time;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->startTime:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->startTime:Ljava/lang/String;

    invoke-static {v14}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    .line 495
    .local v7, millim:J
    new-instance v13, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 496
    .restart local v13       #time:Landroid/text/format/Time;
    invoke-virtual {v13, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 497
    invoke-virtual {v11, v13}, Lcom/htc/android/mail/meeting/MeetingRequest;->setStartTime(Landroid/text/format/Time;)V

    .line 499
    .end local v7           #millim:J
    .end local v13           #time:Landroid/text/format/Time;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->endTime:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->endTime:Ljava/lang/String;

    invoke-static {v14}, Lcom/htc/android/mail/meeting/MeetingUtil;->strDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    .line 501
    .restart local v7       #millim:J
    new-instance v13, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 502
    .restart local v13       #time:Landroid/text/format/Time;
    invoke-virtual {v13, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 503
    invoke-virtual {v11, v13}, Lcom/htc/android/mail/meeting/MeetingRequest;->setEndTime(Landroid/text/format/Time;)V

    goto :goto_3
.end method

.method public static getMeetingInvitationData(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Lcom/htc/android/mail/meeting/MeetingRequest;
    .locals 27
    .parameter "exSyncSources"
    .parameter "eventId"
    .parameter "context"

    .prologue
    .line 116
    if-nez p0, :cond_5

    .line 117
    const-string v6, "MeetingUtil"

    const-string v7, "getMeetingInvitationData error: sync source null"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    const/16 v19, 0x0

    .line 124
    .local v19, eventCur:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 125
    .local v11, attendeeCur:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 126
    .local v22, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 128
    .local v5, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 129
    .local v12, builder:Landroid/net/Uri$Builder;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 131
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_6

    .line 132
    :cond_1
    sget-boolean v6, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MeetingUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMeetingInvitationData, Can not get meeting data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v6, v0, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :cond_2
    const/16 v23, 0x0

    .line 178
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 179
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_3
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 182
    .end local v22           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v11           #attendeeCur:Landroid/database/Cursor;
    .end local v12           #builder:Landroid/net/Uri$Builder;
    .end local v19           #eventCur:Landroid/database/Cursor;
    :cond_4
    :goto_1
    return-object v23

    .line 118
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gtz v6, :cond_0

    .line 119
    const-string v6, "MeetingUtil"

    const-string v7, "getMeetingInvitationData error: event id null"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v23, 0x0

    goto :goto_1

    .line 136
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v11       #attendeeCur:Landroid/database/Cursor;
    .restart local v12       #builder:Landroid/net/Uri$Builder;
    .restart local v19       #eventCur:Landroid/database/Cursor;
    .restart local v22       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :cond_6
    :try_start_1
    new-instance v23, Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-direct/range {v23 .. v23}, Lcom/htc/android/mail/meeting/MeetingRequest;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .end local v22           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .local v23, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-object/from16 v0, v23

    iput-wide v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->accountId:J

    .line 138
    const-string v6, "iCalGUID"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    .line 139
    const-string v6, "allDay"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, v23

    iput-boolean v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    .line 141
    const-string v6, "dtstart"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 142
    .local v17, dtStart:J
    new-instance v26, Landroid/text/format/Time;

    const-string v6, "UTC"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 143
    .local v26, tmStart:Landroid/text/format/Time;
    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 144
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setStartTime(Landroid/text/format/Time;)V

    .line 146
    const-string v6, "dtend"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 147
    .local v13, dtEnd:J
    new-instance v24, Landroid/text/format/Time;

    const-string v6, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 148
    .local v24, tmEnd:Landroid/text/format/Time;
    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 149
    invoke-virtual/range {v23 .. v24}, Lcom/htc/android/mail/meeting/MeetingRequest;->setEndTime(Landroid/text/format/Time;)V

    .line 150
    const-string v6, "dtend"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 151
    .local v15, dtStamp:J
    new-instance v25, Landroid/text/format/Time;

    const-string v6, "UTC"

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 152
    .local v25, tmStamp:Landroid/text/format/Time;
    const-wide/16 v6, 0x0

    cmp-long v6, v15, v6

    if-lez v6, :cond_a

    .line 153
    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 157
    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/meeting/MeetingRequest;->setDTStampTime(Landroid/text/format/Time;)V

    .line 159
    const-string v6, "rrule"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->rrule:Ljava/lang/String;

    .line 160
    const-string v6, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->summary:Ljava/lang/String;

    .line 161
    const-string v6, "eventLocation"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    .line 162
    const-string v6, "description"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    .line 163
    const-string v6, "originalInstanceTime"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v23

    iput-wide v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->originalInstanceTime:J

    .line 166
    const-string v6, "parentID"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 167
    .local v20, parentId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-lez v6, :cond_7

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->originalInstanceTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 168
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iput-boolean v6, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->isException:Z

    .line 172
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/meeting/MeetingUtil;->fillAttendee(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)V

    .line 175
    move-wide/from16 v0, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/meeting/MeetingUtil;->fillReminder(JLcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    .line 179
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_8
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_0

    .line 139
    .end local v13           #dtEnd:J
    .end local v15           #dtStamp:J
    .end local v17           #dtStart:J
    .end local v20           #parentId:J
    .end local v24           #tmEnd:Landroid/text/format/Time;
    .end local v25           #tmStamp:Landroid/text/format/Time;
    .end local v26           #tmStart:Landroid/text/format/Time;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 155
    .restart local v13       #dtEnd:J
    .restart local v15       #dtStamp:J
    .restart local v17       #dtStart:J
    .restart local v24       #tmEnd:Landroid/text/format/Time;
    .restart local v25       #tmStamp:Landroid/text/format/Time;
    .restart local v26       #tmStart:Landroid/text/format/Time;
    :cond_a
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Landroid/text/format/Time;->setToNow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 178
    .end local v13           #dtEnd:J
    .end local v15           #dtStamp:J
    .end local v17           #dtStart:J
    .end local v24           #tmEnd:Landroid/text/format/Time;
    .end local v25           #tmStamp:Landroid/text/format/Time;
    .end local v26           #tmStart:Landroid/text/format/Time;
    :catchall_0
    move-exception v6

    move-object/from16 v22, v23

    .end local v12           #builder:Landroid/net/Uri$Builder;
    .end local v23           #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    .restart local v22       #request:Lcom/htc/android/mail/meeting/MeetingRequest;
    :goto_4
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_b

    .line 179
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_b
    if-eqz v11, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_c

    .line 182
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_c
    throw v6

    :catchall_1
    move-exception v6

    goto :goto_4
.end method

.method public static getMessageCalss(I)Ljava/lang/String;
    .locals 3
    .parameter "meetingCmd"

    .prologue
    .line 1044
    packed-switch p0, :pswitch_data_0

    .line 1058
    sget-boolean v0, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MeetingUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_0
    const-string v0, "IPM.Schedule.Meeting.Resp.Tent"

    :goto_0
    return-object v0

    .line 1046
    :pswitch_0
    const-string v0, "IPM.Schedule.Meeting.Resp.Pos"

    goto :goto_0

    .line 1048
    :pswitch_1
    const-string v0, "IPM.Schedule.Meeting.Resp.Neg"

    goto :goto_0

    .line 1050
    :pswitch_2
    const-string v0, "IPM.Schedule.Meeting.Resp.Tent"

    goto :goto_0

    .line 1052
    :pswitch_3
    const-string v0, "IPM.Schedule.Meeting.Request"

    goto :goto_0

    .line 1054
    :pswitch_4
    const-string v0, "IPM.Schedule.Meeting.MeetingRespForward"

    goto :goto_0

    .line 1056
    :pswitch_5
    const-string v0, "IPM.Schedule.Meeting.proposeNewTime"

    goto :goto_0

    .line 1044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public static getParentGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "guid"

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x28

    .line 936
    const/4 v1, 0x0

    .line 937
    .local v1, parentGUID:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-object v4

    .line 940
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 944
    const/16 v4, 0x20

    const/16 v5, 0x28

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 945
    .local v3, subString:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "00000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 946
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 947
    .local v2, sb:Ljava/lang/StringBuffer;
    const/16 v4, 0x20

    const/16 v5, 0x28

    const-string v6, "00000000"

    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 948
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2           #sb:Ljava/lang/StringBuffer;
    .end local v3           #subString:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v4, v1

    .line 954
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 952
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getTimeFromCalFilterType(I)Landroid/text/format/Time;
    .locals 7
    .parameter "calFilterType"

    .prologue
    const/4 v1, 0x0

    .line 1118
    new-instance v0, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1120
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 1122
    packed-switch p0, :pswitch_data_0

    .line 1148
    const-string v2, "MeetingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeFromCalFilterType: error type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :goto_0
    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1155
    :cond_0
    return-object v0

    .line 1124
    :pswitch_0
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_0

    .line 1127
    :pswitch_1
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1130
    :pswitch_2
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x3

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1133
    :pswitch_3
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x7

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1136
    :pswitch_4
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0xe

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1139
    :pswitch_5
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1142
    :pswitch_6
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, -0x3

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1145
    :pswitch_7
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, -0x6

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 1122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isCalendarEventExist(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JLandroid/content/Context;)Z
    .locals 11
    .parameter "exSyncSources"
    .parameter "eventId"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 1254
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return v8

    .line 1258
    :cond_1
    const/4 v8, 0x0

    .line 1259
    .local v8, bRet:Z
    const/4 v9, 0x0

    .line 1261
    .local v9, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1262
    .local v2, proj:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    .line 1263
    .local v6, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    .line 1264
    .local v7, accountType:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "account_type=\'%s\' AND account_name=\'%s\' AND _id=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1267
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1268
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    const/4 v8, 0x1

    .line 1272
    :cond_2
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1272
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #accountName:Ljava/lang/String;
    .end local v7           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1273
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1272
    :cond_3
    throw v0
.end method

.method public static isMeeting(I)Z
    .locals 2
    .parameter "smartCommand"

    .prologue
    const/4 v0, 0x1

    .line 958
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return v0

    .line 960
    :cond_1
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    .line 962
    invoke-static {p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->isReplyMeeting(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMeetingInvitation(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;JLandroid/content/Context;)Z
    .locals 20
    .parameter "account"
    .parameter "calendarEventId"
    .parameter "context"

    .prologue
    .line 969
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 970
    const/4 v2, 0x0

    .line 1028
    :goto_0
    return v2

    .line 971
    :cond_0
    if-eqz p0, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 972
    :cond_1
    const-string v2, "MeetingUtil"

    const-string v3, "isMeetingInvitation: account null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v2, 0x0

    goto :goto_0

    .line 975
    :cond_2
    const/4 v11, 0x0

    .line 976
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 977
    .local v14, hasAttendee:Z
    const/16 v16, 0x0

    .line 978
    .local v16, isOrganizer:Z
    const-string v8, ""

    .line 979
    .local v8, OrganizerAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 980
    .local v9, accountEmail:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v10, attendeesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "event_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 983
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attendeeRelationship"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "attendeeEmail"

    aput-object v3, v4, v2

    .line 984
    .local v4, proj:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 986
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 988
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 989
    .local v17, relationship:I
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 990
    .local v12, email:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 991
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 993
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 994
    const/4 v14, 0x1

    .line 995
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 996
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_5
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 1007
    .end local v12           #email:Ljava/lang/String;
    .end local v17           #relationship:I
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1008
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1009
    const/4 v11, 0x0

    .line 1013
    :cond_7
    if-eqz v16, :cond_8

    if-nez v14, :cond_b

    .line 1014
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 998
    .restart local v12       #email:Ljava/lang/String;
    .restart local v17       #relationship:I
    :cond_9
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 999
    :try_start_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 1000
    const/16 v16, 0x1

    .line 1001
    move-object v8, v12

    goto :goto_1

    .line 1007
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v12           #email:Ljava/lang/String;
    .end local v17           #relationship:I
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1008
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1009
    const/4 v11, 0x0

    .line 1007
    :cond_a
    throw v2

    .line 1017
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    :cond_b
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v18, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1020
    .local v13, emailAddr:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1021
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1024
    .end local v13           #emailAddr:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1026
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "MeetingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMeetingInvitation: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_e
    if-eqz v16, :cond_f

    if-eqz v14, :cond_f

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static isReplyMeeting(I)Z
    .locals 1
    .parameter "smartCommand"

    .prologue
    .line 1032
    packed-switch p0, :pswitch_data_0

    .line 1039
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1037
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static meetingCmd2SmartCommand(I)I
    .locals 1
    .parameter "meetingCmd"

    .prologue
    .line 97
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 99
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 103
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 105
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 109
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public static millisToEasDateTime(JLjava/util/TimeZone;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "withTime"
    .parameter "gmtTimeZone"

    .prologue
    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 601
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 602
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    if-eqz p3, :cond_0

    .line 606
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    if-ne p2, p4, :cond_0

    .line 611
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static needConvert2MailGUID(Ljava/lang/String;)Z
    .locals 3
    .parameter "calGUID"

    .prologue
    .line 904
    sget-boolean v0, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MeetingUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needConvert2MailGUID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    :cond_1
    const/4 v0, 0x0

    .line 908
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static needToAddCalendarEvent(JLcom/htc/android/mail/meeting/MeetingRequest;)Z
    .locals 3
    .parameter "accountId"
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 1086
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    if-nez p2, :cond_1

    .line 1087
    :cond_0
    const-string v1, "MeetingUtil"

    const-string v2, "needToAddCalendarEvent: parameter null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    return v0

    .line 1089
    :cond_1
    invoke-virtual {p2}, Lcom/htc/android/mail/meeting/MeetingRequest;->getStartTime()Landroid/text/format/Time;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1090
    const-string v1, "MeetingUtil"

    const-string v2, "needToAddCalendarEvent: request start time null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static processAllDay(Landroid/text/format/Time;Landroid/text/format/Time;Z)Landroid/text/format/Time;
    .locals 17
    .parameter "start"
    .parameter "end"
    .parameter "isAllDay"

    .prologue
    .line 1064
    sget-boolean v14, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "MeetingUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "> processAllDay: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_0
    if-nez p2, :cond_1

    .line 1082
    .end local p1
    :goto_0
    return-object p1

    .line 1068
    .restart local p1
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 1069
    .local v12, startMillis:J
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 1070
    .local v5, endMillis:J
    const-wide v10, 0x4194997000000000L

    .line 1071
    .local v10, oneDay:D
    sub-long v14, v5, v12

    long-to-double v14, v14

    div-double v3, v14, v10

    .line 1072
    .local v3, diff:D
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-long v1, v14

    .line 1073
    .local v1, days:J
    const-wide/16 v14, 0x1

    add-long/2addr v1, v14

    .line 1074
    sget-boolean v14, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "MeetingUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processAllDay: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_2
    const-wide/32 v14, 0x5265c00

    mul-long/2addr v14, v1

    add-long v8, v12, v14

    .line 1077
    .local v8, newEndMillis:J
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1078
    .local v7, newEnd:Landroid/text/format/Time;
    invoke-virtual {v7, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1079
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 1081
    sget-boolean v14, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "MeetingUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "< processAllDay: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 p1, v7

    .line 1082
    goto :goto_0
.end method

.method public static smartCommand2MeetingCmd(I)I
    .locals 1
    .parameter "smartCmd"

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 84
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 86
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 88
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 90
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static splitTime(Ljava/lang/String;)[I
    .locals 9
    .parameter "time"

    .prologue
    const/4 v6, 0x0

    .line 650
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    .line 672
    :goto_0
    return-object v5

    .line 654
    :cond_0
    const/4 v7, 0x6

    new-array v5, v7, [I

    .line 656
    .local v5, returnTime:[I
    :try_start_0
    const-string v7, "T"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, Date_Time:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v0, v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, Date_split:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, Time_split:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v3, v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, Second_split:[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 662
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 663
    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 664
    const/4 v7, 0x3

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 665
    const/4 v7, 0x4

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 666
    const/4 v7, 0x5

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    .end local v0           #Date_Time:[Ljava/lang/String;
    .end local v1           #Date_split:[Ljava/lang/String;
    .end local v2           #Second_split:[Ljava/lang/String;
    .end local v3           #Time_split:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 668
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 669
    goto :goto_0
.end method

.method public static strDateTimeToMillis(Ljava/lang/String;)J
    .locals 11
    .parameter "strTime"

    .prologue
    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    .line 521
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MeetingUtil"

    const-string v2, "StrDateTimeToMillis error #1"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    :goto_0
    return-wide v7

    .line 524
    :cond_1
    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 525
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MeetingUtil"

    const-string v2, "StrDateTimeToMillis error #2"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-static {p0}, Lcom/htc/android/mail/meeting/MeetingUtil;->splitTime(Ljava/lang/String;)[I

    move-result-object v9

    .line 530
    .local v9, split:[I
    if-nez v9, :cond_3

    .line 531
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MeetingUtil"

    const-string v2, "StrDateTimeToMillis error #3"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_3
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, time:Landroid/text/format/Time;
    const/4 v1, 0x5

    aget v1, v9, v1

    const/4 v2, 0x4

    aget v2, v9, v2

    const/4 v3, 0x3

    aget v3, v9, v3

    const/4 v4, 0x2

    aget v4, v9, v4

    const/4 v5, 0x1

    aget v5, v9, v5

    add-int/lit8 v5, v5, -0x1

    aget v6, v9, v10

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 537
    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 538
    .local v7, millis:J
    goto :goto_0
.end method
