.class public Lcom/htc/android/worldclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/DigitalClock$AmPm;,
        Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;,
        Lcom/htc/android/worldclock/DigitalClock$MinuteTask;,
        Lcom/htc/android/worldclock/DigitalClock$UIHandler;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field m24HourMode:Z

.field private mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mColorChanging:Z

.field private mDayDisplay:Landroid/widget/TextView;

.field private mDaysOfWeek:[Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field protected mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

.field private mIsAlarmAlert:Z

.field private mLive:Z

.field private mMinuteTimer:Ljava/util/Timer;

.field private mSingleView:Z

.field private mTimeDisplay:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mColorChanging:Z

    .line 58
    iput-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mIsAlarmAlert:Z

    .line 59
    iput-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mSingleView:Z

    .line 60
    iput-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->m24HourMode:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/htc/android/worldclock/DigitalClock$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/worldclock/DigitalClock$UIHandler;-><init>(Lcom/htc/android/worldclock/DigitalClock;Lcom/htc/android/worldclock/DigitalClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mUIHandler:Landroid/os/Handler;

    .line 66
    iput-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    .line 148
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mDaysOfWeek:[Ljava/lang/CharSequence;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/worldclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->resetTimer()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/android/worldclock/DigitalClock;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/DigitalClock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetTimer()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 309
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 310
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 313
    iput-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 315
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 316
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DigitalClock;Lcom/htc/android/worldclock/DigitalClock$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 321
    :cond_1
    return-void
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 273
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mSingleView:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    invoke-virtual {v0, v2}, Lcom/htc/android/worldclock/DigitalClock$AmPm;->setShowAmPmForAlert(Z)V

    .line 284
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->m24HourMode:Z

    if-eqz v0, :cond_1

    const-string v0, "kk:mm"

    :goto_1
    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mFormat:Ljava/lang/String;

    .line 279
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mIsAlarmAlert:Z

    if-eqz v0, :cond_3

    .line 280
    iget-object v3, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->m24HourMode:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/htc/android/worldclock/DigitalClock$AmPm;->setShowAmPmForAlert(Z)V

    goto :goto_0

    .line 278
    :cond_1
    const-string v0, "hh:mm"

    goto :goto_1

    :cond_2
    move v0, v2

    .line 280
    goto :goto_2

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget-boolean v3, p0, Lcom/htc/android/worldclock/DigitalClock;->m24HourMode:Z

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DigitalClock$AmPm;->setShowAmPm(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 240
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 241
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 245
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mSingleView:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeFormat:Ljava/text/DateFormat;

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v5, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mDayDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/worldclock/DigitalClock;->mDaysOfWeek:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v4, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/android/worldclock/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 255
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mColorChanging:Z

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_1

    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0x12

    if-lt v1, v4, :cond_5

    .line 258
    :cond_1
    const v1, 0x7f020030

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DigitalClock;->setBackgroundResource(I)V

    .line 259
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget v3, v3, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorWhite:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mDayDisplay:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget v3, v3, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorWhite:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/DigitalClock$AmPm;->setIsNight(Z)V

    .line 269
    :cond_2
    :goto_2
    return-void

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 249
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #newTime:Ljava/lang/CharSequence;
    :cond_4
    move v1, v3

    .line 253
    goto :goto_1

    .line 263
    :cond_5
    const v1, 0x7f02002f

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DigitalClock;->setBackgroundResource(I)V

    .line 264
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget v2, v2, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorDark:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mDayDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    iget v2, v2, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorGrey:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    invoke-virtual {v1, v3}, Lcom/htc/android/worldclock/DigitalClock$AmPm;->setIsNight(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-wide/32 v4, 0xea60

    .line 166
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAttached:Z

    .line 176
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;-><init>(Lcom/htc/android/worldclock/DigitalClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    .line 180
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    iget-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    .end local v6           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    .line 186
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;

    invoke-direct {v1, p0, v3}, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DigitalClock;Lcom/htc/android/worldclock/DigitalClock$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 192
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mSingleView:Z

    if-eqz v0, :cond_3

    .line 193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/DigitalClock$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/DigitalClock$1;-><init>(Lcom/htc/android/worldclock/DigitalClock;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 210
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAttached:Z

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAttached:Z

    .line 215
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    iput-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mIntentReceiver:Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    iput-object v2, p0, Lcom/htc/android/worldclock/DigitalClock;->mMinuteTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 157
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mDayDisplay:Landroid/widget/TextView;

    .line 159
    new-instance v0, Lcom/htc/android/worldclock/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mAmPm:Lcom/htc/android/worldclock/DigitalClock$AmPm;

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 161
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->setDateFormat()V

    .line 162
    return-void
.end method

.method set24HourMode(Z)V
    .locals 0
    .parameter "is24Hour"

    .prologue
    .line 292
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 293
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DigitalClock;->m24HourMode:Z

    .line 294
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->setDateFormat()V

    .line 295
    return-void
.end method

.method setColorChanging(Z)V
    .locals 0
    .parameter "change"

    .prologue
    .line 298
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 299
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mColorChanging:Z

    .line 300
    return-void
.end method

.method setIsAlarmAlert(Z)V
    .locals 0
    .parameter "alert"

    .prologue
    .line 303
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 304
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mIsAlarmAlert:Z

    .line 305
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->setDateFormat()V

    .line 306
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 287
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 288
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mLive:Z

    .line 289
    return-void
.end method

.method public setSingleViewEnabled(Z)V
    .locals 0
    .parameter "bSingleView"

    .prologue
    .line 228
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 229
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mSingleView:Z

    .line 230
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->setDateFormat()V

    .line 231
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 235
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 236
    invoke-direct {p0}, Lcom/htc/android/worldclock/DigitalClock;->updateTime()V

    .line 237
    return-void
.end method
