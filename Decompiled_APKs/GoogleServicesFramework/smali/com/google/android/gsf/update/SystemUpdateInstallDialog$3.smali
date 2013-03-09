.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$500(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "SystemUpdateInstallDialog"

    const-string v1, "Install dialog timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$502(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z

    .line 106
    const v0, 0x3112a

    const-string v1, "install-dialog-timeout"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startCountdown()V
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$400(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    .line 110
    :cond_0
    return-void
.end method
