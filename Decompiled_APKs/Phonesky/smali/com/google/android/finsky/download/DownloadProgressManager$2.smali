.class Lcom/google/android/finsky/download/DownloadProgressManager$2;
.super Landroid/database/ContentObserver;
.source "DownloadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadProgressManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$2;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$2;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #calls: Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$200(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    .line 95
    return-void
.end method
