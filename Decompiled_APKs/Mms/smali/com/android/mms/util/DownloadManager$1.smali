.class Lcom/android/mms/util/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    .line 79
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 81
    const-string v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {p1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v2

    #setter for: Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z
    invoke-static {v0, v2}, Lcom/android/mms/util/DownloadManager;->access$002(Lcom/android/mms/util/DownloadManager;Z)Z

    .line 92
    monitor-exit v1

    .line 94
    :cond_1
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
