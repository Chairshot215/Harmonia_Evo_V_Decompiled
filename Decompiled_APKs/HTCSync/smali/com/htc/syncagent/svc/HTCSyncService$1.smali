.class Lcom/htc/syncagent/svc/HTCSyncService$1;
.super Landroid/content/BroadcastReceiver;
.source "HTCSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/syncagent/svc/HTCSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/svc/HTCSyncService;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/svc/HTCSyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/svc/HTCSyncService$1;->this$0:Lcom/htc/syncagent/svc/HTCSyncService;

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v1, "psclient.intent.action.sync_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "FDUI"

    const-string v2, "get syncend broadcast "

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->saveSyncTime()V

    .line 47
    :cond_0
    return-void
.end method
