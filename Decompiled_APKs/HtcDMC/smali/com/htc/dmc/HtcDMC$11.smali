.class Lcom/htc/dmc/HtcDMC$11;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 2763
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    .line 2765
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected classname= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,IBinder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcDMC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mServiceUnbinded:Z
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$4200(Lcom/htc/dmc/HtcDMC;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2769
    const-string v3, "[HtcDMC]"

    const-string v4, "return, since service should already unbinded"

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    :goto_0
    return-void

    .line 2773
    :cond_0
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v4

    #setter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3, v4}, Lcom/htc/dmc/HtcDMC;->access$1502(Lcom/htc/dmc/HtcDMC;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2776
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2777
    const-string v3, "[HtcDMC]"

    const-string v4, "MiddleLayer Service null"

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2782
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$4300(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 2783
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v4, 0x0

    #setter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v3, v4}, Lcom/htc/dmc/HtcDMC;->access$3702(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 2786
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    const-string v4, "com.htc.dmc_preferences"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2788
    .local v2, prefSetting:Landroid/content/SharedPreferences;
    const-string v3, "dmc_timeout_setting"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2791
    .local v0, CurTimeout:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v4

    const-string v5, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z

    .line 2793
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2794
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2806
    .end local v0           #CurTimeout:Ljava/lang/String;
    .end local v2           #prefSetting:Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->HandleOnServiceConnected()V
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$4400(Lcom/htc/dmc/HtcDMC;)V

    goto :goto_0

    .line 2796
    .restart local v0       #CurTimeout:Ljava/lang/String;
    .restart local v2       #prefSetting:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2798
    .end local v0           #CurTimeout:Ljava/lang/String;
    .end local v2           #prefSetting:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 2799
    .local v1, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2000(Lcom/htc/dmc/HtcDMC;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2800
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2801
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2803
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    .line 2810
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected classname= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$11;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0, v1}, Lcom/htc/dmc/HtcDMC;->access$1502(Lcom/htc/dmc/HtcDMC;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2814
    return-void
.end method
