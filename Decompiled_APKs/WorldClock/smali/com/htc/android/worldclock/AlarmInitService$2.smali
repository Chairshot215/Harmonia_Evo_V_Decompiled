.class Lcom/htc/android/worldclock/AlarmInitService$2;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmInitService;->doAlarmInitService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$2;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$2;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$2;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-boolean v1, v1, Lcom/htc/android/worldclock/AlarmInitService;->mBootCompleted:Z

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$2;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-boolean v2, v2, Lcom/htc/android/worldclock/AlarmInitService;->mOffAlarm:Z

    #calls: Lcom/htc/android/worldclock/AlarmInitService;->updateAlarms(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$000(Lcom/htc/android/worldclock/AlarmInitService;ZZ)V

    .line 124
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$2;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmInitService;->access$100(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    return-void
.end method
