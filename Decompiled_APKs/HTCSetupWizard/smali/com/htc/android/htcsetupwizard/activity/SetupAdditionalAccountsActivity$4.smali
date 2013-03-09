.class Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;
.super Ljava/lang/Object;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->processBackupPlus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 847
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isVMMVerified()Z
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$800(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "processBackupPlus isVMMVerified true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$900(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 857
    :goto_0
    return-void

    .line 850
    :cond_0
    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isSkipGetPin()Z
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$1000()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getPin()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$1100(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Ljava/lang/String;

    move-result-object v1

    .local v1, strGetPINError:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 851
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "processBackupPlus getPin failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$900(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 853
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$900(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 855
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #strGetPINError:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->checkVMMSubscribe()Lcom/htc/vmm/api/newbay/bean/ReturnData;
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$1200(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v3

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->handleReturnData(Lcom/htc/vmm/api/newbay/bean/ReturnData;)V
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$1300(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Lcom/htc/vmm/api/newbay/bean/ReturnData;)V

    goto :goto_0
.end method
