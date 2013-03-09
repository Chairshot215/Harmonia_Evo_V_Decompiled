.class Lcom/htc/cs/activity/accountactivities/CS_login$47;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$47;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3617
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$47;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->savePrefPhone()V
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$4500(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    .line 3618
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$47;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2800(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3620
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$47;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$47;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;Landroid/os/Message;)V

    .line 3622
    .local v0, deleteAccountFromServer:Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;
    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->start()V

    .line 3623
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$47;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 3624
    return-void
.end method
