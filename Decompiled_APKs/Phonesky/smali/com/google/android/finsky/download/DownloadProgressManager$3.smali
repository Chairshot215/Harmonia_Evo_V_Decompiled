.class Lcom/google/android/finsky/download/DownloadProgressManager$3;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadProgressManager;->cleanup()V
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
    .line 115
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$3;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$3;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$3;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$3;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$302(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$3;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    #getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$400(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 123
    return-void
.end method
