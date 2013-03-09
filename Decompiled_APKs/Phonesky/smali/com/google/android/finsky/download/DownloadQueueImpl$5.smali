.class Lcom/google/android/finsky/download/DownloadQueueImpl$5;
.super Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;
.source "DownloadQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field final synthetic val$currentHttpStatus:I

.field final synthetic val$download:Lcom/google/android/finsky/download/Download;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$5;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$5;->val$download:Lcom/google/android/finsky/download/Download;

    iput p4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$5;->val$currentHttpStatus:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;)V

    return-void
.end method


# virtual methods
.method public updateListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$5;->val$download:Lcom/google/android/finsky/download/Download;

    iget v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$5;->val$currentHttpStatus:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/finsky/download/DownloadQueueListener;->onError(Lcom/google/android/finsky/download/Download;I)V

    .line 247
    return-void
.end method
