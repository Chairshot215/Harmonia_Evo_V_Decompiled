.class public Lcom/htc/widget/TimerTableView;
.super Landroid/widget/RelativeLayout;
.source "TimerTableView.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "TimerTableView"


# instance fields
.field protected mAmPmTableView:Lcom/htc/widget/NumberTableView;

.field private mContext:Landroid/content/Context;

.field protected mHourTableView:Lcom/htc/widget/NumberTableView;

.field private mHtcContext:Landroid/content/Context;

.field private mIs24Hour:Z

.field private mIsAlarm:Z

.field private mIsYear:Z

.field protected mMinuteTableView:Lcom/htc/widget/NumberTableView;

.field protected mSecondTableView:Lcom/htc/widget/NumberTableView;

.field private mTableInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p1, p0, Lcom/htc/widget/TimerTableView;->mContext:Landroid/content/Context;

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mHtcContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mTableInflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mTableInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900b9

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const v1, 0x20201a4

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    .line 60
    const v1, 0x20201a5

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    .line 61
    const v1, 0x20201a6

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    .line 62
    const v1, 0x20201a7

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    .line 63
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "TimerTableView"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 66
    if-eqz p1, :cond_3

    .line 67
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    .line 72
    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterAmPmView()I

    move-result v0

    return v0
.end method

.method public getCurrentDay()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v2}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v1

    .line 144
    .local v1, hour:I
    iget-boolean v2, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/widget/TimerTableView;->mIs24Hour:Z

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    .line 154
    :goto_0
    return v2

    .line 147
    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 148
    const/4 v1, 0x0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/TimerTableView;->getCurrentAmPm()I

    move-result v0

    .line 151
    .local v0, ampm:I
    if-nez v0, :cond_3

    move v2, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    add-int/lit8 v2, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentMonth()I
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v1}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    .line 162
    .local v0, month:I
    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TimerTableView;->mContext:Landroid/content/Context;

    .line 255
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    .line 256
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    .line 257
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    .line 258
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    .line 259
    return-void
.end method

.method public setAmPmRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 221
    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1
    .parameter "ampm"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterAmPmView(I)V

    .line 134
    return-void
.end method

.method public setCurrentDay(I)V
    .locals 1
    .parameter "day"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    .line 124
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2
    .parameter "hour"

    .prologue
    const/16 v0, 0xc

    .line 97
    iget-boolean v1, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/TimerTableView;->mIs24Hour:Z

    if-nez v1, :cond_0

    .line 98
    if-lt p1, v0, :cond_2

    .line 99
    if-ne p1, v0, :cond_1

    move p1, v0

    .line 100
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/TimerTableView;->setCurrentAmPm(I)V

    .line 107
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    .line 108
    return-void

    .line 99
    :cond_1
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 102
    :cond_2
    if-nez p1, :cond_3

    move p1, v0

    .line 103
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/TimerTableView;->setCurrentAmPm(I)V

    goto :goto_1
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .parameter "minute"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    .line 120
    return-void
.end method

.method public setCurrentMonth(I)V
    .locals 1
    .parameter "month"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    .line 115
    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 1
    .parameter "second"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    .line 129
    return-void
.end method

.method public setCurrentYear(I)V
    .locals 1
    .parameter "year"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    .line 139
    return-void
.end method

.method public setDayRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 211
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    .line 233
    return-void
.end method

.method public setHourRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 196
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/htc/widget/TimerTableView;->mIs24Hour:Z

    .line 85
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/NumberTableView;->setVisibility(I)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAlarm(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    .line 76
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/NumberTableView;->setVisibility(I)V

    .line 78
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->changeBkg()V

    .line 81
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsYear(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/widget/TimerTableView;->mIsYear:Z

    .line 90
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/NumberTableView;->setShowNumberDigits(I)V

    .line 91
    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 206
    return-void
.end method

.method public setMonthRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 201
    return-void
.end method

.method public setSecondRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 216
    return-void
.end method

.method public setYearRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 226
    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->slideWithOffset(I)V

    .line 251
    return-void
.end method

.method public slideMinuteWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->slideWithOffset(I)V

    .line 247
    return-void
.end method

.method public slideSecondWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->slideWithOffset(I)V

    .line 243
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "an"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getTableView()Lcom/htc/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getTableView()Lcom/htc/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getTableView()Lcom/htc/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    return-void
.end method
