.class Lcom/htc/android/worldclock/FotaService$intentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/FotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "intentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/FotaService;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/FotaService;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/FotaService;Lcom/htc/android/worldclock/FotaService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/FotaService$intentReceiver;-><init>(Lcom/htc/android/worldclock/FotaService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    const-string v0, "FotaService: receive com.htc.providers.media.ID_UPDATE_RESPONSE action"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 107
    if-nez p2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    const-string v1, "media_ids_res"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/worldclock/FotaService;->mResponseUriList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FotaService: intentReceiver mResponseUriList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    iget-object v1, v1, Lcom/htc/android/worldclock/FotaService;->mResponseUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    iget-object v0, v0, Lcom/htc/android/worldclock/FotaService;->mResponseUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    #calls: Lcom/htc/android/worldclock/FotaService;->setNewTimerUri()V
    invoke-static {v0}, Lcom/htc/android/worldclock/FotaService;->access$100(Lcom/htc/android/worldclock/FotaService;)V

    .line 114
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    #calls: Lcom/htc/android/worldclock/FotaService;->setNewAlarmUri()V
    invoke-static {v0}, Lcom/htc/android/worldclock/FotaService;->access$200(Lcom/htc/android/worldclock/FotaService;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService$intentReceiver;->this$0:Lcom/htc/android/worldclock/FotaService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/FotaService;->stopSelf()V

    goto :goto_0
.end method
