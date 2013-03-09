.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->resumeCountdown()V
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
    .line 204
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 206
    const-string v0, "SystemUpdateInstallDialog"

    const-string v1, "OTA update install cancelled by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopCountdown()V
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$800(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$102(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)J

    .line 213
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startDialogTimeout()V
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$900(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x1

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$600(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V

    .line 215
    return-void
.end method
