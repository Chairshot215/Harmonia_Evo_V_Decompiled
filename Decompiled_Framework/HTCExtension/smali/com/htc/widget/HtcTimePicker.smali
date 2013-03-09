.class public Lcom/htc/widget/HtcTimePicker;
.super Landroid/widget/RelativeLayout;
.source "HtcTimePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcTimePicker"


# instance fields
.field private final mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mContext:Landroid/content/Context;

.field private mCurrentAMPM:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSecond:I

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndSecond:I

.field private final mHourCoat:Landroid/view/View;

.field private final mHourPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field private mIsFirstCreate:Z

.field private mIsHourInit:Z

.field private mIsMinuteInit:Z

.field private mIsMultiStop:Z

.field private mIsSecondInit:Z

.field private final mLabelHour:Landroid/widget/TextView;

.field private final mLabelMinute:Landroid/widget/TextView;

.field private final mLabelSecond:Landroid/widget/TextView;

.field private mLparams:[Landroid/view/ViewGroup$LayoutParams;

.field private final mMinuteCoat:Landroid/view/View;

.field private final mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

.field private mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

.field private mOrder:Ljava/lang/String;

.field private final mSecondCoat:Landroid/view/View;

.field private final mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartSecond:I

.field private mTableInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/16 v8, 0x3b

    const/16 v4, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    iput-boolean v5, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsFirstCreate:Z

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x20900bb

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x20201a4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    const v3, 0x20201a5

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const v3, 0x20201a6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    const v3, 0x20201a7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    const v3, 0x20201b4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mHourCoat:Landroid/view/View;

    const v3, 0x20201b6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mMinuteCoat:Landroid/view/View;

    const v3, 0x20201b8

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    const v3, 0x20201b5

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    const v3, 0x20201b7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    const v3, 0x20201b9

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5, v8}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    invoke-virtual {p0, v5, v8}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xc

    invoke-virtual {p0, v6, v3}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0175

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0176

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_0

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_1

    :cond_0
    const-string v3, "AM"

    aput-object v3, v0, v5

    const-string v3, "PM"

    aput-object v3, v0, v6

    :cond_1
    invoke-virtual {p0, v5, v6, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsFirstCreate:Z

    return-void

    :cond_2
    const/16 v3, 0x17

    invoke-virtual {p0, v5, v3}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTables()V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentAmPm()I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0xc

    :cond_1
    return v1
.end method

.method public getCurrentMinute()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public init(IIILcom/htc/widget/HtcTimePicker$OnTimeSetListener;)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    iput-object p4, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    return-void
.end method

.method public initPicker(III)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    :cond_0
    const-string v1, "AM"

    aput-object v1, v0, v3

    const-string v1, "PM"

    aput-object v1, v0, v4

    :cond_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iget-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(IIZ)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPicker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p3, 0x0

    :cond_3
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->requestFocus()Z

    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    return-void

    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSecondPickerEndabled()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->initPicker(III)V

    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    return-void
.end method

.method public setAmPmRange(II[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setRange(II[Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lt p1, v1, :cond_3

    if-ne p1, v1, :cond_2

    move p1, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0xc

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    move p1, v1

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    goto :goto_2
.end method

.method public setCurrentMinute(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setCurrentSecond(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHourRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    return-void
.end method

.method public setMinuteRange(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iput-boolean p3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    goto :goto_0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    return-void
.end method

.method public setSecondPickerEnable(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondPickerEnable(ZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTimePicker;->setSecondPickerEnable(Z)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->changeBkg()V

    :cond_0
    return-void
.end method

.method public setSecondPickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    goto :goto_0
.end method

.method public slideMinuteWithOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    goto :goto_0
.end method

.method public slideSecondWithOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
