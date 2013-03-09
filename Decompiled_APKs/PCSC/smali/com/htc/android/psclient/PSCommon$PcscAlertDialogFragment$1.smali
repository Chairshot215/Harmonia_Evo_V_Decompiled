.class Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "PSCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 197
    iput-object p1, p0, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$1;->this$0:Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 199
    sparse-switch p2, :sswitch_data_0

    .line 206
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 203
    :sswitch_0
    iget-object v0, p0, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$1;->this$0:Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;

    invoke-virtual {v0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
