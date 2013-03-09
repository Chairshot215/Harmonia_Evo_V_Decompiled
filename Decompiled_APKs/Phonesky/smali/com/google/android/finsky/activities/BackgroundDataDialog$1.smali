.class Lcom/google/android/finsky/activities/BackgroundDataDialog$1;
.super Ljava/lang/Object;
.source "BackgroundDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/BackgroundDataDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;->this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;->this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;

    .line 77
    .local v0, listener:Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;
    invoke-interface {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;->onBackgroundDataNotEnabled()V

    .line 78
    return-void
.end method
