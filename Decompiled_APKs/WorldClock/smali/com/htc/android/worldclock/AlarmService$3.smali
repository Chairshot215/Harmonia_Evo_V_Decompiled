.class Lcom/htc/android/worldclock/AlarmService$3;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmService;->cancelSnooze()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmService;->mSettings:Lcom/htc/android/worldclock/Alarms$AlarmSettings;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;I)V

    .line 165
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$000(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$000(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->isRepeatSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$600(Lcom/htc/android/worldclock/AlarmService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$3;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->setNextAlarm(Landroid/content/Context;I)V

    goto :goto_0
.end method
