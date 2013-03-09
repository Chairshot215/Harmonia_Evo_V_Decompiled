.class Lcom/htc/server/PowerManagerAmsListener$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/PowerManagerAmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/PowerManagerAmsListener;


# direct methods
.method constructor <init>(Lcom/htc/server/PowerManagerAmsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/PowerManagerAmsListener$1;->this$0:Lcom/htc/server/PowerManagerAmsListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/PowerManagerAmsListener$1;->this$0:Lcom/htc/server/PowerManagerAmsListener;

    const/4 v3, 0x1

    #setter for: Lcom/htc/server/PowerManagerAmsListener;->mPowerSaverEnabled:Z
    invoke-static {v2, v3}, Lcom/htc/server/PowerManagerAmsListener;->access$002(Lcom/htc/server/PowerManagerAmsListener;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/PowerManagerAmsListener$1;->this$0:Lcom/htc/server/PowerManagerAmsListener;

    #setter for: Lcom/htc/server/PowerManagerAmsListener;->mPowerSaverEnabled:Z
    invoke-static {v2, v3}, Lcom/htc/server/PowerManagerAmsListener;->access$002(Lcom/htc/server/PowerManagerAmsListener;Z)Z

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/PowerManagerAmsListener$1;->this$0:Lcom/htc/server/PowerManagerAmsListener;

    #getter for: Lcom/htc/server/PowerManagerAmsListener;->mIPowerManager:Landroid/os/IPowerManager;
    invoke-static {v2}, Lcom/htc/server/PowerManagerAmsListener;->access$100(Lcom/htc/server/PowerManagerAmsListener;)Landroid/os/IPowerManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setAppScreenDimTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PowerManagerAmsListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleTopAppChanged: [EXCEPTION]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
