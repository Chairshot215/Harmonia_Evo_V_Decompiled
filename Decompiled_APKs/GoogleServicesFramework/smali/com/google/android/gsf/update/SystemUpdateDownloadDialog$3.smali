.class Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;
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
    .line 88
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 90
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #setter for: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mButtonClicked:Z
    invoke-static {v2, v5}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$002(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;Z)Z

    .line 91
    const-string v2, "SystemUpdateDownloadDialog"

    const-string v3, "OTA download rejected by user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v2, 0x3112a

    const-string v3, "download-reject"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$100(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "url"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, rejectedKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$100(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    .end local v0           #rejectedKey:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    #calls: Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->deschedule()V
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$300(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V

    .line 103
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-virtual {v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->finish()V

    .line 104
    return-void
.end method
