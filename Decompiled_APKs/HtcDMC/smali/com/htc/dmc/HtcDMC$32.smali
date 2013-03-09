.class Lcom/htc/dmc/HtcDMC$32;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 4771
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "arg0"
    .parameter "nProgress"
    .parameter "bFromUser"

    .prologue
    .line 4777
    const-string v1, "[HtcDMC]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vol drag pos changed: form user ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4778
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4781
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v1

    iput p2, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4782
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v1

    iget v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    if-gtz v1, :cond_1

    .line 4784
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4785
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$6400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x1080742

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4789
    :goto_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolSetBlocked:Z
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$4900(Lcom/htc/dmc/HtcDMC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4792
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v4

    iget v4, v4, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V

    .line 4793
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->resetVolBlock()V
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$7100(Lcom/htc/dmc/HtcDMC;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4799
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->resetVolUITimeout()V
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$6800(Lcom/htc/dmc/HtcDMC;)V

    .line 4800
    return-void

    .line 4787
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$6400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x1080743

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4795
    :catch_0
    move-exception v0

    .line 4796
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 4804
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "sb"

    .prologue
    .line 4808
    const-string v2, "[HtcDMC]"

    const-string v3, "Vol drag pos stop"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4809
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4812
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 4813
    .local v1, nProgress:I
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v2

    iput v1, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserVolume:I

    .line 4814
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4819
    .end local v1           #nProgress:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$32;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->resetVolUITimeout()V
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$6800(Lcom/htc/dmc/HtcDMC;)V

    .line 4820
    return-void

    .line 4815
    :catch_0
    move-exception v0

    .line 4816
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
