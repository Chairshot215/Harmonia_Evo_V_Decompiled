.class Lcom/htc/android/worldclock/AlarmService$2;
.super Landroid/os/Handler;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmService;
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
    .line 65
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v0, "stop service"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/htc/android/worldclock/AlarmAlertWakeLock;->release()V

    .line 76
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmService;->stopSelf()V

    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAlarmAlertStartActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/worldclock/AlarmService;->access$100()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/htc/android/worldclock/AlarmService;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$300(Lcom/htc/android/worldclock/AlarmService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmService;->access$400(Lcom/htc/android/worldclock/AlarmService;)Z

    move-result v3

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmService$2;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I
    invoke-static {v4}, Lcom/htc/android/worldclock/AlarmService;->access$500(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/worldclock/AlertUtils;->alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
