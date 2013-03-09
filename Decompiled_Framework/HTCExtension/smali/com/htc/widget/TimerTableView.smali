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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/TimerTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/htc/widget/TimerTableView;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mHtcContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mTableInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mTableInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900b9

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x20201a4

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    const v1, 0x20201a5

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    const v1, 0x20201a6

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    const v1, 0x20201a7

    invoke-virtual {p0, v1}, Lcom/htc/widget/TimerTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/NumberTableView;

    iput-object v1, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TimerTableView"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V

    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterAmPmView()I

    move-result v0

    return v0
.end method

.method public getCurrentDay()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v2}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v1

    iget-boolean v2, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/widget/TimerTableView;->mIs24Hour:Z

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/TimerTableView;->getCurrentAmPm()I

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentMonth()I
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v1}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    return v0
.end method

.method public releaseResource()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TimerTableView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->releaseResource()V

    return-void
.end method

.method public setAmPmRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterAmPmView(I)V

    return-void
.end method

.method public setCurrentDay(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/TimerTableView;->mIs24Hour:Z

    if-nez v1, :cond_0

    if-lt p1, v0, :cond_2

    if-ne p1, v0, :cond_1

    move p1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/TimerTableView;->setCurrentAmPm(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    return-void

    :cond_1
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move p1, v0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/TimerTableView;->setCurrentAmPm(I)V

    goto :goto_1
.end method

.method public setCurrentMinute(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    return-void
.end method

.method public setCurrentMonth(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    return-void
.end method

.method public setCurrentYear(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setCenterView(I)V

    return-void
.end method

.method public setDayRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->setTableEnabled(Z)V

    return-void
.end method

.method public setHourRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/TimerTableView;->mIs24Hour:Z

    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/NumberTableView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAlarm(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/TimerTableView;->mIsAlarm:Z

    iget-object v1, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/NumberTableView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->changeBkg()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsYear(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/TimerTableView;->mIsYear:Z

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/NumberTableView;->setShowNumberDigits(I)V

    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public setMonthRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public setSecondRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public setYearRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mAmPmTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/NumberTableView;->setRange(II)V

    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->slideWithOffset(I)V

    return-void
.end method

.method public slideMinuteWithOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->slideWithOffset(I)V

    return-void
.end method

.method public slideSecondWithOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/NumberTableView;->slideWithOffset(I)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mHourTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getTableView()Lcom/htc/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mMinuteTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getTableView()Lcom/htc/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/htc/widget/TimerTableView;->mSecondTableView:Lcom/htc/widget/NumberTableView;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView;->getTableView()Lcom/htc/widget/MyTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
