.class Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$2;
.super Ljava/lang/Object;
.source "PSCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$2;->this$0:Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$2;->this$0:Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;

    invoke-virtual {v0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    return-void
.end method
