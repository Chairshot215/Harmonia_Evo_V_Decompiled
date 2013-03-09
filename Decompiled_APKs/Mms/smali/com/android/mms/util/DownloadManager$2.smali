.class Lcom/android/mms/util/DownloadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 107
    .local v1, state:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 113
    .local v0, isRoaming:Z
    new-instance v2, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {v2, v0, v3}, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;-><init>(ZLcom/android/mms/util/DownloadManager;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    #getter for: Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/mms/util/DownloadManager;->access$100(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    .end local v0           #isRoaming:Z
    .end local v1           #state:Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method
