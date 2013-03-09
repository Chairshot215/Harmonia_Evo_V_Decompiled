.class Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$2;
.super Ljava/lang/Object;
.source "AccountListDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 207
    iput-object p1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$2;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$2;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    iget-object v1, v1, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/AccountListDialogPicker;->setResult(ILandroid/content/Intent;)V

    .line 211
    iget-object v1, p0, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask$2;->this$1:Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;

    iget-object v1, v1, Lcom/htc/android/mail/AccountListDialogPicker$LoadAccountListTask;->this$0:Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v1}, Lcom/htc/android/mail/AccountListDialogPicker;->finish()V

    .line 212
    return-void
.end method
