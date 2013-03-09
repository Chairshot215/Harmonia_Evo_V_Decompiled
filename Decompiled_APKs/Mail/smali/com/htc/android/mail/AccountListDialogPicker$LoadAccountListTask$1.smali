.class Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;
.super Ljava/lang/Object;
.source "AccountListDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, data:Landroid/content/Intent;
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    iget-object v2, v2, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    #calls: Lcom/htc/android/mail/AccountListDialogPicker;->getAccountIdByIndex(I)J
    invoke-static {v2, p2}, Lcom/htc/android/mail/AccountListDialogPicker;->access$700(Lcom/htc/android/mail/AccountListDialogPicker;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    iget-object v1, v1, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/AccountListDialogPicker;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 203
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    iget-object v1, v1, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v1}, Lcom/htc/android/mail/AccountListDialogPicker;->finish()V

    .line 204
    return-void
.end method
