.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;
.super Ljava/lang/Thread;
.source "CSConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLegalDocUpdate"
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
    .line 797
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 798
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mContext:Landroid/content/Context;

    .line 799
    iput-object p3, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    .line 800
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cs/util/PhoneStatusUtil;->checkNetworkAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 816
    :goto_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    .line 827
    :goto_1
    return-void

    .line 811
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getLegalDocumentUpdate(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$700(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 821
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 822
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    goto :goto_1

    .line 814
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->mEndMsg:Landroid/os/Message;

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v2, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    throw v1
.end method
