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
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 59
    .local v2, res:Landroid/content/res/Resources;
    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, resISO3Language:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 64
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, currentISO3Language:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 73
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 77
    :cond_2
    invoke-static {p1}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    .line 81
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

    .line 88
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    return-void
.end method

.method public static getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"
    .parameter "showYear"

    .prologue
    .line 209
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
    .line 212
    const/4 v9, 0x0

    .line 214
    .local v9, result:Ljava/lang/String;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 215
    .local v11, startTime:Landroid/text/format/Time;
    move-wide v0, p1

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 216
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 217
    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 221
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    .line 223
    if-eqz p3, :cond_1

    .line 224
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 230
    .local v4, dateFormat:Ljava/lang/CharSequence;
    :goto_0
    iget-wide v12, v11, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 231
    .local v10, startDay:I
    iget-wide v12, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 232
    .local v2, currentDay:I
    sub-int v12, v2, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 233
    .local v5, days:I
    cmp-long v12, p4, p1

    if-lez v12, :cond_2

    const/4 v7, 0x1

    .line 235
    .local v7, past:Z
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 236
    .local v8, r:Landroid/content/res/Resources;
    const/4 v12, 0x1

    if-ne v5, v12, :cond_3

    .line 237
    if-eqz v7, :cond_0

    .line 238
    const v12, 0x1040077

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 248
    :cond_0
    :goto_2
    return-object v9

    .line 227
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

    .line 233
    .restart local v2       #currentDay:I
    .restart local v5       #days:I
    .restart local v10       #startDay:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 240
    .restart local v7       #past:Z
    .restart local v8       #r:Landroid/content/res/Resources;
    :cond_3
    if-nez v5, :cond_4

    .line 241
    const v12, 0x1040078

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 244
    :cond_4
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 246
    .local v6, inDate:Ljava/util/Calendar;
    move-wide v0, p1

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static getRelativeTimeStringUsingSystemFormat(JZ)Ljava/lang/String;
    .locals 2
    .parameter "time"
    .parameter "showYear"

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeTimeStringUsingSystemFormat(JZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeStringUsingSystemFormat(JZJ)Ljava/lang/String;
    .locals 16
    .parameter "time"
    .parameter "showYear"
    .parameter "today"

    .prologue
    .line 257
    const/4 v10, 0x0

    .line 259
    .local v10, result:Ljava/lang/String;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 260
    .local v12, startTime:Landroid/text/format/Time;
    move-wide/from16 v0, p0

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 261
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 262
    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 265
    if-eqz p2, :cond_0

    .line 266
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 272
    .local v4, dateFormat:Ljava/lang/CharSequence;
    :goto_0
    iget-wide v13, v12, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p0

    invoke-static {v0, v1, v13, v14}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 273
    .local v11, startDay:I
    iget-wide v13, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v13, v14}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 274
    .local v2, currentDay:I
    sub-int v13, v2, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 275
    .local v5, days:I
    cmp-long v13, p3, p0

    if-lez v13, :cond_1

    const/4 v7, 0x1

    .line 277
    .local v7, past:Z
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 278
    .local v8, r:Landroid/content/res/Resources;
    const/4 v13, 0x1

    if-ne v5, v13, :cond_3

    .line 280
    if-eqz v7, :cond_2

    .line 281
    const v13, 0x1040077

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 301
    :goto_2
    return-object v10

    .line 269
    .end local v2           #currentDay:I
    .end local v4           #dateFormat:Ljava/lang/CharSequence;
    .end local v5           #days:I
    .end local v7           #past:Z
    .end local v8           #r:Landroid/content/res/Resources;
    .end local v11           #startDay:I
    :cond_0
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .restart local v4       #dateFormat:Ljava/lang/CharSequence;
    goto :goto_0

    .line 275
    .restart local v2       #currentDay:I
    .restart local v5       #days:I
    .restart local v11       #startDay:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 283
    .restart local v7       #past:Z
    .restart local v8       #r:Landroid/content/res/Resources;
    :cond_2
    const v13, 0x1040079

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 285
    :cond_3
    if-nez v5, :cond_4

    .line 286
    const v13, 0x1040078

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 287
    :cond_4
    const/4 v13, 0x7

    if-gt v5, v13, :cond_6

    .line 290
    if-eqz v7, :cond_5

    .line 291
    const v9, 0x1130004

    .line 295
    .local v9, resId:I
    :goto_3
    invoke-virtual {v8, v9, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, format:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 297
    goto :goto_2

    .line 293
    .end local v6           #format:Ljava/lang/String;
    .end local v9           #resId:I
    :cond_5
    const v9, 0x1130008

    .restart local v9       #resId:I
    goto :goto_3

    .line 299
    .end local v9           #resId:I
    :cond_6
    move-wide/from16 v0, p0

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method public static getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"
    .parameter "showYear"

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZJ)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "time"
    .parameter "showYear"
    .parameter "today"

    .prologue
    .line 159
    const/4 v8, 0x0

    .line 161
    .local v8, result:Ljava/lang/String;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 162
    .local v10, startTime:Landroid/text/format/Time;
    invoke-virtual {v10, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 163
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 164
    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 168
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemTimeFormat(Landroid/content/Context;)V

    .line 170
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    .line 172
    if-eqz p3, :cond_1

    .line 173
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 179
    .local v4, dateFormat:Ljava/lang/CharSequence;
    :goto_0
    iget-wide v11, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 180
    .local v9, startDay:I
    iget-wide v11, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 181
    .local v2, currentDay:I
    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 182
    .local v5, days:I
    cmp-long v11, p4, p1

    if-lez v11, :cond_2

    const/4 v6, 0x1

    .line 184
    .local v6, past:Z
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 185
    .local v7, r:Landroid/content/res/Resources;
    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 186
    if-eqz v6, :cond_0

    .line 187
    const v11, 0x1040077

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 204
    :cond_0
    :goto_2
    return-object v8

    .line 176
    .end local v2           #currentDay:I
    .end local v4           #dateFormat:Ljava/lang/CharSequence;
    .end local v5           #days:I
    .end local v6           #past:Z
    .end local v7           #r:Landroid/content/res/Resources;
    .end local v9           #startDay:I
    :cond_1
    sget-object v4, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .restart local v4       #dateFormat:Ljava/lang/CharSequence;
    goto :goto_0

    .line 182
    .restart local v2       #currentDay:I
    .restart local v5       #days:I
    .restart local v9       #startDay:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 189
    .restart local v6       #past:Z
    .restart local v7       #r:Landroid/content/res/Resources;
    :cond_3
    if-nez v5, :cond_4

    .line 194
    invoke-static/range {p0 .. p3}, Lcom/android/htccontacts/util/TimeUtils;->getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 196
    :cond_4
    const/4 v11, 0x7

    if-gt v5, v11, :cond_5

    .line 198
    iget v11, v10, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0xa

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 201
    :cond_5
    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public static getTimeStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "time"
    .parameter "showYear"

    .prologue
    .line 138
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeUtils(Landroid/content/Context;)Lcom/android/htccontacts/util/TimeUtils;
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/htccontacts/util/TimeUtils;->init(Landroid/content/Context;)V

    .line 118
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sInstance:Lcom/android/htccontacts/util/TimeUtils;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    const-class v1, Lcom/android/htccontacts/util/TimeUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sInstance:Lcom/android/htccontacts/util/TimeUtils;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/htccontacts/util/TimeUtils;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/TimeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sInstance:Lcom/android/htccontacts/util/TimeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit v1

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static loadSystemDateFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 107
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 108
    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .line 111
    sget-object v0, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 112
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/TimeUtils;->sShortDateFormat:Ljava/lang/CharSequence;

    .line 114
    :cond_1
    return-void
.end method

.method private static loadSystemTimeFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, rc:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const v1, 0x7f0a0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/util/TimeUtils;->sDailyFormat:Ljava/lang/CharSequence;

    .line 99
    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/util/TimeUtils;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 101
    const v1, 0x7f0a0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/util/TimeUtils;->sYearlyFormat:Ljava/lang/CharSequence;

    .line 103
    :cond_0
    return-void
.end method
