.class public Lcom/htc/widget/HtcTimeView;
.super Lcom/htc/widget/TimerTableView;
.source "HtcTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTimeView$1;,
        Lcom/htc/widget/HtcTimeView$TimeType;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcTimeView"


# instance fields
.field private mType:Lcom/htc/widget/HtcTimeView$TimeType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private setAlarm24HMode(Z)V
    .locals 3
    .parameter "is24Mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    const/16 v0, 0x3b

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcTimeView;->setMinuteRange(II)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    const/16 v0, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setHourRange(II)V

    .line 107
    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcTimeView;->setAmPmRange(II)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    .line 113
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIsAlarm(Z)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setEnabled(Z)V

    .line 115
    return-void

    .line 110
    :cond_0
    const/16 v0, 0x17

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcTimeView;->setHourRange(II)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    goto :goto_0
.end method

.method private setDateMode()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setIsAlarm(Z)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIsYear(Z)V

    .line 122
    const/16 v0, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setMonthRange(II)V

    .line 123
    const/16 v0, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setDayRange(II)V

    .line 124
    const/16 v0, 0x7b2

    const/16 v1, 0x7f4

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcTimeView;->setYearRange(II)V

    .line 125
    return-void
.end method

.method private setTimerMode()V
    .locals 3

    .prologue
    const/16 v2, 0x3b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIsAlarm(Z)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setEnabled(Z)V

    .line 131
    const/16 v0, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setHourRange(II)V

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimeView;->setMinuteRange(II)V

    .line 133
    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimeView;->setSecondRange(II)V

    .line 134
    return-void
.end method


# virtual methods
.method public getTimeValue()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 61
    .local v0, value:[I
    aput v2, v0, v2

    .line 62
    return-object v0
.end method

.method public setTimeRange(III)V
    .locals 2
    .parameter "index"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 78
    const-string v0, "HtcTimeView"

    const-string v1, "Error: index < 0 or index > 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    .line 75
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTimeType(Lcom/htc/widget/HtcTimeView$TimeType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/widget/HtcTimeView;->mType:Lcom/htc/widget/HtcTimeView$TimeType;

    .line 43
    sget-object v0, Lcom/htc/widget/HtcTimeView$1;->$SwitchMap$com$htc$widget$HtcTimeView$TimeType:[I

    invoke-virtual {p1}, Lcom/htc/widget/HtcTimeView$TimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcTimeView;->setAlarm24HMode(Z)V

    goto :goto_0

    .line 48
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcTimeView;->setAlarm24HMode(Z)V

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HtcTimeView;->setDateMode()V

    goto :goto_0

    .line 54
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HtcTimeView;->setTimerMode()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTimeValue(II)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 99
    const-string v0, "HtcTimeView"

    const-string v1, "Error: index < 0 or index > 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mType:Lcom/htc/widget/HtcTimeView$TimeType;

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->alarm12H:Lcom/htc/widget/HtcTimeView$TimeType;

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterAmPmView(I)V

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mType:Lcom/htc/widget/HtcTimeView$TimeType;

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->timer:Lcom/htc/widget/HtcTimeView$TimeType;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
