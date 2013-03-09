.class Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;
.super Ljava/lang/Object;
.source "AlarmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/AlarmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FxAlarm"
.end annotation


# instance fields
.field private mCalendar:Landroid/text/format/Time;

.field private mHour:F

.field private mHourProgress:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field private mMinitueProgress:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field private mMinutes:F

.field private mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/AlarmView;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/reminderview/AlarmView;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 2
    .parameter
    .parameter "timelineControl"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->this$0:Lcom/htc/idlescreen/base/reminderview/AlarmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mCalendar:Landroid/text/format/Time;

    .line 225
    iput-object p2, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 226
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "progressbar.alramclock_hour"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mHourProgress:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 227
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "progressbar.alramclock_minitue"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mMinitueProgress:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 228
    return-void
.end method


# virtual methods
.method public startAnimation()V
    .locals 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "alarm_shake_loop"

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 247
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 251
    return-void
.end method

.method public updateTime()V
    .locals 7

    .prologue
    const/high16 v6, 0x4140

    const/high16 v5, 0x4270

    .line 231
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 232
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 233
    .local v0, hour:I
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 234
    .local v1, minute:I
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 236
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mMinutes:F

    .line 237
    int-to-float v3, v0

    iget v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mHour:F

    .line 239
    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mHour:F

    rem-float/2addr v3, v6

    iput v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mHour:F

    .line 241
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mHourProgress:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mHour:F

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValueByPercentage(F)V

    .line 242
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mMinitueProgress:Lcom/htc/fusion/fx/controls/FxProgressBar;

    iget v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->mMinutes:F

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValueByPercentage(F)V

    .line 243
    return-void
.end method
