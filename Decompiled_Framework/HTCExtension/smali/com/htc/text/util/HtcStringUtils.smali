.class public Lcom/htc/text/util/HtcStringUtils;
.super Ljava/lang/Object;
.source "HtcStringUtils.java"


# static fields
.field public static final BLANK_CHAR:Ljava/lang/CharSequence;

.field public static final FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_HOUR_MIN_12:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_HOUR_MIN_24:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_MONTH_DAY_HOUR_MIN:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

.field public static final HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

.field public static final LINE_FEED_CHAR:Ljava/lang/CharSequence;

.field public static final LINE_FEED_TAG:Ljava/lang/CharSequence;

.field public static final NOT_A_CHAR:Ljava/lang/CharSequence;

.field public static final SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, " "

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->BLANK_CHAR:Ljava/lang/CharSequence;

    const-string v0, "\n"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LINE_FEED_CHAR:Ljava/lang/CharSequence;

    const-string v0, "<br />"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LINE_FEED_TAG:Ljava/lang/CharSequence;

    const-string v0, "\ufffc"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->NOT_A_CHAR:Ljava/lang/CharSequence;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE."

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN_12:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN_24:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM. d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM. d, h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY_HOUR_MIN:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 12

    const v11, 0x20c0199

    const/4 v6, 0x2

    const-wide/32 v9, 0x36ee80

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    sget-object v4, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    if-ne p1, v4, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    const-wide/16 v1, 0x0

    :cond_0
    const-wide/32 v4, 0xc350

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    const v4, 0x20c019b

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    cmp-long v4, v1, v9

    if-gez v4, :cond_3

    const v4, 0x20c019c

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_6

    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_4

    const v4, 0x20c019a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_5

    const v4, 0x20c019d

    new-array v5, v7, [Ljava/lang/Object;

    div-long v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const v4, 0x20c019e

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    const-wide/32 v4, 0x14997000

    cmp-long v4, v1, v4

    if-gez v4, :cond_7

    const v4, 0x20c01a0

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const v4, 0x20c01a1

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    sget-object v4, Lcom/htc/text/util/HtcStringUtils;->SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    if-ne p1, v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_9

    const-wide/16 v1, 0x0

    :cond_9
    const-wide/32 v4, 0xc350

    cmp-long v4, v1, v4

    if-gez v4, :cond_a

    const v4, 0x20c019b

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    cmp-long v4, v1, v9

    if-gez v4, :cond_c

    const v4, 0x20c019c

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_f

    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_d

    const v4, 0x20c019a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_e

    const v4, 0x20c019d

    new-array v5, v7, [Ljava/lang/Object;

    div-long v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_e
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_f
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method
