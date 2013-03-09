.class Lcom/htc/omadm/core/DMService$1;
.super Landroid/content/BroadcastReceiver;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/core/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/core/DMService;


# direct methods
.method constructor <init>(Lcom/htc/omadm/core/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/omadm/core/DMService$1;->this$0:Lcom/htc/omadm/core/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    const/16 v2, 0x3039

    .line 309
    .local v2, id:I
    const-string v3, "com.htc.omadm.core.setforeground"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    const-string v3, "DMService"

    const-string v4, "Control foreground."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v3, "EnableForeground"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 312
    const-string v3, "DMService"

    const-string v4, "Enable foreground."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/htc/omadm/core/DMService$1;->this$0:Lcom/htc/omadm/core/DMService;

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/htc/omadm/core/DMService;->startForeground(ILandroid/app/Notification;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v3, "DMService"

    const-string v4, "Disable foreground."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Lcom/htc/omadm/core/DMService$1;->this$0:Lcom/htc/omadm/core/DMService;

    invoke-virtual {v3, v5}, Lcom/htc/omadm/core/DMService;->stopForeground(Z)V

    goto :goto_0

    .line 318
    :cond_2
    const-string v3, "com.htc.omadm.core.oobenotifyready"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const-string v3, "DMService"

    const-string v4, "Receive OOBE UI notify intent."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v3, "DMService"

    const-string v4, "PropertyState.OOBEUIReady set true."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Lcom/htc/omadm/core/DMService;->access$100()Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 322
    const-string v3, "DMService"

    const-string v4, "Cancel TimeoutforWaitOOBEUINotify"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/htc/omadm/core/DMService$1;->this$0:Lcom/htc/omadm/core/DMService;

    #calls: Lcom/htc/omadm/core/DMService;->SetOOBEUIReady()V
    invoke-static {v3}, Lcom/htc/omadm/core/DMService;->access$200(Lcom/htc/omadm/core/DMService;)V

    .line 326
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.omadm.core.oobenotifyready"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, i:Landroid/content/Intent;
    sget-object v3, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
