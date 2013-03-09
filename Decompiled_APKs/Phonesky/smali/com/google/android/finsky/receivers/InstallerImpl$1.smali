.class Lcom/google/android/finsky/receivers/InstallerImpl$1;
.super Landroid/os/AsyncTask;
.source "InstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Collection;
    .locals 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "patches"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v3, patchCacheDirectory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 147
    .local v5, patchFiles:[Ljava/io/File;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-eqz v6, :cond_0

    .line 148
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 149
    .local v4, patchFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #patchFile:Ljava/io/File;
    .end local v5           #patchFiles:[Ljava/io/File;
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v6}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$000(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 157
    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v6}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$100(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/finsky/download/DownloadQueue;->getRunningUris()Ljava/util/Collection;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->onPostExecute(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, runningDownloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;>;"
    const/4 v3, 0x1

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, immediateStart:Z
    if-eqz p1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z
    invoke-static {v1}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$200(Lcom/google/android/finsky/receivers/InstallerImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    new-instance v2, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl$1;Ljava/util/Collection;)V

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$600(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #setter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z
    invoke-static {v1, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$402(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z

    .line 186
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    const/4 v2, 0x0

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    .line 188
    :cond_1
    return-void

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->recoverRunningDownloads(Ljava/util/Collection;)V
    invoke-static {v1, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$300(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/util/Collection;)V

    goto :goto_0
.end method
