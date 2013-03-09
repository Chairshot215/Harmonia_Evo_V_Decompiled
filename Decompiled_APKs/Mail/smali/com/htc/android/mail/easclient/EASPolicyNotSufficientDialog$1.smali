.class Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$1;
.super Ljava/lang/Object;
.source "EASPolicyNotSufficientDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 93
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->finish()V

    .line 96
    return-void
.end method
