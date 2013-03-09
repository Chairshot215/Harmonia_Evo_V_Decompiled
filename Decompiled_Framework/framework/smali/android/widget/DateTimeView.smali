.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mLastDisplay:I

.field mLastFormat:Landroid/text/format/DateFormat;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DateTimeView;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 5

    const-string v2, ""

    const-string v0, "EE, MMM dd, yyyy"

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "DateTimeView"

    const-string v4, "can\'t get system current date format"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/widget/DateTimeView;->registerReceivers()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/widget/DateTimeView;->unregisterReceivers()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    return-void
.end method

.method public setTime(J)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v6, 0x0

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    iput v6, v7, Landroid/text/format/Time;->second:I

    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method update()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v17, v0

    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->second:I

    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0xc

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->hour:I

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xc

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->hour:I

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->hour:I

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->minute:I

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Landroid/text/format/Time;->set(J)V

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->second:I

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    cmp-long v22, v11, v9

    if-ltz v22, :cond_1

    cmp-long v22, v11, v7

    if-ltz v22, :cond_2

    :cond_1
    cmp-long v22, v11, v20

    if-ltz v22, :cond_3

    cmp-long v22, v11, v18

    if-gez v22, :cond_3

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v6, ""

    const-string v16, ""

    packed-switch v3, :pswitch_data_0

    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "unknown display value: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_5

    cmp-long v22, v18, v7

    if-lez v22, :cond_4

    :goto_3
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    goto/16 :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-wide/from16 v18, v7

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v11

    if-gez v22, :cond_6

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    :cond_6
    cmp-long v22, v20, v9

    if-gez v22, :cond_7

    :goto_5
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    :cond_7
    move-wide/from16 v20, v9

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
