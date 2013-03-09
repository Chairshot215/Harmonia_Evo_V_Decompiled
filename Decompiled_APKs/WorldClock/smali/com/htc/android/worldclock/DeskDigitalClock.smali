.class public Lcom/htc/android/worldclock/DeskDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DeskDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;,
        Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;,
        Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"


# instance fields
.field m24HourMode:Z

.field private mAmPm:Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandy:Landroid/os/Handler;

.field private mImageHour:Landroid/widget/ImageView;

.field private mImageHour10:Landroid/widget/ImageView;

.field private mImageMinute:Landroid/widget/ImageView;

.field private mImageMinute10:Landroid/widget/ImageView;

.field protected mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

.field private mLive:Z

.field private mMinuteTask:Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

.field private mMinuteTimer:Ljava/util/Timer;

.field private mResId:[I

.field private mSaverMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    .line 51
    iput v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mSaverMode:I

    .line 54
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->deskClock_res()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mResId:[I

    .line 56
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->m24HourMode:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/htc/android/worldclock/DeskDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskDigitalClock$1;-><init>(Lcom/htc/android/worldclock/DeskDigitalClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mHandy:Landroid/os/Handler;

    .line 126
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/DeskDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/DeskDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mHandy:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/DeskDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/worldclock/DeskDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/DeskDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->resetTimer()V

    return-void
.end method

.method private initTimer()V
    .locals 9

    .prologue
    const-wide/32 v7, 0xea60

    .line 172
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 174
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 175
    new-instance v0, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DeskDigitalClock;Lcom/htc/android/worldclock/DeskDigitalClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

    .line 176
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    rem-long/2addr v2, v4

    sub-long v2, v7, v2

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v6

    .line 181
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialiaze timer fail,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 281
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 282
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 285
    iput-object v2, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 287
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 288
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DeskDigitalClock;Lcom/htc/android/worldclock/DeskDigitalClock$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 293
    :cond_1
    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 256
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->m24HourMode:Z

    if-eqz v0, :cond_0

    const-string v0, "k:mm"

    :goto_0
    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mFormat:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAmPm:Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;

    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 258
    return-void

    .line 256
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private unInitTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :goto_0
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :goto_1
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 217
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateTime()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 227
    iget-boolean v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 232
    .local v0, hour:I
    iget-boolean v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->m24HourMode:Z

    if-nez v4, :cond_2

    .line 233
    const/16 v4, 0xc

    if-le v0, v4, :cond_1

    .line 234
    add-int/lit8 v0, v0, -0xc

    .line 236
    :cond_1
    if-nez v0, :cond_2

    .line 237
    const/16 v0, 0xc

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 244
    .local v2, minute:I
    :try_start_0
    div-int/lit8 v1, v0, 0xa

    .line 245
    .local v1, hour10:I
    iget-object v5, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageHour10:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    move v4, v3

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageHour:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mResId:[I

    rem-int/lit8 v6, v0, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageMinute10:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mResId:[I

    div-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageMinute:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mResId:[I

    rem-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1           #hour10:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAmPm:Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v5

    div-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v4, v3}, Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;->setIsMorning(Z)V

    .line 252
    return-void

    .line 245
    .restart local v1       #hour10:I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mResId:[I

    aget v4, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 249
    .end local v1           #hour10:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 146
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 147
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 151
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAttached:Z

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAttached:Z

    .line 156
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    if-nez v1, :cond_2

    .line 159
    new-instance v1, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;-><init>(Lcom/htc/android/worldclock/DeskDigitalClock;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->initTimer()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 188
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 190
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAttached:Z

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAttached:Z

    .line 195
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->unInitTimer()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 132
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 133
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageHour10:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageHour:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageMinute10:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mImageMinute:Landroid/widget/ImageView;

    .line 138
    new-instance v0, Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mAmPm:Lcom/htc/android/worldclock/DeskDigitalClock$AmPm;

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 141
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->setDateFormat()V

    .line 142
    return-void
.end method

.method set24HourMode(Z)V
    .locals 0
    .parameter "is24Hour"

    .prologue
    .line 266
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 267
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->m24HourMode:Z

    .line 268
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->setDateFormat()V

    .line 269
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 261
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 262
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z

    .line 263
    return-void
.end method

.method public setSaverMode(Z)V
    .locals 1
    .parameter "saverMode"

    .prologue
    .line 272
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mSaverMode:I

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mSaverMode:I

    goto :goto_0
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 220
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 221
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 222
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime()V

    .line 223
    return-void
.end method
