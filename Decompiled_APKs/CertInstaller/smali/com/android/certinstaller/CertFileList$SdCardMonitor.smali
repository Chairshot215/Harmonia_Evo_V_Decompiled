.class Lcom/android/certinstaller/CertFileList$SdCardMonitor;
.super Ljava/lang/Object;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardMonitor"
.end annotation


# instance fields
.field mDownloadMonitor:Landroid/os/FileObserver;

.field mRootMonitor:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/android/certinstaller/CertFileList;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList;)V
    .locals 4
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 178
    .local v1, root:Ljava/io/File;
    :goto_0
    new-instance v2, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v2, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v0, download:Ljava/io/File;
    new-instance v2, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v2, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mDownloadMonitor:Landroid/os/FileObserver;

    .line 192
    return-void

    .line 176
    .end local v0           #download:Ljava/io/File;
    .end local v1           #root:Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1       #root:Ljava/io/File;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/certinstaller/CertFileList$SdCardMonitor;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .locals 2
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 198
    :sswitch_0
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-virtual {v0, p2}, Lcom/android/certinstaller/CertFileList;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    new-instance v1, Lcom/android/certinstaller/CertFileList$SdCardMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$3;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertFileList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method startWatching()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 211
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mDownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 212
    return-void
.end method

.method stopWatching()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 216
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mDownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 217
    return-void
.end method
