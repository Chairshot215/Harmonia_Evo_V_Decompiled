.class Lcom/htc/android/worldclock/AlarmService$7;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;


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
    .line 340
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKilled()V
    .locals 5

    .prologue
    .line 343
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 345
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-static {v0}, Lcom/htc/android/worldclock/AlertUtils;->sendAlarmTimeout(Landroid/content/Context;)V

    .line 346
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->dismissNotification(Landroid/content/Context;I)V

    .line 349
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$300(Lcom/htc/android/worldclock/AlarmService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/worldclock/AlertUtils;->alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 352
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmService$7$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmService$7$1;-><init>(Lcom/htc/android/worldclock/AlarmService$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 361
    return-void
.end method
