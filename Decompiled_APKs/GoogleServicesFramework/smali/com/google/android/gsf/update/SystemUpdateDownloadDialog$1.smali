.class Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;
.super Ljava/lang/Object;
.source "SystemUpdateDownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #setter for: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mButtonClicked:Z
    invoke-static {v0, v4}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$002(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;Z)Z

    .line 61
    const-string v0, "SystemUpdateDownloadDialog"

    const-string v1, "OTA download accepted by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v0, 0x3112a

    const-string v1, "download-now"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$100(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$100(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_approved"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "download_now"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->finish()V

    .line 73
    return-void
.end method
