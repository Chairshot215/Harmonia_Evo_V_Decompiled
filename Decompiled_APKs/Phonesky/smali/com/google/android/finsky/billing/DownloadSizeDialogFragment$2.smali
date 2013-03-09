.class Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;
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


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;->this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;->this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;->onDownloadWifi()V

    .line 146
    return-void
.end method
