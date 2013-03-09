.class Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

.field final synthetic val$daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

.field final synthetic val$hour:I

.field final synthetic val$id:I

.field final synthetic val$minutes:I

.field final synthetic val$positionId:I


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;IIIILcom/htc/android/worldclock/Alarms$DaysOfWeek;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iput p2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$positionId:I

    iput p3, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    iput p4, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$hour:I

    iput p5, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$minutes:I

    iput-object p6, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 567
    .end local p1
    :goto_0
    return-void

    .line 549
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 550
    .local v0, checked:Z
    if-eqz v0, :cond_1

    .line 551
    const-string v1, "[ATS][com.htc.android.worldclock][set_time][complete]"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$positionId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/AlarmItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/worldclock/AlarmItem;->aEnabled:Z

    .line 554
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget v2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 555
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget v2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$hour:I

    iget v3, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$minutes:I

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$daysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/worldclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v1

    goto :goto_0

    .line 560
    :cond_1
    const-string v1, "[ATS][com.htc.android.worldclock][alarm_schedule][delete]"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 562
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$positionId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/AlarmItem;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/worldclock/AlarmItem;->aEnabled:Z

    .line 563
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget v2, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 564
    :catch_1
    move-exception v1

    goto :goto_0
.end method
