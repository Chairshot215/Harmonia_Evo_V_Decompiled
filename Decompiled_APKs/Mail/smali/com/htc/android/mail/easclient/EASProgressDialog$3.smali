.class Lcom/htc/android/mail/easclient/EASProgressDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "EASProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v2, "intent.eas.progress.message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const-string v2, "extra.sync_result"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 120
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    #getter for: Lcom/htc/android/mail/easclient/EASProgressDialog;->mAutoDismiss:Z
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->access$000(Lcom/htc/android/mail/easclient/EASProgressDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->dismiss()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    sget-object v3, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    if-ne v2, v3, :cond_0

    .line 127
    const-string v2, "extra.eas.progress.message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, msg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    .end local v1           #msg:Ljava/lang/String;
    :cond_2
    const-string v2, "action.easprogressdialog.dismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-static {}, Lcom/htc/android/mail/easclient/EASProgressDialog;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "EASProgressDialog"

    const-string v3, "ACTION_DISMISS_DIALOG"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    const-string v2, "extra.easprogressdialog.dialogaction"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    iput-object v2, v3, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    .line 135
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->dismiss()V

    goto :goto_0
.end method
