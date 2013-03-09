.class Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;
.super Ljava/lang/Object;
.source "EASPolicyConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    iput-object p2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;->val$data:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 210
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 211
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method
