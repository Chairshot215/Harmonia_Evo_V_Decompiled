.class Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadManagerContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "DownloadManager"

    const-string v1, "Service ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    #calls: Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V

    .line 181
    return-void
.end method
