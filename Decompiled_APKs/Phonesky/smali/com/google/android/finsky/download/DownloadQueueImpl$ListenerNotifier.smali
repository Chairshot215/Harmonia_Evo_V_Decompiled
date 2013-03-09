.class abstract Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerNotifier"
.end annotation


# instance fields
.field mType:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->mType:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 191
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$000(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/DownloadQueueListener;

    .line 193
    .local v2, listener:Lcom/google/android/finsky/download/DownloadQueueListener;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->updateListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download listener threw an exception during "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->mType:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listener:Lcom/google/android/finsky/download/DownloadQueueListener;
    :cond_0
    return-void
.end method

.method abstract updateListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
.end method
