.class public Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
.super Ljava/lang/Object;
.source "AnalogClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;
    }
.end annotation


# instance fields
.field protected final ANIMATION_HOUR_COUNT:I

.field protected final ANIMATION_MINUTE_COUNT:I

.field protected isAnimation:Z

.field private m24HourFormat:Z

.field public mAMPM:I

.field private mAmPmInit:Z

.field private mAmPmType:I

.field protected mAm_Pm:[Ljava/lang/CharSequence;

.field protected mAnimStart:J

.field protected mCalendar:Ljava/util/Calendar;

.field public mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClockClickLand:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

.field private mClockClickPort:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

.field protected mClockStyle:I

.field protected mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/lang/String;

.field protected mDay:Ljava/lang/String;

.field private mDayPanel:Z

.field private mDayPanelInit:Z

.field protected mDaysOfWeek:[Ljava/lang/CharSequence;

.field protected mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

.field protected mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

.field protected mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFlipAnimePrepared:Z

.field protected mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field protected mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field protected mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field protected mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field protected mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field protected mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimeLineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mHour:I

.field protected mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mMarkerHour:Lcom/htc/fusion/fx/Marker;

.field protected mMarkerMin:Lcom/htc/fusion/fx/Marker;

.field protected mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mMinuteFlipCount:I

.field public mMinutes:I

.field protected mMonth:[Ljava/lang/CharSequence;

.field protected mOldHour:I

.field protected mOldMinutes:I

.field private mPaused:Z

.field protected mRadius:I

.field protected mResContext:Landroid/content/Context;

.field public mSeconds:I

.field protected mTextHeight:I

.field protected mTextWidth:I

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field protected mTileMark:Lcom/htc/fusion/fx/Marker;

.field protected mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTimePBInit:Z

.field private mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mUnitHourValue:F

.field private mUnitMinValue:F

.field private mUpdateIntervals:I

.field public mUseAnimation:Z

.field protected mWeek:Ljava/lang/String;

.field private mhUiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 6
    .parameter "resContext"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitMinValue:F

    .line 90
    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitHourValue:F

    .line 92
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanel:Z

    .line 93
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanelInit:Z

    .line 97
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDay:Ljava/lang/String;

    .line 98
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mWeek:Ljava/lang/String;

    .line 107
    iput v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockStyle:I

    .line 115
    iput v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 116
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 117
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    .line 122
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    .line 123
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z

    .line 125
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAnimStart:J

    .line 130
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockClickPort:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    .line 131
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockClickLand:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    .line 133
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    .line 135
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    .line 136
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isFlipEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    .line 137
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFlipAnimePrepared:Z

    .line 139
    iput v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    .line 140
    iput v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldMinutes:I

    .line 141
    iput v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->ANIMATION_HOUR_COUNT:I

    .line 142
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->ANIMATION_MINUTE_COUNT:I

    .line 759
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;

    invoke-direct {v1, p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    .line 148
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mResContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mContext:Landroid/content/Context;

    .line 150
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, r:Landroid/content/res/Resources;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDaysOfWeek:[Ljava/lang/CharSequence;

    .line 152
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMonth:[Ljava/lang/CharSequence;

    .line 153
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAm_Pm:[Ljava/lang/CharSequence;

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applyRotation()V
    .locals 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(I)V

    .line 912
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(II)V

    .line 914
    :cond_0
    return-void
.end method

.method private calcHourPBValue(FIII)F
    .locals 4
    .parameter "max"
    .parameter "nHour"
    .parameter "nMin"
    .parameter "nSec"

    .prologue
    .line 262
    const/high16 v2, 0x3f80

    add-float v0, p1, v2

    .line 263
    .local v0, nPBMax:F
    mul-int/lit16 v2, p2, 0xe10

    mul-int/lit8 v3, p3, 0x3c

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    int-to-float v1, v2

    .line 265
    .local v1, nSeconds:F
    mul-float v2, v1, v0

    const v3, 0x4728c000

    div-float/2addr v2, v3

    return v2
.end method

.method private calcMinPBValue(FII)F
    .locals 4
    .parameter "max"
    .parameter "nMin"
    .parameter "nSec"

    .prologue
    .line 269
    const/high16 v2, 0x3f80

    add-float v0, p1, v2

    .line 270
    .local v0, nPBMax:F
    mul-int/lit8 v2, p2, 0x3c

    add-int/2addr v2, p3

    int-to-float v1, v2

    .line 272
    .local v1, nSeconds:F
    mul-float v2, v1, v0

    const/high16 v3, 0x4561

    div-float/2addr v2, v3

    return v2
.end method

.method private calcSecPBValue(FI)F
    .locals 3
    .parameter "max"
    .parameter "nSec"

    .prologue
    .line 276
    const/high16 v1, 0x3f80

    add-float v0, p1, v1

    .line 277
    .local v0, nPBMax:F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    return v1
.end method

.method private setData()V
    .locals 4

    .prologue
    .line 918
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 919
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 920
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    .line 921
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mSeconds:I

    .line 922
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    .line 924
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    .line 925
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldMinutes:I

    .line 926
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 927
    .local v0, dayOfWeek:I
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDaysOfWeek:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mWeek:Ljava/lang/String;

    .line 928
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMonth:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/htc/clock/util/MyTimeUtil;->getDateString([Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDay:Ljava/lang/String;

    .line 929
    return-void
.end method

.method private setHourMinute(II)V
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v1, 0x1

    .line 598
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 599
    div-int/lit8 v0, p1, 0xa

    if-ge v0, v1, :cond_4

    .line 600
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 607
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    rem-int/lit8 v1, p1, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    rem-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 618
    :cond_3
    return-void

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 603
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    div-int/lit8 v1, p1, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method private showAMInfo()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 461
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAm_Pm:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAm_Pm:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 470
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_3

    .line 471
    :cond_2
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 472
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-eqz v0, :cond_a

    .line 473
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v5, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 481
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_6

    .line 484
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_5

    .line 485
    :cond_4
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 486
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 491
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    .line 492
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_8

    .line 493
    :cond_7
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 494
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 496
    :cond_8
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 526
    :cond_9
    :goto_1
    return-void

    .line 475
    :cond_a
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 476
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    goto :goto_0

    .line 500
    :cond_b
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_e

    .line 501
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_d

    .line 502
    :cond_c
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 503
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-eqz v0, :cond_11

    .line 504
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 510
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 513
    :cond_e
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    .line 514
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_10

    .line 515
    :cond_f
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 516
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-eqz v0, :cond_12

    .line 517
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 523
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_1

    .line 506
    :cond_11
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 507
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    goto :goto_2

    .line 519
    :cond_12
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 520
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_3
.end method

.method private showDateWeekText()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDateFormat:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 386
    .end local v0           #text:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mWeek:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 390
    :cond_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_4

    .line 391
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mWeek:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 393
    :cond_4
    return-void
.end method

.method private showHourMinuteInfo(Z)V
    .locals 4
    .parameter "useAnimation"

    .prologue
    const/16 v3, 0x9

    .line 339
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 340
    .local v0, hour:I
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 342
    add-int/lit8 v0, v0, 0xc

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 355
    :cond_1
    :goto_0
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    invoke-direct {p0, v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setHourMinute(II)V

    .line 356
    if-eqz p1, :cond_5

    .line 357
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v1, v0}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(I)V

    .line 359
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    invoke-virtual {v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(I)V

    .line 367
    :cond_2
    :goto_1
    return-void

    .line 348
    :cond_3
    if-nez v0, :cond_4

    .line 349
    const/16 v0, 0xc

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    goto :goto_0

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v1, v0}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 364
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    invoke-virtual {v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    goto :goto_1
.end method

.method private showPMInfo()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAm_Pm:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAm_Pm:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 538
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_3

    .line 539
    :cond_2
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 540
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-eqz v0, :cond_a

    .line 541
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 550
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    if-eqz v0, :cond_b

    .line 552
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_6

    .line 553
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_5

    .line 554
    :cond_4
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 555
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 557
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 560
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    .line 561
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_8

    .line 562
    :cond_7
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 563
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 565
    :cond_8
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 595
    :cond_9
    :goto_1
    return-void

    .line 543
    :cond_a
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 544
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 569
    :cond_b
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_e

    .line 570
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_d

    .line 571
    :cond_c
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 572
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-eqz v0, :cond_11

    .line 573
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 579
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 582
    :cond_e
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    .line 583
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-nez v0, :cond_10

    .line 584
    :cond_f
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmType:I

    .line 585
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    if-eqz v0, :cond_12

    .line 586
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 592
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_1

    .line 575
    :cond_11
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 576
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_2

    .line 588
    :cond_12
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 589
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_3
.end method

.method private showRingText()V
    .locals 5

    .prologue
    .line 396
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_0

    .line 397
    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    add-int/lit8 v0, v4, 0xc

    .line 398
    .local v0, hour:I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, hourStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 404
    .end local v0           #hour:I
    .end local v1           #hourStr:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_1

    .line 405
    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, minuteStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 411
    .end local v2           #minuteStr:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_2

    .line 412
    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mSeconds:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, secondStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 414
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 417
    .end local v3           #secondStr:Ljava/lang/String;
    :cond_2
    return-void

    .line 397
    :cond_3
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    goto :goto_0
.end method

.method private showTimePB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 421
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxProgressBar;->getValueMax()F

    move-result v2

    iget v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    iget v5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mSeconds:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->calcHourPBValue(FIII)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValue(F)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxProgressBar;->getValueMax()F

    move-result v2

    iget v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mSeconds:I

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->calcMinPBValue(FII)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValue(F)V

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxProgressBar;->getValueMax()F

    move-result v2

    iget v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mSeconds:I

    invoke-direct {p0, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->calcSecPBValue(FI)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValue(F)V

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v1, :cond_4

    .line 433
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxProgressBar;->getValueMax()F

    move-result v1

    iget v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    invoke-direct {p0, v1, v2, v6, v6}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->calcHourPBValue(FIII)F

    move-result v0

    .line 434
    .local v0, current:F
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitHourValue:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    if-nez v1, :cond_4

    .line 435
    :cond_3
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitHourValue:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    if-eqz v1, :cond_8

    .line 436
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitHourValue:F

    float-to-int v2, v2

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxProgressBar;->playFrames(II)V

    .line 440
    :goto_0
    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitHourValue:F

    .line 444
    .end local v0           #current:F
    :cond_4
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v1, :cond_6

    .line 445
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxProgressBar;->getValueMax()F

    move-result v1

    iget v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    invoke-direct {p0, v1, v2, v6}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->calcMinPBValue(FII)F

    move-result v0

    .line 446
    .restart local v0       #current:F
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitMinValue:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    if-nez v1, :cond_6

    .line 447
    :cond_5
    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitMinValue:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4040

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    if-eqz v1, :cond_9

    .line 448
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitMinValue:F

    float-to-int v2, v2

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxProgressBar;->playFrames(II)V

    .line 452
    :goto_1
    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUnitMinValue:F

    .line 455
    .end local v0           #current:F
    :cond_6
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    if-nez v1, :cond_7

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    .line 458
    :cond_7
    return-void

    .line 438
    .restart local v0       #current:F
    :cond_8
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setFrame(F)V

    goto :goto_0

    .line 450
    :cond_9
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setFrame(F)V

    goto :goto_1
.end method

.method private startTickers()V
    .locals 10

    .prologue
    .line 886
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z

    if-eqz v2, :cond_0

    .line 887
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z

    .line 888
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_1

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 890
    .local v0, now:J
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    int-to-long v8, v8

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->postAtTime(Ljava/lang/Runnable;J)V

    .line 896
    .end local v0           #now:J
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 893
    .restart local v0       #now:J
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    iget v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    int-to-long v8, v8

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private stopGears()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 737
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 742
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 744
    :cond_4
    return-void
.end method

.method private stopTickers()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z

    .line 901
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateTime()V
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "onTimeChanged~ mPaused is true"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 786
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 781
    const-string v0, "onTimeChanged mCalendar null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_1
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setData()V

    .line 785
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->invalidate(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V
    .locals 2
    .parameter "controlsPort"
    .parameter "controlsLand"

    .prologue
    .line 244
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockClickPort:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 245
    invoke-virtual {p1}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->bind()V

    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p2, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockClickLand:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 248
    invoke-virtual {p2}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->bind()V

    .line 250
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    .line 661
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->stopGears()V

    .line 662
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->stopWiggle()V

    .line 663
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->stopTickers()V

    .line 664
    return-void
.end method

.method public doTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 932
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTileMark:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTileMark:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTileMark:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 934
    .local v0, frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 936
    .end local v0           #frame:F
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_1

    .line 937
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 938
    .restart local v0       #frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 940
    .end local v0           #frame:F
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 942
    .restart local v0       #frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 945
    .end local v0           #frame:F
    :cond_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_3

    .line 946
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v1, p1}, Lcom/htc/clock3dwidget/util/DigitControl;->doTiltChanged(F)V

    .line 948
    :cond_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_4

    .line 949
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v1, p1}, Lcom/htc/clock3dwidget/util/DigitControl;->doTiltChanged(F)V

    .line 951
    :cond_4
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    const-string v0, ""

    .line 643
    .local v0, timezoneId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_0
    return-object v0
.end method

.method public init(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V
    .locals 2
    .parameter "controls"

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 160
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 161
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 164
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 165
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 167
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 168
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 171
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 172
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 173
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 174
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 176
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 177
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 178
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 179
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 180
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 181
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 183
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 184
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 185
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 188
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 189
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 190
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 191
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 192
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 196
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 198
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 199
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 200
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 203
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 204
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 205
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 206
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 209
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 210
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 211
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 213
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v0, :cond_0

    .line 214
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    .line 219
    :goto_0
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 220
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 222
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isFlipEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    .line 230
    :goto_1
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 231
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mTileMark:Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTileMark:Lcom/htc/fusion/fx/Marker;

    .line 232
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 233
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    .line 234
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 235
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    .line 238
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanelInit:Z

    .line 239
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 240
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTimePBInit:Z

    .line 241
    return-void

    .line 216
    :cond_0
    const v0, 0xea60

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I

    goto :goto_0

    .line 226
    :cond_1
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    goto :goto_1
.end method

.method public invalidate(Z)V
    .locals 3
    .parameter "useAnimation"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 318
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    if-lt v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    if-lt v0, v2, :cond_2

    .line 320
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->switchDayNightPanel(Z)V

    .line 324
    :goto_0
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->showRingText()V

    .line 325
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->showTimePB()V

    .line 326
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->showDateWeekText()V

    .line 329
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAMPM:I

    if-nez v0, :cond_3

    .line 330
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->showAMInfo()V

    .line 335
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->showHourMinuteInfo(Z)V

    .line 336
    return-void

    .line 322
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->switchDayNightPanel(Z)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->showPMInfo()V

    goto :goto_1
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    return v0
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 789
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "onTimeChanged~ mPaused is true"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 803
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 795
    const-string v0, "onTimeChanged mCalendar null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_1
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setData()V

    .line 801
    iput v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinuteFlipCount:I

    .line 802
    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->invalidate(Z)V

    goto :goto_0
.end method

.method public playGears()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 687
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "walk"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "walk"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "walk"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "walk"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "walk"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 711
    :cond_4
    return-void
.end method

.method public playWiggle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 714
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "start_wiggle"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 717
    :cond_0
    return-void
.end method

.method public prepareAnimation()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/16 v3, 0xc

    .line 807
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 810
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    .line 811
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 813
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    if-eqz v0, :cond_5

    .line 814
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 815
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 819
    :cond_2
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    add-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    .line 833
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v0, v0, -0x2

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldMinutes:I

    .line 835
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 837
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 839
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation~ mOldHour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOldMinutes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 841
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFlipAnimePrepared:Z

    goto/16 :goto_0

    .line 821
    :cond_5
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    if-nez v0, :cond_6

    .line 822
    iput v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 824
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_7

    .line 825
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 827
    :cond_7
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    .line 828
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    if-nez v0, :cond_3

    .line 829
    iput v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mOldHour:I

    goto :goto_1
.end method

.method public setAnimationFeedback(ZLcom/htc/android/rosie/widget/Widget$Host$Worker;Landroid/os/Handler;)V
    .locals 0
    .parameter "ani"
    .parameter "uiHandler"
    .parameter "uihHandler"

    .prologue
    .line 754
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->isAnimation:Z

    .line 755
    iput-object p2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 756
    iput-object p3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;

    .line 757
    return-void
.end method

.method public setDateFormat(ZLjava/lang/String;)V
    .locals 1
    .parameter "is24HourFormat"
    .parameter "dateFormat"

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    .line 633
    iput-object p2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDateFormat:Ljava/lang/String;

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mAmPmInit:Z

    .line 635
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 639
    return-void
.end method

.method public setPause(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 667
    monitor-enter p0

    .line 668
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    .line 669
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    if-eqz v0, :cond_0

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z

    .line 671
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->stopTickers()V

    .line 672
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->stopGears()V

    .line 673
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->stopWiggle()V

    .line 679
    :goto_0
    monitor-exit p0

    .line 680
    return-void

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->startTickers()V

    .line 676
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->playGears()V

    .line 677
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->onTimeChanged()V

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 2
    .parameter "timezone"

    .prologue
    .line 651
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 652
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 656
    .local v0, tz:Ljava/util/TimeZone;
    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    .line 657
    return-void

    .line 654
    .end local v0           #tz:Ljava/util/TimeZone;
    :cond_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .restart local v0       #tz:Ljava/util/TimeZone;
    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->startAnimation(Z)V

    .line 846
    return-void
.end method

.method public startAnimation(Z)V
    .locals 5
    .parameter "bPause"

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0x9

    .line 849
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mPaused:Z

    .line 850
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 882
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFlipAnimePrepared:Z

    if-nez v0, :cond_1

    .line 853
    invoke-virtual {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setPause(Z)V

    goto :goto_0

    .line 856
    :cond_1
    const-string v0, "startAnimation~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 860
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinutes:I

    .line 861
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 863
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->m24HourFormat:Z

    if-eqz v0, :cond_4

    .line 864
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 865
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_3

    .line 867
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 876
    :cond_3
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mMinuteFlipCount:I

    .line 877
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->applyRotation()V

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFlipAnimePrepared:Z

    .line 880
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->startTickers()V

    .line 881
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->playGears()V

    goto :goto_0

    .line 870
    :cond_4
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    if-nez v0, :cond_5

    .line 871
    iput v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mHour:I

    .line 872
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_3

    .line 873
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    goto :goto_1
.end method

.method public stopWiggle()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxTimeLineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 750
    :cond_0
    return-void
.end method

.method protected switchDayNightPanel(Z)V
    .locals 4
    .parameter "bDayPanel"

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x1e

    const/4 v1, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanel:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanelInit:Z

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 311
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 281
    goto :goto_0

    .line 285
    :cond_3
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanel:Z

    .line 286
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanelInit:Z

    .line 288
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mDayPanel:Z

    if-eqz v0, :cond_8

    .line 289
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 297
    :cond_7
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_1

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 302
    :cond_9
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_a

    .line 303
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_b

    .line 305
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 306
    :cond_b
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_c

    .line 307
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 308
    :cond_c
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_1
.end method

.method public unbind(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V
    .locals 2
    .parameter "controlsPort"
    .parameter "controlsLand"

    .prologue
    .line 253
    iget-object v0, p1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockClickPort:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 254
    invoke-virtual {p1}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->unbind()V

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p2, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClockClickLand:Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 257
    invoke-virtual {p2}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->unbind()V

    .line 259
    :cond_0
    return-void
.end method
