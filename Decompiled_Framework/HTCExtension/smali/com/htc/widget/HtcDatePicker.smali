.class public Lcom/htc/widget/HtcDatePicker;
.super Landroid/widget/RelativeLayout;
.source "HtcDatePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7ee

.field private static final DEFAULT_START_YEAR:I = 0x7c7

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDatePicker"


# instance fields
.field isOnCreate:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field private mDay:I

.field private final mDayCoat:Landroid/view/View;

.field private final mDayPicker:Lcom/htc/widget/HtcNumberPicker;

.field private final mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

.field private final mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

.field private final mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

.field private mEndYear:I

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field private final mLabelDay:Landroid/widget/TextView;

.field private final mLabelMonth:Landroid/widget/TextView;

.field private final mLabelYear:Landroid/widget/TextView;

.field private mLparams:[Landroid/view/ViewGroup$LayoutParams;

.field private mMonth:I

.field private final mMonthCoat:Landroid/view/View;

.field private final mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mOldMax:I

.field private mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

.field private mOrder:Ljava/lang/String;

.field mRangeDayMax:I

.field mRangeDayMin:I

.field mRangeDayReset:Z

.field private mStartYear:I

.field private mYear:I

.field private final mYearCoat:Landroid/view/View;

.field private final mYearPicker:Lcom/htc/widget/HtcNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v10, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    iput-boolean v8, p0, Lcom/htc/widget/HtcDatePicker;->isOnCreate:Z

    iput v7, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMin:I

    iput v7, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMax:I

    iput-boolean v10, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayReset:Z

    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/widget/HtcDatePicker;->mAttrs:Landroid/util/AttributeSet;

    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x20900ba

    invoke-virtual {v2, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v6, 0x20201aa

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    const v6, 0x20201ad

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1e

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    const/16 v6, 0x1e

    iput v6, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    const v6, 0x20201ae

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1f

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    const v6, 0x20201af

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1d

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    const v6, 0x20201b0

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1c

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    const v6, 0x20201b3

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    const v6, 0x20201a8

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    const v6, 0x20201ab

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    const v6, 0x20201b1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    const v6, 0x20201ac

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    const v6, 0x20201a9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    const v6, 0x20201b2

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    const/16 v6, 0xc

    invoke-virtual {p0, v8, v6}, Lcom/htc/widget/HtcDatePicker;->setMonthRange(II)V

    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcNumberPicker;->setShowNumberDigits(I)V

    sget-object v6, Landroid/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v6, 0x7c7

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v6, 0x7ee

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcDatePicker;->reorderPickers([Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcDatePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    return-void
.end method

.method private correctDayPicker()V
    .locals 9

    const/16 v8, 0x1e

    const/16 v7, 0x1d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/Calendar;->set(III)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-le v2, v1, :cond_3

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v8, :cond_5

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v7, :cond_6

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-le v2, v1, :cond_1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    :cond_1
    if-ne v1, v8, :cond_7

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    :cond_2
    :goto_4
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    return-void

    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v6, :cond_0

    iput v6, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0, v2, v8}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0, v2, v7}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_3

    :cond_7
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_8

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4

    :cond_8
    if-ne v1, v7, :cond_9

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4

    :cond_9
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 14

    const/4 v11, 0x0

    aget-object v11, p1, v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    :goto_0
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v7, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    aput-object v13, v11, v12

    :cond_1
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    aput-object v13, v11, v12

    :cond_2
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    aput-object v13, v11, v12

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->removeAllViews()V

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    if-ne v11, v12, :cond_4

    const/4 v6, 0x1

    :cond_4
    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_12

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x27

    if-ne v0, v11, :cond_5

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :cond_5
    :goto_3
    if-nez v8, :cond_6

    const/16 v11, 0x64

    if-ne v0, v11, :cond_d

    if-nez v1, :cond_d

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_c

    const/4 v9, 0x2

    :goto_4
    const/4 v1, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    instance-of v11, v4, Ljava/text/SimpleDateFormat;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "date_format"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    :cond_9
    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_a
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    const/16 v11, 0x4d

    if-eq v0, v11, :cond_e

    const/16 v11, 0x4c

    if-ne v0, v11, :cond_10

    :cond_e
    if-nez v2, :cond_10

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_f

    const/4 v9, 0x2

    :goto_6
    const/4 v2, 0x1

    goto :goto_5

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_10
    const/16 v11, 0x79

    if-ne v0, v11, :cond_6

    if-nez v3, :cond_6

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_11

    const/4 v9, 0x2

    :goto_7
    const/4 v3, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_12
    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    if-nez v1, :cond_13

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method

.method private setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    if-eq p2, v0, :cond_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method private updateTables()V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePicker;->setCurrentYear(I)V

    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePicker;->setCurrentMonth(I)V

    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    :cond_5
    return-void
.end method

.method public getCurrentDay()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentMonth()I
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iput p2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iput p3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    iput-object p4, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->updateTables()V

    return-void
.end method

.method public initPicker(III)V
    .locals 5

    const/16 v2, 0x1e

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iput v2, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1f

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1d

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1c

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    const/16 v1, 0xc

    invoke-virtual {p0, v4, v1}, Lcom/htc/widget/HtcDatePicker;->setMonthRange(II)V

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mAttrs:Landroid/util/AttributeSet;

    sget-object v3, Landroid/R$styleable;->DatePicker:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x7c7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    const/4 v1, 0x2

    const/16 v2, 0x7ee

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->initPicker(III)V

    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;->onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;->onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->initPicker(III)V

    return-void
.end method

.method public releaseResource()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    return-void
.end method

.method public setCurrentDay(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    return-void
.end method

.method public setCurrentMonth(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    return-void
.end method

.method public setCurrentYear(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    return-void
.end method

.method public setDayPickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDayRange(II)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMin:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMax:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    return-void
.end method

.method public setMonthPickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMonthRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    return-void
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    :cond_0
    return-void
.end method

.method public setPickersOrder(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcDatePicker;->reorderPickers([Ljava/lang/String;)V

    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    return-void
.end method

.method public setYearPickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setYearRange(II)V
    .locals 3

    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iput p2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    return-void
.end method
