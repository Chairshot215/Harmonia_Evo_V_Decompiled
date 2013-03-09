.class Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;
.super Ljava/lang/Object;
.source "BackupWithVerizonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->runSetCall2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 326
    .local v1, errMsg:Ljava/lang/String;
    :try_start_0
    const-string v3, "OOBE_BackupWithVerizon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPrice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;
    invoke-static {v5}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Lcom/htc/vmm/api/newbay/bean/Price;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;
    invoke-static {v4}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Lcom/htc/vmm/api/newbay/bean/Price;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->setCall2(Lcom/htc/vmm/api/newbay/bean/Price;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 335
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 336
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    return-void

    .line 329
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    .line 332
    const-string v3, "OOBE_BackupWithVerizon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
