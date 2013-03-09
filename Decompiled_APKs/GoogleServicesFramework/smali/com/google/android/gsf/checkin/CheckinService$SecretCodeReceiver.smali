.class public Lcom/google/android/gsf/checkin/CheckinService$SecretCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/CheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretCodeReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    const-string v2, "CheckinService"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, storage:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CheckinService_notify"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    new-instance v0, Lcom/android/common/OperationScheduler;

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 127
    .local v0, scheduler:Lcom/android/common/OperationScheduler;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 128
    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 129
    const-string v2, "CheckinService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string v2, "CheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launching from SecretCodeReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    #calls: Lcom/google/android/gsf/checkin/CheckinService;->launchService(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinService;->access$000(Landroid/content/Context;)V

    .line 133
    return-void
.end method
