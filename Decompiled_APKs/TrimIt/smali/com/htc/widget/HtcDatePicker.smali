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
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v10, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 56
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 64
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    .line 176
    iput-boolean v8, p0, Lcom/htc/widget/HtcDatePicker;->isOnCreate:Z

    .line 467
    iput v7, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMin:I

    .line 468
    iput v7, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMax:I

    .line 469
    iput-boolean v10, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayReset:Z

    .line 91
    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/htc/widget/HtcDatePicker;->mAttrs:Landroid/util/AttributeSet;

    .line 93
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x20900ba

    invoke-virtual {v2, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    const v6, 0x20201aa

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 97
    const v6, 0x20201ad

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 98
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1e

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 99
    const/16 v6, 0x1e

    iput v6, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 100
    const v6, 0x20201ae

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    .line 101
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1f

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 102
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 103
    const v6, 0x20201af

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    .line 104
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1d

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 105
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 106
    const v6, 0x20201b0

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    .line 107
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1c

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 108
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 109
    const v6, 0x20201b3

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 110
    const v6, 0x20201a8

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    .line 111
    const v6, 0x20201ab

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    .line 112
    const v6, 0x20201b1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    .line 113
    const v6, 0x20201ac

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    .line 114
    const v6, 0x20201a9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    .line 115
    const v6, 0x20201b2

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    .line 116
    const/16 v6, 0xc

    invoke-virtual {p0, v8, v6}, Lcom/htc/widget/HtcDatePicker;->setMonthRange(II)V

    .line 117
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcNumberPicker;->setShowNumberDigits(I)V

    .line 119
    sget-object v6, Landroid/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v6, 0x7c7

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 122
    .local v4, mStartYear:I
    const/16 v6, 0x7ee

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 123
    .local v3, mEndYear:I
    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 131
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, months:[Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcDatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcDatePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 136
    return-void
.end method

.method private correctDayPicker()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x1d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 307
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/Calendar;->set(III)V

    .line 308
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 315
    .local v1, max:I
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-le v2, v1, :cond_3

    .line 316
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 321
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 323
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_4

    .line 325
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 330
    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v8, :cond_5

    .line 332
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 337
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v7, :cond_6

    .line 339
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 344
    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-le v2, v1, :cond_1

    .line 345
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 347
    :cond_1
    if-ne v1, v8, :cond_7

    .line 348
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 368
    :cond_2
    :goto_4
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 369
    return-void

    .line 317
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v6, :cond_0

    .line 318
    iput v6, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    goto :goto_0

    .line 328
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0, v2, v8}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_1

    .line 335
    :cond_5
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0, v2, v7}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_2

    .line 342
    :cond_6
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_3

    .line 352
    :cond_7
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_8

    .line 353
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4

    .line 357
    :cond_8
    if-ne v1, v7, :cond_9

    .line 358
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4

    .line 362
    :cond_9
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 14
    .parameter "months"

    .prologue
    .line 205
    const/4 v11, 0x0

    aget-object v11, p1, v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 211
    .local v4, format:Ljava/text/DateFormat;
    :goto_0
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 212
    iget-object v7, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    .line 235
    .end local v4           #format:Ljava/text/DateFormat;
    .local v7, order:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-nez v11, :cond_1

    .line 236
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    aput-object v13, v11, v12

    .line 238
    :cond_1
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    if-nez v11, :cond_2

    .line 239
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    aput-object v13, v11, v12

    .line 241
    :cond_2
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    if-nez v11, :cond_3

    .line 242
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    aput-object v13, v11, v12

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->removeAllViews()V

    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 248
    .local v3, didYear:Z
    const/4 v6, 0x0

    .line 249
    .local v6, isTwoPicker:Z
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

    .line 250
    const/4 v6, 0x1

    .line 251
    :cond_4
    const/4 v9, 0x0

    .line 252
    .local v9, tmpi:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_12

    .line 253
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 255
    .local v0, c:C
    const/16 v11, 0x27

    if-ne v0, v11, :cond_5

    .line 256
    if-nez v8, :cond_b

    const/4 v8, 0x1

    .line 259
    :cond_5
    :goto_3
    if-nez v8, :cond_6

    .line 260
    const/16 v11, 0x64

    if-ne v0, v11, :cond_d

    if-nez v1, :cond_d

    .line 262
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    if-eqz v6, :cond_c

    .line 265
    const/4 v9, 0x2

    .line 268
    :goto_4
    const/4 v1, 0x1

    .line 252
    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 208
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #isTwoPicker:Z
    .end local v7           #order:Ljava/lang/String;
    .end local v8           #quoted:Z
    .end local v9           #tmpi:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4       #format:Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 213
    :cond_8
    instance-of v11, v4, Ljava/text/SimpleDateFormat;

    if-eqz v11, :cond_a

    .line 214
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "date_format"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7       #order:Ljava/lang/String;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 216
    :cond_9
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 219
    .end local v7           #order:Ljava/lang/String;
    .restart local v4       #format:Ljava/text/DateFormat;
    :cond_a
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([C)V

    .restart local v7       #order:Ljava/lang/String;
    goto/16 :goto_1

    .line 256
    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v6       #isTwoPicker:Z
    .restart local v8       #quoted:Z
    .restart local v9       #tmpi:I
    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    .line 267
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 269
    :cond_d
    const/16 v11, 0x4d

    if-eq v0, v11, :cond_e

    const/16 v11, 0x4c

    if-ne v0, v11, :cond_10

    :cond_e
    if-nez v2, :cond_10

    .line 271
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    if-eqz v6, :cond_f

    .line 274
    const/4 v9, 0x2

    .line 277
    :goto_6
    const/4 v2, 0x1

    goto :goto_5

    .line 276
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 278
    :cond_10
    const/16 v11, 0x79

    if-ne v0, v11, :cond_6

    if-nez v3, :cond_6

    .line 280
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    if-eqz v6, :cond_11

    .line 283
    const/4 v9, 0x2

    .line 286
    :goto_7
    const/4 v3, 0x1

    goto :goto_5

    .line 285
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 290
    .end local v0           #c:C
    :cond_12
    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    if-nez v1, :cond_13

    .line 291
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

    .line 292
    .local v10, yearLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .end local v10           #yearLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    return-void
.end method

.method private setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 1
    .parameter "picker"
    .parameter "target"

    .prologue
    .line 372
    if-nez p1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-boolean v0, p1, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 376
    :cond_2
    invoke-virtual {p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method private updateTables()V
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePicker;->setCurrentYear(I)V

    .line 299
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePicker;->setCurrentMonth(I)V

    .line 300
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    .line 303
    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 542
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    .local v0, tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 547
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 549
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 550
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 551
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 552
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 553
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 554
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 555
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 556
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 557
    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 407
    if-eqz p1, :cond_5

    .line 408
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 415
    :cond_5
    return-void
.end method

.method public getCurrentDay()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 454
    :goto_0
    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentMonth()I
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 441
    .local v0, month:I
    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 147
    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    .line 148
    iput p2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    .line 149
    iput p3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 150
    iput-object p4, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    .line 151
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->updateTables()V

    .line 152
    return-void
.end method

.method public initPicker(III)V
    .locals 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v2, 0x1e

    const/4 v4, 0x1

    .line 156
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 157
    iput v2, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 158
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1f

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 159
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1d

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 160
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1c

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 163
    const/16 v1, 0xc

    invoke-virtual {p0, v4, v1}, Lcom/htc/widget/HtcDatePicker;->setMonthRange(II)V

    .line 164
    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    if-nez v1, :cond_1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mAttrs:Landroid/util/AttributeSet;

    sget-object v3, Landroid/R$styleable;->DatePicker:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x7c7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    .line 167
    const/4 v1, 0x2

    const/16 v2, 0x7ee

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    .line 174
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->initPicker(III)V

    .line 184
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4
    .parameter "target"
    .parameter "data"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    .line 516
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    .line 518
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;->onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V

    .line 525
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 523
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
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->initPicker(III)V

    .line 192
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    .line 504
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 505
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 506
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 507
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 508
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 509
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 510
    return-void
.end method

.method public setCurrentDay(I)V
    .locals 1
    .parameter "day"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 428
    return-void
.end method

.method public setCurrentMonth(I)V
    .locals 1
    .parameter "month"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 420
    return-void
.end method

.method public setCurrentYear(I)V
    .locals 1
    .parameter "year"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 437
    return-void
.end method

.method public setDayPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method public setDayRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMin:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMax:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 485
    return-void
.end method

.method public setMonthPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method

.method public setMonthRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 465
    return-void
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 404
    :cond_0
    return-void
.end method

.method public setPickersOrder(Ljava/lang/String;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 198
    .local v0, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, months:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcDatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 561
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 563
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 564
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 565
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 566
    return-void
.end method

.method public setYearPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    return-void
.end method

.method public setYearRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 490
    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    .line 491
    iput p2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    .line 492
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 493
    return-void
.end method
