.class Lcom/google/android/finsky/download/DownloadProgressManager$1;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadProgressManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$1;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$1;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$1;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$000(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$100(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$1;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #calls: Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$200(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    .line 77
    return-void
.end method
