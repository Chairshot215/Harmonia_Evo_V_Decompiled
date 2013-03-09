.class Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;
.super Ljava/lang/Object;
.source "EASPolicyNotSufficientDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getPolicyIncompatibleDetailDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;->this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;->this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    iget v0, v0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mMode:I

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;->this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->showDialog(I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;->this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->finish()V

    goto :goto_0
.end method
