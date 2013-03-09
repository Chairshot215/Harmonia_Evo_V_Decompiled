.class Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;
.super Landroid/content/BroadcastReceiver;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x11177

    const/4 v3, 0x1

    .line 1783
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, action:Ljava/lang/String;
    sget-object v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", onPause : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const-string v2, "action.start.week.day.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1786
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "calendar_start_weekday"

    invoke-static {v2, v4, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1787
    .local v1, theWeekStartDay:I
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first day of week has been changed (Sunday 1, Monday 2)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    if-eq v1, v2, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    .line 1791
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    .line 1792
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonthData(Landroid/text/format/Time;)V
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$200(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Landroid/text/format/Time;)V

    .line 1793
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11173

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1825
    .end local v1           #theWeekStartDay:I
    :cond_0
    :goto_1
    return-void

    .line 1784
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1796
    :cond_2
    const-string v2, "action.calendars.picker.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1798
    :cond_3
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    .line 1799
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-virtual {v2, v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1800
    :cond_4
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mActionScheduleEvent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1803
    :cond_5
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->checkTime()V

    .line 1804
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbTimeChanged:Z

    .line 1806
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-nez v2, :cond_6

    .line 1807
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1808
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mNeedUpdateMonthData:Z

    goto :goto_1

    .line 1812
    :cond_6
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    .line 1813
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11174

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1814
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-virtual {v2, v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1815
    :cond_7
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1816
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-eqz v2, :cond_8

    .line 1817
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->checkTime()V

    goto/16 :goto_1

    .line 1819
    :cond_8
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedCheckTime:Z

    goto/16 :goto_1

    .line 1821
    :cond_9
    const-string v2, "action.lunar.show.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1823
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->checkLunarCalendar(Z)V
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$1000(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Z)V

    goto/16 :goto_1
.end method
