.class public Lcom/htc/android/worldclock/SetAlarm;
.super Landroid/app/Activity;
.source "SetAlarm.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;
    }
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field static final INTERNAL_STORAGE_FULL:I = 0x2

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final REPEAT:Ljava/lang/String; = "repeat"

.field static final REQUEST_REPEAT:I = 0x1

.field static final REQUEST_RINGTONE:I = 0x0

.field public static final TEMPREPEAT:Ljava/lang/String; = "tempRepeat"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"


# instance fields
.field private final WHAT_ON_DORESUME:I

.field private final WHAT_ON_INIT:I

.field private final WHAT_ON_REPORT:I

.field private final WHAT_ON_RINGTONE:I

.field private m24HourMode:Z

.field private mAlertSound:Landroid/net/Uri;

.field private mBtn1ClickListener:Landroid/view/View$OnClickListener;

.field private mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

.field private mDescription:Ljava/lang/String;

.field private mDescriptionText:Landroid/widget/EditText;

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mHour:I

.field private mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

.field private mId:I

.field private mInit:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIslaunchRingToneDialogActivity:Z

.field protected mLooper:Landroid/os/Looper;

.field private mMediaChanged:Z

.field private mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

.field private mMinutes:I

.field private mNow:Ljava/util/Calendar;

.field private mRepeatLayout:Landroid/widget/LinearLayout;

.field private mRepeatText:Landroid/widget/TextView;

.field private mReportAlarmCalled:Z

.field private mResultChanged:Z

.field private mRingToneClickListener:Landroid/view/View$OnClickListener;

.field private mRingToneTitle:Ljava/lang/String;

.field private mRingtoneLayout:Landroid/widget/LinearLayout;

.field private mRingtoneText:Landroid/widget/TextView;

.field private mSetAlarmResUtils:Lcom/htc/android/worldclock/SetAlarmResUtils;

.field private mStopped:Z

.field private mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

.field private mVibrate:Z

.field private mVibrateCheckBox:Landroid/widget/CheckBox;

.field private mVibrateLayout:Landroid/widget/RelativeLayout;

.field private myScrollView:Lcom/htc/android/worldclock/widget/MyScrollView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/16 v0, 0x258

    iput v0, p0, Lcom/htc/android/worldclock/SetAlarm;->WHAT_ON_INIT:I

    .line 76
    const/16 v0, 0x259

    iput v0, p0, Lcom/htc/android/worldclock/SetAlarm;->WHAT_ON_RINGTONE:I

    .line 77
    const/16 v0, 0x25a

    iput v0, p0, Lcom/htc/android/worldclock/SetAlarm;->WHAT_ON_DORESUME:I

    .line 78
    const/16 v0, 0x25c

    iput v0, p0, Lcom/htc/android/worldclock/SetAlarm;->WHAT_ON_REPORT:I

    .line 100
    new-instance v0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 101
    new-instance v0, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 103
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->m24HourMode:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z

    .line 107
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mResultChanged:Z

    .line 111
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mLooper:Landroid/os/Looper;

    .line 113
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    .line 114
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mInit:Z

    .line 115
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mStopped:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    .line 122
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    .line 441
    new-instance v0, Lcom/htc/android/worldclock/SetAlarm$9;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/SetAlarm$9;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mBtn1ClickListener:Landroid/view/View$OnClickListener;

    .line 478
    new-instance v0, Lcom/htc/android/worldclock/SetAlarm$10;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/SetAlarm$10;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneClickListener:Landroid/view/View$OnClickListener;

    .line 886
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->onInitParent()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->onRingTone()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->updateRepeat()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/worldclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/android/worldclock/SetAlarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrateCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/worldclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/android/worldclock/SetAlarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/SetAlarm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingtoneText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/widget/HtcTimePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/worldclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHour:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/android/worldclock/SetAlarm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHour:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/android/worldclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/android/worldclock/SetAlarm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/android/worldclock/SetAlarm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->onReport()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/worldclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/android/worldclock/SetAlarm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/android/worldclock/SetAlarm;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/worldclock/SetAlarm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/SetAlarm;->saveAlarm(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/android/worldclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mIslaunchRingToneDialogActivity:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/android/worldclock/SetAlarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mIslaunchRingToneDialogActivity:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/android/worldclock/SetAlarm;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/android/worldclock/SetAlarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/android/worldclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->onDoResume()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->initUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/SetAlarm;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->updateTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->updateDescription()V

    return-void
.end method

.method static formatToast(Landroid/content/Context;IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/lang/String;
    .locals 25
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 743
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 744
    invoke-static/range {p1 .. p3}, Lcom/htc/android/worldclock/Alarms;->calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 746
    .local v3, alarm:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v8, v3, v21

    .line 748
    .local v8, delta:J
    const-wide/32 v21, 0x36ee80

    div-long v14, v8, v21

    .line 749
    .local v14, hours:J
    const-wide/32 v21, 0xea60

    div-long v21, v8, v21

    const-wide/16 v23, 0x3c

    rem-long v17, v21, v23

    .line 750
    .local v17, minutes:J
    const-wide/16 v21, 0x18

    div-long v6, v14, v21

    .line 751
    .local v6, days:J
    const-wide/16 v21, 0x18

    rem-long v14, v14, v21

    .line 753
    const-wide/16 v21, 0x0

    cmp-long v21, v6, v21

    if-nez v21, :cond_0

    const-string v5, ""

    .line 757
    .local v5, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-nez v21, :cond_2

    const-string v16, ""

    .line 761
    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v21, 0x0

    cmp-long v21, v14, v21

    if-nez v21, :cond_4

    const-string v13, ""

    .line 765
    .local v13, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v21, 0x0

    cmp-long v21, v6, v21

    if-lez v21, :cond_6

    const/4 v10, 0x1

    .line 766
    .local v10, dispDays:Z
    :goto_3
    const-wide/16 v21, 0x0

    cmp-long v21, v14, v21

    if-lez v21, :cond_7

    const/4 v11, 0x1

    .line 767
    .local v11, dispHour:Z
    :goto_4
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-lez v21, :cond_8

    const/4 v12, 0x1

    .line 770
    .local v12, dispMinute:Z
    :goto_5
    if-nez v10, :cond_9

    if-nez v11, :cond_9

    if-nez v12, :cond_9

    .line 771
    const v21, 0x7f080055

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 785
    .end local v13           #hourSeq:Ljava/lang/String;
    .end local v16           #minSeq:Ljava/lang/String;
    .local v20, ret:Ljava/lang/String;
    :goto_6
    const v21, 0x7f08004d

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v20, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 786
    return-object v20

    .line 753
    .end local v5           #daySeq:Ljava/lang/String;
    .end local v10           #dispDays:Z
    .end local v11           #dispHour:Z
    .end local v12           #dispMinute:Z
    .end local v20           #ret:Ljava/lang/String;
    :cond_0
    const-wide/16 v21, 0x1

    cmp-long v21, v6, v21

    if-nez v21, :cond_1

    const v21, 0x7f08004f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const v21, 0x7f080050

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 757
    .restart local v5       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v21, 0x1

    cmp-long v21, v17, v21

    if-nez v21, :cond_3

    const v21, 0x7f080056

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v21, 0x7f080057

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 761
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v21, 0x1

    cmp-long v21, v14, v21

    if-nez v21, :cond_5

    const v21, 0x7f080051

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_5
    const v21, 0x7f080052

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 765
    .restart local v13       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 766
    .restart local v10       #dispDays:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 767
    .restart local v11       #dispHour:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 773
    .restart local v12       #dispMinute:Z
    :cond_9
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 774
    .local v19, parts:[Ljava/lang/String;
    const/16 v21, 0x0

    aput-object v5, v19, v21

    .line 775
    const/16 v22, 0x1

    if-nez v10, :cond_a

    const-string v21, ""

    :goto_7
    aput-object v21, v19, v22

    .line 779
    const/16 v21, 0x2

    if-eqz v11, :cond_d

    .end local v13           #hourSeq:Ljava/lang/String;
    :goto_8
    aput-object v13, v19, v21

    .line 780
    const/16 v22, 0x3

    if-eqz v11, :cond_e

    if-eqz v12, :cond_e

    const v21, 0x7f080053

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_9
    aput-object v21, v19, v22

    .line 781
    const/16 v21, 0x4

    if-eqz v12, :cond_f

    .end local v16           #minSeq:Ljava/lang/String;
    :goto_a
    aput-object v16, v19, v21

    .line 782
    const v21, 0x7f08004e

    check-cast v19, [Ljava/lang/Object;

    .end local v19           #parts:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20       #ret:Ljava/lang/String;
    goto/16 :goto_6

    .line 775
    .end local v20           #ret:Ljava/lang/String;
    .restart local v13       #hourSeq:Ljava/lang/String;
    .restart local v16       #minSeq:Ljava/lang/String;
    .restart local v19       #parts:[Ljava/lang/String;
    :cond_a
    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    const v21, 0x7f080054

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    :cond_b
    if-nez v11, :cond_c

    if-nez v12, :cond_c

    const-string v21, ""

    goto :goto_7

    :cond_c
    const v21, 0x7f080053

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    .line 779
    :cond_d
    const-string v13, ""

    goto :goto_8

    .line 780
    .end local v13           #hourSeq:Ljava/lang/String;
    :cond_e
    const-string v21, ""

    goto :goto_9

    .line 781
    :cond_f
    const-string v16, ""

    goto :goto_a
.end method

.method private getDateFormat()V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 272
    const-string v0, "deskclock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/worldclock/SetAlarm;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 274
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->m24HourMode:Z

    .line 275
    return-void
.end method

.method private getDefaultAlarm()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 631
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 632
    const/4 v2, 0x0

    .line 634
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getAlarmSoundFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, alarm_sound:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getAlarmAlertFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, alarm_alert:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 643
    :goto_0
    if-eqz v2, :cond_0

    .line 644
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setDefaultSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 646
    :cond_0
    return-object v2

    .line 638
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 639
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 641
    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private getRingToneTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 279
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 280
    iget-boolean v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlarmSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, uri:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 286
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->getDefaultAlarm()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    .line 291
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mResultChanged:Z

    if-eqz v2, :cond_6

    .line 296
    :cond_4
    iput-boolean v3, p0, Lcom/htc/android/worldclock/SetAlarm;->mResultChanged:Z

    .line 297
    iget-boolean v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z

    if-eqz v2, :cond_5

    .line 298
    iput-boolean v3, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z

    .line 299
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/AlertUtils;->getRingToneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 300
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlertSound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 304
    :cond_5
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    invoke-static {p0, v2, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    .line 305
    .local v0, ringtone:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneTitle:Ljava/lang/String;

    .line 307
    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneTitle:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    .line 312
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_6
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlarmSoundTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 166
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SetAlarm"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandlerThread:Landroid/os/HandlerThread;

    .line 167
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 168
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mLooper:Landroid/os/Looper;

    .line 169
    new-instance v0, Lcom/htc/android/worldclock/SetAlarm$1;

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/SetAlarm$1;-><init>(Lcom/htc/android/worldclock/SetAlarm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method private initRegister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 833
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 835
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    if-nez v1, :cond_0

    .line 836
    new-instance v1, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;-><init>(Lcom/htc/android/worldclock/SetAlarm;Lcom/htc/android/worldclock/SetAlarm$1;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    .line 837
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 838
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/SetAlarm;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 843
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 338
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 339
    iget-boolean v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 439
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-nez v4, :cond_1

    .line 345
    const v4, 0x7f0b004e

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcTimePicker;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    .line 346
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 347
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    .line 348
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4}, Lcom/htc/widget/HtcTimePicker;->disableTitle()V

    .line 350
    :cond_1
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 352
    iget-boolean v4, p0, Lcom/htc/android/worldclock/SetAlarm;->m24HourMode:Z

    if-nez v4, :cond_4

    .line 353
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/16 v5, 0xc

    invoke-virtual {v4, v6, v5}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 354
    new-array v0, v8, [Ljava/lang/String;

    .line 355
    .local v0, ampm:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 356
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 357
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v7, v6, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 366
    .end local v0           #ampm:[Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 367
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4}, Lcom/htc/widget/HtcTimePicker;->requestFocus()Z

    .line 370
    const v4, 0x7f0b0010

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    .line 371
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_inputfield_light(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 375
    const v4, 0x7f0b004b

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/android/worldclock/widget/MyScrollView;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->myScrollView:Lcom/htc/android/worldclock/widget/MyScrollView;

    .line 376
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->myScrollView:Lcom/htc/android/worldclock/widget/MyScrollView;

    if-eqz v4, :cond_3

    .line 377
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->myScrollView:Lcom/htc/android/worldclock/widget/MyScrollView;

    iget-object v5, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/htc/android/worldclock/widget/MyScrollView;->setHandler(Landroid/os/Handler;)V

    .line 381
    :cond_3
    const v4, 0x7f0b0053

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingtoneText:Landroid/widget/TextView;

    .line 382
    const v4, 0x7f0b0052

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingtoneLayout:Landroid/widget/LinearLayout;

    .line 383
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingtoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_list_item_background(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 384
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingtoneLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v4, 0x7f0b0055

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRepeatText:Landroid/widget/TextView;

    .line 388
    const v4, 0x7f0b0054

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRepeatLayout:Landroid/widget/LinearLayout;

    .line 389
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRepeatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_list_item_background(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 390
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mRepeatLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/htc/android/worldclock/SetAlarm$5;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/SetAlarm$5;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const v4, 0x7f0b0057

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrateCheckBox:Landroid/widget/CheckBox;

    .line 402
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrateCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/htc/android/worldclock/SetAlarm$6;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/SetAlarm$6;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v4, 0x7f0b0056

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrateLayout:Landroid/widget/RelativeLayout;

    .line 411
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrateLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_list_item_background(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 412
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrateLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/htc/android/worldclock/SetAlarm$7;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/SetAlarm$7;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 423
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 427
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 428
    .local v1, btn1:Landroid/widget/Button;
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mBtn1ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_2()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 431
    .local v2, btn2:Landroid/widget/Button;
    new-instance v4, Lcom/htc/android/worldclock/SetAlarm$8;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/SetAlarm$8;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 359
    .end local v1           #btn1:Landroid/widget/Button;
    .end local v2           #btn2:Landroid/widget/Button;
    :cond_4
    iget-object v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/16 v5, 0x17

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 360
    const v4, 0x7f0b004d

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 361
    .local v3, title:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private onDoResume()V
    .locals 2

    .prologue
    .line 847
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 848
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 854
    :goto_0
    return-void

    .line 851
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mStopped:Z

    .line 852
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mInit:Z

    goto :goto_0
.end method

.method private onInitParent()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 207
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 208
    iget-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mIslaunchRingToneDialogActivity:Z

    .line 214
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, i:Landroid/content/Intent;
    const-string v1, "alarm_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In SetAlarm, alarm id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 219
    iget v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    if-ne v1, v3, :cond_1

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mNow:Ljava/util/Calendar;

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->getDateFormat()V

    .line 225
    new-instance v1, Lcom/htc/android/worldclock/SetAlarm$2;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/SetAlarm$2;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/SetAlarm;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onReport()V
    .locals 12

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 239
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 240
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 244
    :cond_0
    iget v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    if-eq v0, v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    invoke-static {v0, p0, v1}, Lcom/htc/android/worldclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;I)V

    .line 252
    :goto_1
    new-instance v0, Lcom/htc/android/worldclock/SetAlarm$3;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/SetAlarm$3;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SetAlarm;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mNow:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mNow:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-direct {v7, v2}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>(I)V

    const/4 v8, 0x1

    const-string v9, ""

    const-string v10, ""

    move-object v0, p0

    move v11, v2

    invoke-virtual/range {v0 .. v11}, Lcom/htc/android/worldclock/SetAlarm;->reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private onRingTone()V
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 319
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->getRingToneTitle()V

    .line 324
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mRingToneTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Lcom/htc/android/worldclock/SetAlarm$4;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/SetAlarm$4;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SetAlarm;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)V
    .locals 3
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 730
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 731
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/worldclock/SetAlarm;->formatToast(Landroid/content/Context;IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 733
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/htc/android/worldclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 734
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 735
    return-void
.end method

.method public static saveAlarm(Landroid/content/Context;IZIILcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .parameter "context"
    .parameter "id"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "alert"
    .parameter "message"
    .parameter "snoozed"
    .parameter "popToast"

    .prologue
    .line 711
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** saveAlarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vibe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p7

    move/from16 v10, p9

    .line 716
    invoke-static/range {v1 .. v10}, Lcom/htc/android/worldclock/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 719
    if-eqz p2, :cond_0

    if-eqz p10, :cond_0

    .line 720
    move-object/from16 v0, p5

    invoke-static {p0, p3, p4, v0}, Lcom/htc/android/worldclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)V

    .line 722
    :cond_0
    return-void
.end method

.method private saveAlarm(Z)V
    .locals 11
    .parameter "popToast"

    .prologue
    .line 694
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 695
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, alertString:Ljava/lang/String;
    iget v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/android/worldclock/SetAlarm;->mHour:I

    iget v4, p0, Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I

    iget-object v5, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    iget-boolean v6, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z

    iget-object v8, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescription:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, p0

    move v10, p1

    invoke-static/range {v0 .. v10}, Lcom/htc/android/worldclock/SetAlarm;->saveAlarm(Landroid/content/Context;IZIILcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 701
    .end local v7           #alertString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private unInitRegister()V
    .locals 1

    .prologue
    .line 810
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SetAlarm;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaReceiver:Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateDescription()V
    .locals 2

    .prologue
    .line 680
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDescription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 683
    return-void
.end method

.method private updateRepeat()V
    .locals 3

    .prologue
    .line 686
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRepeat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mRepeatText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mRepeatText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 650
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 652
    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 653
    .local v0, an:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 654
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 655
    new-instance v1, Lcom/htc/android/worldclock/SetAlarm$15;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/SetAlarm$15;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 673
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mHour:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 674
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 675
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 677
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 858
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 859
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 860
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 882
    :cond_1
    :goto_0
    return v0

    .line 863
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 882
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 865
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 866
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 870
    :cond_4
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 874
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 878
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 863
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 126
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mIslaunchRingToneDialogActivity:Z

    .line 130
    if-eqz p3, :cond_0

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 132
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mResultChanged:Z

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 900
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 901
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 902
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mSetAlarmResUtils:Lcom/htc/android/worldclock/SetAlarmResUtils;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/SetAlarmResUtils;->resetLayout()V

    .line 903
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 145
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SetAlarm;->requestWindowFeature(I)Z

    .line 148
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SetAlarm;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->getCommonAppBkg(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 149
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SetAlarm;->setContentView(I)V

    .line 150
    new-instance v0, Lcom/htc/android/worldclock/SetAlarmResUtils;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/SetAlarmResUtils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mSetAlarmResUtils:Lcom/htc/android/worldclock/SetAlarmResUtils;

    .line 151
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mSetAlarmResUtils:Lcom/htc/android/worldclock/SetAlarmResUtils;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/SetAlarmResUtils;->initResources()V

    .line 152
    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->setCommand(Landroid/app/Activity;)V

    .line 153
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->initHandler()V

    .line 154
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 551
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 552
    packed-switch p1, :pswitch_data_0

    .line 598
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 554
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f09

    iget-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/htc/android/worldclock/SetAlarm$14;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/SetAlarm$14;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080016

    new-instance v2, Lcom/htc/android/worldclock/SetAlarm$13;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SetAlarm$13;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080018

    new-instance v2, Lcom/htc/android/worldclock/SetAlarm$12;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SetAlarm$12;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/worldclock/SetAlarm$11;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/SetAlarm$11;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z

    .line 528
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePicker;->releaseResource()V

    .line 538
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->unInitRegister()V

    .line 543
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 544
    iput-object v2, p0, Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 547
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 791
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mStopped:Z

    .line 793
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescriptionText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 797
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 798
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 823
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 824
    invoke-static {p0}, Lcom/htc/android/worldclock/HtcStorageChecker;->checkStorageFull(Landroid/app/Activity;)V

    .line 826
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mInit:Z

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->onDoResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 159
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 161
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->initRegister()V

    .line 162
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 802
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 803
    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mStopped:Z

    .line 804
    invoke-direct {p0}, Lcom/htc/android/worldclock/SetAlarm;->unInitRegister()V

    .line 805
    iput-boolean v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z

    .line 806
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 807
    return-void
.end method

.method public reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "alarmtime"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"
    .parameter "snoozed"

    .prologue
    .line 611
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 612
    iput p3, p0, Lcom/htc/android/worldclock/SetAlarm;->mHour:I

    .line 613
    iput p4, p0, Lcom/htc/android/worldclock/SetAlarm;->mMinutes:I

    .line 614
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-virtual {v0, p7}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->set(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)V

    .line 615
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mTempDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->set(Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)V

    .line 616
    iput-object p9, p0, Lcom/htc/android/worldclock/SetAlarm;->mDescription:Ljava/lang/String;

    .line 617
    iput-boolean p8, p0, Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z

    .line 619
    if-eqz p10, :cond_0

    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    .line 621
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
