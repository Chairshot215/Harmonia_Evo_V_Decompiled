.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;
.super Ljava/lang/Object;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createCSConfirmDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 459
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$300(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;Landroid/os/Message;)V

    .line 461
    .local v0, deleteAccountFromServer:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;
    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;->start()V

    .line 462
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    .line 463
    return-void
.end method
