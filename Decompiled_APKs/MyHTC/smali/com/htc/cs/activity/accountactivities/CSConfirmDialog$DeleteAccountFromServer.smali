.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;
.super Ljava/lang/Thread;
.source "CSConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAccountFromServer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mEndMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "mMsg"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 897
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mContext:Landroid/content/Context;

    .line 898
    iput-object p3, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    .line 899
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeAccountfromServer(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$800(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)V

    .line 905
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    const/16 v2, 0x1f6

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 906
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 928
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    .line 930
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/cscore/restapi/exceptions/MissingDeviceException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    if-nez v1, :cond_1

    .line 913
    const-string v1, "MyHTC"

    const-string v2, "[CSConfirmDialog]CheckMissingDevice endMessage is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    goto :goto_0

    .line 915
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 916
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 928
    .end local v0           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v2, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    throw v1

    .line 921
    :catch_1
    move-exception v0

    .line 923
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 924
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 925
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 928
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    goto :goto_0
.end method
