.class Lcom/android/mms/ui/YMSMsgTimeUpdater;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# static fields
.field static s_nOneDayMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 684
    const v0, 0x5265c00

    sput v0, Lcom/android/mms/ui/YMSMsgTimeUpdater;->s_nOneDayMillis:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 683
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .parameter "ctxRes"
    .parameter "nMillis"

    .prologue
    .line 700
    const/4 v10, 0x0

    .line 701
    .local v10, nWeekDay:I
    const-wide/16 v8, 0x0

    .line 702
    .local v8, nMilliToday:J
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 703
    .local v12, timeToday:Landroid/text/format/Time;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    .line 705
    .local v7, bIs24H:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 706
    iget v10, v12, Landroid/text/format/Time;->weekDay:I

    .line 707
    iget v1, v12, Landroid/text/format/Time;->monthDay:I

    iget v2, v12, Landroid/text/format/Time;->month:I

    iget v3, v12, Landroid/text/format/Time;->year:I

    invoke-virtual {v12, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 708
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 710
    cmp-long v1, p1, v8

    if-ltz v1, :cond_1

    sget v1, Lcom/android/mms/ui/YMSMsgTimeUpdater;->s_nOneDayMillis:I

    int-to-long v1, v1

    add-long/2addr v1, v8

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 711
    invoke-static {p0, p1, p2, v7}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v11

    .line 713
    .local v11, strTime:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/ui/YMSMsgTimeUpdater;->isENLocale(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 729
    .end local v11           #strTime:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v11

    .line 720
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 721
    .local v0, timeShift:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 722
    iget v1, v0, Landroid/text/format/Time;->second:I

    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v12, Landroid/text/format/Time;->monthDay:I

    iget v5, v12, Landroid/text/format/Time;->month:I

    iget v6, v12, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 724
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {p0, v1, v2, v7}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v11

    .line 725
    .restart local v11       #strTime:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/ui/YMSMsgTimeUpdater;->isENLocale(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 729
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v7}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method protected static isENLocale(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctxRes"

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 688
    .local v0, localeSystem:Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 689
    const/4 v2, 0x0

    .line 696
    :goto_0
    return v2

    .line 692
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, strLanguage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 696
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
