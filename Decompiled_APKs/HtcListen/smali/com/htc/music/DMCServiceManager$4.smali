.class Lcom/htc/music/DMCServiceManager$4;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z
    invoke-static {v0, v1}, Lcom/htc/music/DMCServiceManager;->access$1502(Lcom/htc/music/DMCServiceManager;Z)Z

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$3400(Lcom/htc/music/DMCServiceManager;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$3400(Lcom/htc/music/DMCServiceManager;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    #setter for: Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v8, v0}, Lcom/htc/music/DMCServiceManager;->access$3402(Lcom/htc/music/DMCServiceManager;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v0}, Lcom/htc/music/DMCServiceManager;->setStateSync()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$4;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$1200(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
