.class Lcom/htc/android/worldclock/AlarmInitService$6;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmInitService;
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
    .line 264
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$6;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKilled()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v0, alarmIntent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.alarm_timeout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$6;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/AlarmInitService;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$6;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 275
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/AlarmInitService$6$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/AlarmInitService$6$1;-><init>(Lcom/htc/android/worldclock/AlarmInitService$6;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method
