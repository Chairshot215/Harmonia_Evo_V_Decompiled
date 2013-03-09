.class public Lcom/htc/android/worldclock/widget/TimerTableView;
.super Landroid/widget/RelativeLayout;
.source "TimerTableView.java"


# instance fields
.field private mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

.field private mContext:Landroid/content/Context;

.field private mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

.field private mIs24Hour:Z

.field private mIsAlarm:Z

.field private mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

.field private mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

.field private mTableInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 37
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mTableInflater:Landroid/view/LayoutInflater;

    .line 39
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mTableInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/widget/NumberTableView;

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    .line 42
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/widget/NumberTableView;

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    .line 43
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/widget/NumberTableView;

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    .line 44
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/widget/NumberTableView;

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    .line 45
    return-void
.end method


# virtual methods
.method public getCurrentAmPm()I
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 125
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getCenterAmPmView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 96
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/widget/NumberTableView;->getCenterView()I

    move-result v1

    .line 97
    .local v1, hour:I
    iget-boolean v2, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIs24Hour:Z

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    .line 108
    :goto_0
    return v2

    .line 100
    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 101
    const/4 v1, 0x0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TimerTableView;->getCurrentAmPm()I

    move-result v0

    .line 105
    .local v0, ampm:I
    if-nez v0, :cond_3

    move v2, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_3
    add-int/lit8 v2, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 115
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 120
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mContext:Landroid/content/Context;

    .line 183
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->releaseResource()V

    .line 184
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->releaseResource()V

    .line 185
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->releaseResource()V

    .line 186
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->releaseResource()V

    .line 187
    return-void
.end method

.method public setAmPmRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 144
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 145
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/worldclock/widget/NumberTableView;->setRange(II)V

    .line 146
    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1
    .parameter "ampm"

    .prologue
    .line 90
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 91
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setCenterAmPmView(I)V

    .line 92
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 3
    .parameter "hour"

    .prologue
    const/16 v0, 0xc

    .line 64
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hour = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 66
    iget-boolean v1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIs24Hour:Z

    if-nez v1, :cond_0

    .line 67
    if-lt p1, v0, :cond_2

    .line 68
    if-ne p1, v0, :cond_1

    move p1, v0

    .line 69
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;->setCurrentAmPm(I)V

    .line 75
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set hour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setCenterView(I)V

    .line 77
    return-void

    .line 68
    :cond_1
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 71
    :cond_2
    if-nez p1, :cond_3

    move p1, v0

    .line 72
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TimerTableView;->setCurrentAmPm(I)V

    goto :goto_1
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .parameter "minute"

    .prologue
    .line 80
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 81
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setCenterView(I)V

    .line 82
    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 1
    .parameter "second"

    .prologue
    .line 85
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 86
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setCenterView(I)V

    .line 87
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 150
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 151
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setTableEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setTableEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setTableEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setTableEnabled(Z)V

    .line 155
    return-void
.end method

.method public setHourRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 129
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 130
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/worldclock/widget/NumberTableView;->setRange(II)V

    .line 131
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 59
    iput-boolean p1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIs24Hour:Z

    .line 60
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mAmPmTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->setVisibility(I)V

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAlarm(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 49
    iput-boolean p1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mIsAlarm:Z

    .line 50
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->setVisibility(I)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->changeBkg()V

    .line 55
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinuteRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 134
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 135
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/worldclock/widget/NumberTableView;->setRange(II)V

    .line 136
    return-void
.end method

.method public setSecondRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 139
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 140
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/worldclock/widget/NumberTableView;->setRange(II)V

    .line 141
    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 176
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 177
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->slideWithOffset(I)V

    .line 178
    return-void
.end method

.method public slideMinuteWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 171
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 172
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->slideWithOffset(I)V

    .line 173
    return-void
.end method

.method public slideSecondWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 166
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 167
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->slideWithOffset(I)V

    .line 168
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "an"

    .prologue
    .line 159
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 160
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mHourTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getTableView()Lcom/htc/android/worldclock/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mMinuteTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getTableView()Lcom/htc/android/worldclock/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TimerTableView;->mSecondTableView:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getTableView()Lcom/htc/android/worldclock/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    return-void
.end method
