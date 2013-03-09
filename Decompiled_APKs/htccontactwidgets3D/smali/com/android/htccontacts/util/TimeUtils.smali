.class public final Lcom/android/htccontacts/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static sDailyFormat:Ljava/lang/CharSequence;

.field private static sDailyFormat24:Ljava/lang/CharSequence;

.field private static sDateFormat:Ljava/lang/CharSequence;

.field private static sInstance:Lcom/android/htccontacts/util/TimeUtils;

.field private static sShortDateFormat:Ljava/lang/CharSequence;

.field private static sYearlyFormat:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 57
    .local v2, res:Landroid/content/res/Resources;
    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, resISO3Language:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 62
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, currentISO3Language:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 71
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 75
    :cond_2
    invoke-static {p1}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    .line 79
    :try_start_0
    new-instance v4, Lcom/android/htccontacts/util/TimeUtils$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/util/TimeUtils$1;-><init>(Lcom/android/htccontacts/util/TimeUtils;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    return-void
.end method

.method public static getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"
    .parameter "showYear"

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZJ)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "time"
    .parameter "showYear"
    .parameter "today"

    .prologue
    .line 129
    const/4 v9, 0x0

    .line 131
    .local v9, result:Ljava/lang/String;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 132
    .local v11, startTime:Landroid/text/format/Time;
    move-wide v0, p1

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 133
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 134
    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 138
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    .line 140
    if-eqz p3, :cond_1

    .line 141
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 147
    .local v4, dateFormat:Ljava/lang/CharSequence;
    :goto_0
    iget-wide v12, v11, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 148
    .local v10, startDay:I
    iget-wide v12, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 149
    .local v2, currentDay:I
    sub-int v12, v2, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 150
    .local v5, days:I
    cmp-long v12, p4, p1

    if-lez v12, :cond_2

    const/4 v7, 0x1

    .line 152
    .local v7, past:Z
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 153
    .local v8, r:Landroid/content/res/Resources;
    const/4 v12, 0x1

    if-ne v5, v12, :cond_3

    .line 154
    if-eqz v7, :cond_0

    .line 155
    const v12, 0x1040077

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    :cond_0
    :goto_2
    return-object v9

    .line 144
    .end local v2           #currentDay:I
    .end local v4           #dateFormat:Ljava/lang/CharSequence;
    .end local v5           #days:I
    .end local v7           #past:Z
    .end local v8           #r:Landroid/content/res/Resources;
    .end local v10           #startDay:I
    :cond_1
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .restart local v4       #dateFormat:Ljava/lang/CharSequence;
    goto :goto_0

    .line 150
    .restart local v2       #currentDay:I
    .restart local v5       #days:I
    .restart local v10       #startDay:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 157
    .restart local v7       #past:Z
    .restart local v8       #r:Landroid/content/res/Resources;
    :cond_3
    if-nez v5, :cond_4

    .line 158
    const v12, 0x1040078

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 161
    :cond_4
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 163
    .local v6, inDate:Ljava/util/Calendar;
    move-wide v0, p1

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static getTimeUtils(Landroid/content/Context;)Lcom/android/htccontacts/util/TimeUtils;
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->init(Landroid/content/Context;)V

    .line 116
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sInstance:Lcom/android/htccontacts/util/TimeUtils;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    const-class v1, Lcom/android/htccontacts/util/TimeUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sInstance:Lcom/android/htccontacts/util/TimeUtils;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/htccontacts/util/TimeUtils;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/TimeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sInstance:Lcom/android/htccontacts/util/TimeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit v1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static loadSystemDateFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 105
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 106
    const v0, 0x20c0148

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .line 109
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 110
    const v0, 0x20c0149

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .line 112
    :cond_1
    return-void
.end method

.method private static loadSystemTimeFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, rc:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const v1, 0x20c0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/util/TimeUtils;->sDailyFormat:Ljava/lang/CharSequence;

    .line 97
    const v1, 0x20c010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/util/TimeUtils;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 99
    const v1, 0x20c010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/util/TimeUtils;->sYearlyFormat:Ljava/lang/CharSequence;

    .line 101
    :cond_0
    return-void
.end method
