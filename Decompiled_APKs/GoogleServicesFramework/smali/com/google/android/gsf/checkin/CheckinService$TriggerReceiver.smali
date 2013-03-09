.class public Lcom/google/android/gsf/checkin/CheckinService$TriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/CheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriggerReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string v2, "CheckinService"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, storage:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/android/common/OperationScheduler;

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 106
    .local v0, scheduler:Lcom/android/common/OperationScheduler;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 107
    const-string v2, "force"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 110
    :cond_0
    const-string v2, "CheckinService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const-string v2, "CheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launching from TriggerReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    #calls: Lcom/google/android/gsf/checkin/CheckinService;->launchService(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinService;->access$000(Landroid/content/Context;)V

    .line 114
    return-void
.end method
