.class public Lcom/htc/idlescreen/base/reminderview/CalendarView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "CalendarView"

.field private static final WHAT_ON_UPDATETIME:I = 0x44d


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mDatelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mEndTime:J

.field private mEventlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mEventlabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mMonlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mStartTime:J

.field private mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWhere:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 65
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getBGLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;-><init>(Lcom/htc/idlescreen/base/reminderview/CalendarView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mBgHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->initScene()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/reminderview/CalendarView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/reminderview/CalendarView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/reminderview/CalendarView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/reminderview/CalendarView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->updateTime(JJ)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/CalendarView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 55
    const-string v0, "Port/base/Lockscreen_calendar.m10"

    .line 56
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 57
    const-string v0, "Land/base/Lockscreen_calendar.m10"

    .line 59
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 60
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/CalendarView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method

.method private updateDate(J)V
    .locals 6
    .parameter "start"

    .prologue
    .line 97
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 100
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 101
    .local v1, timeToday:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 102
    iget v3, v1, Landroid/text/format/Time;->month:I

    const/16 v4, 0x14

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, month:Ljava/lang/String;
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, today:Ljava/lang/String;
    const-string v3, "CalendarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDate month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDatelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mMonlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private updateTime(JJ)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    .line 251
    const-string v0, ""

    .line 252
    .local v0, dateStr:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 253
    .local v5, startTime:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 254
    .local v3, endTime:Ljava/util/Date;
    const/4 v4, 0x0

    .line 256
    .local v4, sameDay:Z
    sub-long v6, p1, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 257
    .local v1, dif:J
    const-wide/32 v6, 0x5265c00

    cmp-long v6, v1, v6

    if-gez v6, :cond_0

    .line 258
    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 259
    const/4 v4, 0x1

    .line 263
    :cond_0
    if-eqz v4, :cond_1

    .line 264
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    const-string v6, "CalendarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTime start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dateStr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEventlabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 275
    return-void

    .line 268
    :cond_1
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 116
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 117
    const-string v0, "CalendarView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    const v1, 0x7f04001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 5

    .prologue
    .line 71
    const-string v2, "CalendarView"

    const-string v3, "initScene"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 73
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 74
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, res:Landroid/content/res/Resources;
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->CALENDAR_RES_DRAG_SNOOZE:[Ljava/lang/String;

    const v3, 0x20c00ac

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 77
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->CALENDAR_RES_DRAG_DISMISS:[Ljava/lang/String;

    const v3, 0x20c00ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 79
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    const v4, 0x7f020007

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 80
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    const v4, 0x7f020003

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 82
    const-string v2, "textlabel.canlendar"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 83
    const-string v2, "textlabel.calendar_eventinfo"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEventlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 84
    const-string v2, "textlabel.calendar_eventtime"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEventlabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    const-string v2, "textlabel.calendar_date"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDatelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 86
    const-string v2, "textlabel.calendar_month"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mMonlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 88
    const-string v2, "textlabel.calendar_eventplace"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mWhere:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 89
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mWhere:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mWhere:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->update()V

    .line 94
    return-void
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->reset()V

    .line 130
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->reset()V

    .line 131
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 2
    .parameter "unlock"

    .prologue
    const/4 v1, 0x1

    .line 314
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragEnd(Z)V

    .line 315
    if-nez p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 317
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragStart()V

    .line 323
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 324
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 325
    return-void
.end method

.method public onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 5
    .parameter "draggable"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 158
    const-string v3, "CalendarView"

    const-string v4, "onDrop"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v0

    .line 160
    .local v0, ctrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
    iget-object v3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v1, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 161
    .local v1, id:J
    if-eqz p1, :cond_0

    .line 162
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeCalendarEvent()V

    goto :goto_0
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "draggable"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const v1, 0x7f040022

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    goto :goto_0
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 293
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 294
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 300
    :cond_1
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 289
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 303
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 304
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 305
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 311
    :cond_1
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 329
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update()V
    .locals 9

    .prologue
    const v4, 0x7f040036

    const-wide/16 v7, 0x0

    .line 202
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 203
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 204
    .local v2, state:Lcom/htc/lockscreen/reminder/ReminderState;
    if-eqz v2, :cond_3

    .line 205
    iget-object v3, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEventlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 213
    iput-wide v7, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J

    .line 214
    iput-wide v7, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEndTime:J

    .line 215
    iget-object v3, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    const-string v4, "beginTime"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J

    .line 217
    iget-object v3, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    const-string v4, "endTime"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEndTime:J

    .line 219
    :cond_0
    const-string v3, "CalendarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mStartTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mEndTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEndTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-wide v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    .line 228
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, msg:Landroid/os/Message;
    const/16 v3, 0x44d

    iput v3, v0, Landroid/os/Message;->what:I

    .line 230
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mBgHandler:Landroid/os/Handler;

    invoke-static {v3, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 246
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J

    invoke-direct {p0, v3, v4}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->updateDate(J)V

    .line 247
    return-void

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method
