.class Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;
.super Ljava/lang/Object;
.source "DownloadSizeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$setWifiOnlyOption:Z

.field final synthetic val$showWifiOnlyOption:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;ZLandroid/widget/CheckBox;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    iput-boolean p2, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->val$showWifiOnlyOption:Z

    iput-object p3, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->val$checkboxView:Landroid/widget/CheckBox;

    iput-boolean p4, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->val$setWifiOnlyOption:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 127
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->val$showWifiOnlyOption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 129
    .local v0, wifiOnly:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;->onDownloadOk(Z)V

    .line 130
    return-void

    .line 127
    .end local v0           #wifiOnly:Z
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;->val$setWifiOnlyOption:Z

    goto :goto_0
.end method
