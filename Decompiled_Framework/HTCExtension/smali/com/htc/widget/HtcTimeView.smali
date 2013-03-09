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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setAlarm24HMode(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3b

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcTimeView;->setMinuteRange(II)V

    if-nez p1, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setHourRange(II)V

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcTimeView;->setAmPmRange(II)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIsAlarm(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setEnabled(Z)V

    return-void

    :cond_0
    const/16 v0, 0x17

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcTimeView;->setHourRange(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    goto :goto_0
.end method

.method private setDateMode()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setIsAlarm(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIsYear(Z)V

    const/16 v0, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setMonthRange(II)V

    const/16 v0, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setDayRange(II)V

    const/16 v0, 0x7b2

    const/16 v1, 0x7f4

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcTimeView;->setYearRange(II)V

    return-void
.end method

.method private setTimerMode()V
    .locals 3

    const/16 v2, 0x3b

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setIs24Hour(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimeView;->setIsAlarm(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimeView;->setEnabled(Z)V

    const/16 v0, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcTimeView;->setHourRange(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimeView;->setMinuteRange(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimeView;->setSecondRange(II)V

    return-void
.end method


# virtual methods
.method public getTimeValue()[I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [I

    aput v2, v0, v2

    return-object v0
.end method

.method public setTimeRange(III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, "HtcTimeView"

    const-string v1, "Error: index < 0 or index > 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTimeType(Lcom/htc/widget/HtcTimeView$TimeType;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/HtcTimeView;->mType:Lcom/htc/widget/HtcTimeView$TimeType;

    sget-object v0, Lcom/htc/widget/HtcTimeView$1;->$SwitchMap$com$htc$widget$HtcTimeView$TimeType:[I

    invoke-virtual {p1}, Lcom/htc/widget/HtcTimeView$TimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcTimeView;->setAlarm24HMode(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcTimeView;->setAlarm24HMode(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HtcTimeView;->setDateMode()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HtcTimeView;->setTimerMode()V

    goto :goto_0

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

    packed-switch p1, :pswitch_data_0

    const-string v0, "HtcTimeView"

    const-string v1, "Error: index < 0 or index > 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mType:Lcom/htc/widget/HtcTimeView$TimeType;

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->alarm12H:Lcom/htc/widget/HtcTimeView$TimeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterAmPmView(I)V

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimeView;->mType:Lcom/htc/widget/HtcTimeView$TimeType;

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->timer:Lcom/htc/widget/HtcTimeView$TimeType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
