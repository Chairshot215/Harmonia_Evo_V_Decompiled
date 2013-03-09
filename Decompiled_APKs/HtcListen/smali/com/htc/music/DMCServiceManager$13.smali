.class Lcom/htc/music/DMCServiceManager$13;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vol drag pos changed: form user ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v1

    iput p2, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$3200(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->resetVolBlock()V
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$4300(Lcom/htc/music/DMCServiceManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$4000(Lcom/htc/music/DMCServiceManager;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const-string v2, "[DMCServiceManager]"

    const-string v3, "Vol drag pos stop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v2

    iput v1, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$13;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$4000(Lcom/htc/music/DMCServiceManager;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
