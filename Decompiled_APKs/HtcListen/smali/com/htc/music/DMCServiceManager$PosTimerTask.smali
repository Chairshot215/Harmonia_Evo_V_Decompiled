.class Lcom/htc/music/DMCServiceManager$PosTimerTask;
.super Ljava/util/TimerTask;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v4}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPositionDyn:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PosTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1200(Lcom/htc/music/DMCServiceManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
