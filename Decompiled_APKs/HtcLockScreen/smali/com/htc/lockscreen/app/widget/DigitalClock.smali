.class public Lcom/htc/lockscreen/app/widget/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;,
        Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "DigitalClock"


# instance fields
.field private mAmPm:Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field mError:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lockscreen/app/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/htc/lockscreen/app/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/DigitalClock$1;-><init>(Lcom/htc/lockscreen/app/widget/DigitalClock;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mError:Z

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/widget/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/lockscreen/app/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAmPm:Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 215
    return-void

    .line 212
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 202
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 207
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAmPm:Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 209
    return-void

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 150
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 152
    iget-boolean v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAttached:Z

    if-eqz v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-boolean v5, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAttached:Z

    .line 154
    iget-boolean v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mError:Z

    if-eqz v2, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "attached but nounregister"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "OOM"

    const-string v3, "onAttachedToWindow problem"

    invoke-static {v2, v3, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_1
    iget-boolean v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z

    if-eqz v2, :cond_2

    .line 160
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v2, Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;-><init>(Lcom/htc/lockscreen/app/widget/DigitalClock;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 169
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 179
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "detach before attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "OOM"

    const-string v2, "onDetachedFromWindow problem"

    invoke-static {v1, v2, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mError:Z

    .line 193
    .end local v0           #ex:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAttached:Z

    .line 187
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, Time_fontFace:Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .line 125
    .local v0, AmPm_fontFace:Landroid/graphics/Typeface;
    const v3, 0x7f0a002c

    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/app/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 126
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v3, :cond_0

    .line 128
    :try_start_0
    const-string v3, "/system/fonts/HelveticaNeueLTPro35Th.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 129
    const-string v3, "/system/fonts/HelveticaNeueLTPro35Th.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    new-instance v3, Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;

    invoke-direct {v3, p0, v0}, Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v3, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mAmPm:Lcom/htc/lockscreen/app/widget/DigitalClock$AmPm;

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 145
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->setDateFormat()V

    .line 146
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DigitalClock"

    const-string v4, "fail to set font"

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "/system/fonts/Clockopia.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 134
    const-string v3, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 138
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "/system/fonts/Clockopia.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 139
    const-string v3, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z

    .line 219
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 198
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->updateTime()V

    .line 199
    return-void
.end method
